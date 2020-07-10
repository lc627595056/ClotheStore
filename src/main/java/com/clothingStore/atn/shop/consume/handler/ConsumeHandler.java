package com.clothingStore.atn.shop.consume.handler;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.clothingStore.atn.commons.beans.Cloth;
import com.clothingStore.atn.commons.beans.Consume;
import com.clothingStore.atn.commons.beans.User;
import com.clothingStore.atn.shop.consume.service.IConsumeService;
import com.clothingStore.atn.utils.AlipayConfig;
import com.clothingStore.atn.utils.IdUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

@Controller
@RequestMapping("/shop/consume")
public class ConsumeHandler {

    @Autowired
    IConsumeService consumeService;

    //创建订单
    @RequestMapping("/creatConsume")
    @ResponseBody
    public String creatConsume(String name, String address, String phone, Double money, HttpSession session){
        System.out.println("订单信息为"+name+"  "+address+"  "+phone+"  "+money);
        //设置id
        String data= IdUtils.getUUID();
        Consume consume = new Consume();
        consume.setConsumeID(data);
        consume.setConsumeName(name);
        consume.setConsumeAddress(address);
        consume.setConsumePhone(phone);
        consume.setConsumeSum(money);
        if (data!=null){
            //从session中获取当前登录用户信息，也就是提交订单的用户赋值到Order中
            consume.setUser((User) session.getAttribute("login_user"));
            //从session中获取购物车
            Map<Cloth,Integer> cart= (Map<Cloth, Integer>) session.getAttribute("cart");
            //调用Service方法生成订单
            consumeService.createConsume(consume,cart);
            //把生成订单的购物车清空
            session.removeAttribute("cart");
            return data;
        }else {
            return null;
        }

    }
    //订单支付，使用阿里支付
    @RequestMapping("/payByAlPay")
    public void payByAlPay(String id, String money, HttpServletResponse response) throws AlipayApiException, IOException {
        //获得初始化的AlipayClient
        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key,
                "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);

        //设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl(AlipayConfig.return_url);
        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);

        //商户订单号，商户网站订单系统中唯一订单号，必填
        String out_trade_no = id;
        //付款金额，必填
        String total_amount = money;
        //订单名称，必填
        String subject = id;
        //商品描述，可空
        String body = "";

        alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\","
                + "\"total_amount\":\""+ total_amount +"\","
                + "\"subject\":\""+ subject +"\","
                + "\"body\":\""+ body +"\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");

        //若想给BizContent增加其他可选请求参数，以增加自定义超时时间参数timeout_express来举例说明
        //alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\","
        //		+ "\"total_amount\":\""+ total_amount +"\","
        //		+ "\"subject\":\""+ subject +"\","
        //		+ "\"body\":\""+ body +"\","
        //		+ "\"timeout_express\":\"10m\","
        //		+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
        //请求参数可查阅【电脑网站支付的API文档-alipay.trade.page.pay-请求参数】章节

        //请求
        String result = alipayClient.pageExecute(alipayRequest).getBody();

        //输出
        //out.println(result);
        response.setContentType("text/html");
        response.getWriter().println(result);
    }

    //支付成功后台处理
    @RequestMapping("/paySuccess")
    public String paySuccess(HttpServletRequest request, Model model,HttpSession session) throws UnsupportedEncodingException, AlipayApiException {
        //获取支付宝GET过来反馈信息
        Map<String,String> params = new HashMap<String,String>();
        Map<String,String[]> requestParams = request.getParameterMap();
        for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i]
                        : valueStr + values[i] + ",";
            }
            //乱码解决，这段代码在出现乱码时使用
            valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
            params.put(name, valueStr);
        }
        //调用SDK验证签名
        boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset,
                AlipayConfig.sign_type);

        //——请在这里编写您的程序（以下代码仅作参考）——
        if(signVerified) {
            //商户订单号
            String id= new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");
            //支付金额
            double money=Double.parseDouble(new String(request.getParameter("total_amount").getBytes("ISO-8859-1"),"UTF-8"));
            //实现支付状态的修改，改为已支付：paystate=1
            consumeService.modifyConsumeState(id,money);
            model.addAttribute("returnTest","恭喜您！支付成功！");
            User user = (User) session.getAttribute("login_user");
            user.setUserConsume(user.getUserConsume()+money);
            return "/shopping/html/returnTest.jsp";
        }else {
            //out.println("验签失败");
            model.addAttribute("fail111","验签失败！！！");
            return "/client/fail.jsp";
        }
    }
}
