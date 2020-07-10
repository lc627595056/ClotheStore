/*
 * @author  枫桥夜泊
 * @date  2020/5/30
 * @time  19:35
 */
package com.clothingStore.atn.shop.user.dao;

import com.clothingStore.atn.commons.beans.Consume;
import com.clothingStore.atn.commons.beans.User;
import com.clothingStore.atn.utils.PageModel;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IUserDao {
    int insertUser(User user);

    User selectUserName(String userName);

    User selectEmail(String email);

    int updateActive(String activeCode);

    User selectUserByLogin(User user);

    int updatePassWord(User user);

    List<User> selectUser(@Param("name") String name,@Param("pageModel") PageModel pageModel);

    void updateUserA(User user);

    void deleteUserByIDA(int userID);

    User selectUserByID(int userID);

    void updateUserConsume(@Param("user_id") int user_id,@Param("money") double money);

    int selectUserCount(String name);

    List<Consume> selectConsumeByUsrID(@Param("id") Integer id,@Param("pageModel") PageModel pageModel);
}
