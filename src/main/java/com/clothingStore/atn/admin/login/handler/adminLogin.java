package com.clothingStore.atn.admin.login.handler;

import com.clothingStore.atn.commons.beans.User;
import com.clothingStore.atn.shop.user.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin/login")
public class adminLogin {

    @Autowired
    IUserService userService;

    @RequestMapping("adminLogin")
    public String adminLogin(User user, Model model, HttpSession session){
        System.out.println("用户名密码为"+user);
        //查询数据库
        User adminLogin_user=userService.findUserByLogin(user);
        if (adminLogin_user!=null){
            if (adminLogin_user.getRole().equals("超级管理员")){
                //登录成功
                session.setAttribute("adminLogin_user",adminLogin_user);
                return "/admin/admin-index.jsp";
            }else {
                model.addAttribute("returnTest","您还不是超级管理员，权限不足！");
                return "/shopping/html/returnTest.jsp";
            }
        }else {
            model.addAttribute("adminLogin_error","用户名和密码错误");
            return "/admin/admin-login.jsp";
        }
    }

    //用户退出
    @RequestMapping("/adminLoginOut")
    public String adminLoginOut(HttpSession session,Model model){
        //将用户信息从session中移除
        session.removeAttribute("adminLogin_user");
        //返回提示信息
        model.addAttribute("adminLogin_error","退出成功，请重新登录！");
        return "/admin/admin-login.jsp";
    }
}
