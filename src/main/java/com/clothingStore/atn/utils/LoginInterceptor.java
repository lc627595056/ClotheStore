package com.clothingStore.atn.utils;

import com.clothingStore.atn.commons.beans.User;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println("执行拦截器！");
        //获取URL
        String url=request.getRequestURI();
        if(url.endsWith("/adminLogin")||url.endsWith("/adminLoginOut")){
            //放行
            return true;
        }
        //获取登录用户信息
        User adminLogin_user= (User) request.getSession().getAttribute("adminLogin_user");
        //判断用户是否登录
        if (adminLogin_user!=null){
            //判断用户是否为超级管理员
            if("超级管理员".equals(adminLogin_user.getRole())){
                return true;
            }else {
                //重定向到登录页面
                response.sendRedirect(request.getContextPath()+"/admin/admin-login.jsp");
                return false;
            }
        }else {
            //重定向到登录页面
            response.sendRedirect(request.getContextPath()+"/admin/admin-login.jsp");
            return false;
        }
    }
}
