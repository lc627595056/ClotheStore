/*
 * @author  枫桥夜泊
 * @date  2020/5/30
 * @time  19:33
 */
package com.clothingStore.atn.shop.user.service;

import com.clothingStore.atn.commons.beans.Consume;
import com.clothingStore.atn.commons.beans.User;
import com.clothingStore.atn.utils.PageModel;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface IUserService {
    int addUser(User user, HttpServletRequest request);

    User findUserName(String userName);

    User findEmail(String email);

    int activeUser(String activeCode);

    User findUserByLogin(User user);

    User findEmailByUpdate(String email, HttpServletRequest request);

    int modifyPassWord(User user);

    List<User> findUser(String name,PageModel pageModel);

    void modifyUserA(User user);

    void removeUserByIDA(int userID);

    User findUserByIDA(int userID);

    int findUserCount(String userRname);

    List<Consume> findConsumeByUsrID(Integer id,PageModel pageModel);
}
