/*
 * @author  枫桥夜泊
 * @date  2020/5/30
 * @time  19:33
 */
package com.clothingStore.atn.shop.user.service;

import com.clothingStore.atn.commons.beans.Consume;
import com.clothingStore.atn.commons.beans.User;
import com.clothingStore.atn.shop.user.dao.IUserDao;
import com.clothingStore.atn.utils.MailUtils;
import com.clothingStore.atn.utils.PageModel;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Service
public class UserServiceImpl implements IUserService {

    @Resource
    IUserDao userDao;

    @Override
    public int addUser(User user, HttpServletRequest request) {
        String emailMsg="感谢注册安提尼服装商城，请点击" +
                "<a href='http://localhost:8080/"+request.getContextPath()+"/shop/user/activeUser?activeCode="+
                user.getActiveCode()+"'>链接</a>激活用户！";
        try {
            MailUtils.sendMail(user.getUserEmail(),emailMsg);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return userDao.insertUser(user);
    }

    @Override
    public User findUserName(String userName) {
        return userDao.selectUserName(userName);
    }

    @Override
    public User findEmail(String email) {
        return userDao.selectEmail(email);
    }

    @Override
    public int activeUser(String activeCode) {
        return userDao.updateActive(activeCode);
    }

    @Override
    public User findUserByLogin(User user) {
        return userDao.selectUserByLogin(user);
    }

    @Override
    public User findEmailByUpdate(String email, HttpServletRequest request) {
        System.out.println("这是邮箱验证"+email);
        String emailMsg="安提尼服装商城温情提示，请点击" +
                "<a href='http://localhost:8080/"+request.getContextPath()+"/shop/user/checkEmailByUpdate?email=" +
                email+"'>验证</a>用户！";
        try {
            MailUtils.sendMail(email,emailMsg);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return userDao.selectEmail(email);
    }

    @Override
    public int modifyPassWord(User user) {
        return userDao.updatePassWord(user);
    }

    @Override
    public List<User> findUser(String name, PageModel pageModel) {
        return userDao.selectUser(name,pageModel);
    }

    @Override
    public void modifyUserA(User user) {
        userDao.updateUserA(user);
    }

    @Override
    public void removeUserByIDA(int userID) {
        userDao.deleteUserByIDA(userID);
    }

    @Override
    public User findUserByIDA(int userID) {
        return userDao.selectUserByID(userID);
    }

    @Override
    public int findUserCount(String userRname) {
        return userDao.selectUserCount(userRname);
    }

    @Override
    public List<Consume> findConsumeByUsrID(Integer id,PageModel pageModel) {
        return userDao.selectConsumeByUsrID(id,pageModel);
    }
}
