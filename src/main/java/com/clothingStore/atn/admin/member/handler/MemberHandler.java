package com.clothingStore.atn.admin.member.handler;

import com.clothingStore.atn.commons.beans.ConsumeItem;
import com.clothingStore.atn.commons.beans.User;
import com.clothingStore.atn.shop.clothes.service.IClothService;
import com.clothingStore.atn.shop.user.service.IUserService;
import com.clothingStore.atn.utils.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/admin/member")
public class MemberHandler {

    @Autowired
    IUserService userService;

    @Autowired
    IClothService clothService;

    //后台管理员查询所有用户
    @RequestMapping("/AdminFindUserList")
    public String AdminFindUserList(@RequestParam(defaultValue = "1") Integer pageIndex, @RequestParam(defaultValue = "5") Integer pageSize, String userRname, Model model){
        PageModel pageModel = new PageModel();
        pageModel.setPageIndex(pageIndex);

        int recordCount = userService.findUserCount(userRname);
        pageModel.setRecordCount(recordCount);
        pageModel.setPageSize(pageSize);

        List<User> users = userService.findUser(userRname,pageModel);
        System.out.println("会员列表");
        for (User u:users){
            System.out.println(u);
        }
        model.addAttribute("users",users);
        model.addAttribute("userRname",userRname);
        model.addAttribute("pageModel",pageModel);
        return "/admin/user-table.jsp";
    }

    //通过ID查询用户详细信息
    @RequestMapping("/findUserByIDA")
    @ResponseBody
    public User findUserByIDA(int userID,Model model){
        User user1 = userService.findUserByIDA(userID);
        System.out.println("用户的详细信息-->"+user1);
        model.addAttribute("user1",user1);
        return user1;
    }

    //后台修改用户
    @RequestMapping("/modifyUserA")
    public String modifyUserA(User user){
        System.out.println("修改的用户"+user);
        userService.modifyUserA(user);
        return "redirect:/admin/member/AdminFindUserList";
    }

    //删除用户
    @RequestMapping("/removeUserByIDA")
    public String removeUserByIDA(int userID){
        userService.removeUserByIDA(userID);
        return "redirect:/admin/member/AdminFindUserList";
    }

    //后台查询用户消费订单
    @RequestMapping("/findConsumeList")
    public String findConsumeList(@RequestParam(defaultValue = "1") Integer pageIndex, @RequestParam(defaultValue = "10") Integer pageSize,String consumeID, Model model){
        PageModel pageModel = new PageModel();
        pageModel.setPageIndex(pageIndex);
        int recordCount = clothService.findConsumeCount(consumeID);
        pageModel.setRecordCount(recordCount);
        pageModel.setPageSize(pageSize);

        List<ConsumeItem> consumeItems = clothService.findConsumeList(consumeID,pageModel);
        for (ConsumeItem consumeItem:consumeItems){
            System.out.println(consumeItem);
        }
        System.out.println("++++++++++"+consumeItems.size());
        model.addAttribute("consumeItems",consumeItems);
        model.addAttribute("consumeID",consumeID);
        model.addAttribute("pageModel",pageModel);
        return "/admin/user-shopping.jsp";
    }

    //删除订单
    @RequestMapping("/removeConsumeA")
    public String removeConsumeA(String consumeID){
        System.out.println("要删除的订单号为-->"+consumeID);
        clothService.removeConsumeA(consumeID);
        return "redirect:/admin/member/findConsumeList";
    }

}
