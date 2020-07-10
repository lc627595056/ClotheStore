/*
 * @author  枫桥夜泊
 * @date  2020/5/30
 * @time  17:37
 */
package com.clothingStore.atn.shop.user.handler;

import com.clothingStore.atn.commons.beans.Consume;
import com.clothingStore.atn.commons.beans.ConsumeItem;
import com.clothingStore.atn.commons.beans.User;
import com.clothingStore.atn.shop.clothes.service.IClothService;
import com.clothingStore.atn.shop.user.service.IUserService;
import com.clothingStore.atn.utils.IdUtils;
import com.clothingStore.atn.utils.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/shop/user")
public class UserHandler {

    @Autowired
    IUserService userService;
    @Autowired
    IClothService clothService;
    //用户注册
    @RequestMapping("/register")
    public String register(User user, HttpServletRequest request){
        System.out.println("注册信息为："+user);
        //生成激活码
        user.setActiveCode(IdUtils.getUUID());
        int flag=userService.addUser(user,request);
        //注册成功返回注册成功页面，否则返回注册页面，回显注册信息和失败提示信息
        if (flag>0){
            request.setAttribute("returnTest","注册成功,别忘记激活帐户啊！");
            return "/shopping/html/returnTest.jsp";
        }else {
            request.setAttribute("error","用户注册失败，请重试！");
            request.setAttribute("user",user);
            return "/shopping/html/register.jsp";
        }
    }
    //用户名唯一
    @RequestMapping("/checkUserName")
    @ResponseBody
    public String checkUserName(String userName){
        System.out.println("注册的姓名为：" + userName);
        User user=userService.findUserName(userName);
        if (user!=null){
            return "0";
        }else{
            return "1";
        }
    }
    //邮箱验证
    @RequestMapping("/checkEmail")
    @ResponseBody
    public String checkEmail(String Email){
        System.out.println("注册的邮箱为：" + Email);
        User user=userService.findEmail(Email);
        if (user!=null){
            return "0";
        }else{
            return "1";
        }
    }

    //用户激活
    @RequestMapping("/activeUser")
    public String activeUser(String activeCode, Model model){
        System.out.println("激活码为："+activeCode);
        int flag=userService.activeUser(activeCode);
        if (flag>0){
            model.addAttribute("returnTest","激活成功");
        }else{
            model.addAttribute("returnTest","激活失败，请重试！！！");

        }
        return "/shopping/html/returnTest.jsp";
    }

    //用户登录
    @RequestMapping("/login")
    @ResponseBody
    public String login(User user, HttpSession session,Model model){
        System.out.println("用户名和密码为"+user.getUserName()+user.getUserPassword());
        User login_user=userService.findUserByLogin(user);
        System.out.println(login_user);
        //用户是否存在，且用户名和密码是否正确
        if (login_user!=null){//存在
            if (login_user.getState()==1){//用户已激活
                //保存用户登录信息
                session.setAttribute("login_user",login_user);
                return "OK";

            }else{
                //用户未激活
                return "activate";
            }

        }else{
            //用户名或密码错误
            return "error";
        }
    }
    //用户退出
    @RequestMapping("/outLogin")
    public String outLogin(HttpSession session,Model model){
        //移除保存数据
        session.removeAttribute("login_user");
        //保存提示信息到Model
        model.addAttribute("login_msg","用户退出，请重新登录！");
        return "/shopping/html/login.jsp";
    }
    //更改密码邮箱验证
    @RequestMapping("/findEmail")
    @ResponseBody
    public String findEmail(String Email,HttpServletRequest request){
        System.out.println("注册的邮箱为：" + Email);
        User user=userService.findEmailByUpdate(Email,request);
        if (user!=null){
            return "0";
        }else{
            return "1";
        }
    }
    //跳转至密码更改页面
    @RequestMapping("/checkEmailByUpdate")
    public String checkEmailByUpdate(String email,Model model){
        System.out.println("更改密码的email为"+email);
        User user=userService.findEmail(email);
        model.addAttribute("login_user",user);
        model.addAttribute("email",email);
        return "/shopping/html/information.jsp";
    }
    //更改信息
    @RequestMapping("modifyPassWord")
    public String modifyPassWord(User user,Model model){
        System.out.println("更改用户信息"+user);
        int flag=userService.modifyPassWord(user);
        if (flag>0){
            model.addAttribute("login_msg","用户信息修改成功，请重新登录");
        }else {
            model.addAttribute("login_msg","用户信息修改失败，请重试！");
        }
        return "/shopping/html/login.jsp";
    }

    //用户查看订单
    @RequestMapping("viewOrder")
    public String viewOrder(@RequestParam(defaultValue = "1") Integer pageIndex, @RequestParam(defaultValue = "5") Integer pageSize, Model model,HttpSession session){
        User login_user= (User) session.getAttribute("login_user");
        if (login_user==null){
            model.addAttribute("login_msg","用户已在别处退出，请重新登录！");
            return "/shopping/html/login.jsp";
        }else {
            System.out.println("用户id为"+login_user.getUserID());
            PageModel pageModel = new PageModel();
            pageModel.setPageIndex(pageIndex);
            int recordCount = clothService.findConsumeByUsrIDCount(login_user.getUserID());
            pageModel.setRecordCount(recordCount);
            pageModel.setPageSize(pageSize);
            List<Consume> consume = userService.findConsumeByUsrID(login_user.getUserID(),pageModel);
            model.addAttribute("orders",consume);
            model.addAttribute("pageModel",pageModel);
            return "/shopping/html/order_list1.jsp";
        }
    }

    //用户查看详细信息
    @RequestMapping("viewOrderByID")
    public String viewOrderByID(String id,Model model){
        List<ConsumeItem> consumeItems = clothService.findConsumeListByUser(id);
        model.addAttribute("items",consumeItems);
        return "/shopping/html/view_order.jsp";
    }

    //用户删除订单
    @RequestMapping("removeByUser")
    public String removeByUser(String consumeID,HttpSession session){
       /* User user= (User) session.getAttribute("login_user");
        Integer id=user.getUserID();*/
        clothService.removeConsumeA(consumeID);
        return "/shop/user/viewOrder";
    }
}
