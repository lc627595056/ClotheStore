package com.clothingStore.atn.shop.clothes.handler;

import com.clothingStore.atn.commons.beans.Cloth;
import com.clothingStore.atn.shop.clothes.service.IClothService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/cloth")
public class ClothHandler {

    @Autowired
    private IClothService clothService;

    //用户查询商品
    @RequestMapping("/findCloth")
    public String findCloth(Integer id,Model model){
        List<Cloth> clothList = clothService.findCloth(id);
//        for(Cloth c:clothList){
//            System.out.println(c);
//        }
        model.addAttribute("clothList",clothList);
        model.addAttribute("clothSort",id);
        return "/shopping/html/category.jsp";
    }

    //按商品名称模糊查询
    @RequestMapping("/findClothByName")
    public String findClothByName(String clothName,Model model){
        List<Cloth> clothList = clothService.findClothByName(clothName);
        System.out.println("按商品名称模糊查询");
        for(Cloth c:clothList){
            System.out.println(c);
        }
        model.addAttribute("clothList",clothList);
        model.addAttribute("clothSort",0);
        model.addAttribute("clothName",clothName);
        return "/shopping/html/category.jsp";
    }
    //查询商品的详细信息

    @RequestMapping("/findClothById")
    public String findClothById(int id,Model model){
        Cloth clothByID = clothService.findClothById(id);
        model.addAttribute("clothByID",clothByID);
        return "/shopping/html/detail.jsp";
    }

    // 管理员操作   ///////////////////////////////////////////////////////



}
