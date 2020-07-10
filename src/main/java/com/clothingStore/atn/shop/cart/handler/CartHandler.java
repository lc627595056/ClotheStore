package com.clothingStore.atn.shop.cart.handler;

import com.clothingStore.atn.commons.beans.Cloth;
import com.clothingStore.atn.shop.clothes.service.IClothService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/shop/cart")
public class CartHandler {

    @Autowired
    IClothService clothService;

    //添加购物车
    @RequestMapping("addCart")
    public String addCart(Integer id,int count1,String consumeSize, HttpSession session){
        System.out.println("加入购物车的信息为"+id+"  "+consumeSize+"  "+count1);
        //查询要添加到数据库的商品信息，查不到返回NO，添加失败
        Cloth cloth=clothService.findClothById(id);
        cloth.setClothSize(consumeSize);
        System.out.println("当前加入的信息："+cloth);
        //获取当前用户是否已有购物车
        Map<Cloth,Integer> cart = (Map<Cloth, Integer>) session.getAttribute("cart");
        //没有则创建
        if (cart==null){
            cart = new HashMap<Cloth,Integer>();
        }
        if (cart!=null){
            System.out.println("购物车信息："+cart);
        }
        //map.put方法是有返回值的：当Key重复时，put方法返回值是原来的value值
        //将信息保存到购物车,这里的count就是原来商品的数量
        Integer count=cart.put(cloth,count1);
        //如果count为空说明购物车中没有该商品，if不执行，购物车中商品数量就为1
        //如果count不为空说明购物车中原来就有该商品，数量在原来基础上加1
        if(count!=null){
            cart.put(cloth,count+count1);
        }
        //将信息保存到session
        session.setAttribute("cart",cart);
        return "redirect:/shopping/html/cart.jsp";
    }
    //删除购物车
    @RequestMapping("deleteCart")
    @ResponseBody
    public String deleteCart(Integer consumeID,String consumeSize,HttpSession session) {
        System.out.println("删除购物车信息：" + consumeID + "  " + consumeSize);
        //获取要改变数量的商品信息
        Cloth cloth = clothService.findClothById(consumeID);
        cloth.setClothSize(consumeSize);
        //从session中获取购物车的原始数据
        Map<Cloth, Integer> cart = (Map<Cloth, Integer>) session.getAttribute("cart");
        Integer count = cart.remove(cloth);
        if (count != null) {
            return "OK";
        } else {
            return "false";
        }
    }
}

