/*
 * @author  枫桥夜泊
 * @date  2020/6/8
 * @time  16:40
 */
package com.clothingStore.atn.admin.clothes.handler;

import com.clothingStore.atn.commons.beans.Cloth;
import com.clothingStore.atn.commons.beans.ClothSort;
import com.clothingStore.atn.shop.clothes.service.IClothService;
import com.clothingStore.atn.utils.IdUtils;
import com.clothingStore.atn.utils.PageModel;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/admin/clothes")
public class ClothesHandler {


    @Autowired
    IClothService clothService;

    //管理员查询商品
    @RequestMapping("/AdminFindClothList")
    public String AdminFindClothList(@RequestParam(defaultValue = "1") Integer pageIndex,@RequestParam(defaultValue = "10") Integer pageSize,String clothName, Model model){
        PageModel pageModel = new PageModel();
        pageModel.setPageIndex(pageIndex);
        int recordCount = clothService.findClothCount(clothName);
        pageModel.setRecordCount(recordCount);
        pageModel.setPageSize(pageSize);
        List<Cloth> cloths = clothService.AdminFindClothList(clothName,pageModel);
        for(Cloth c:cloths){
            c.setClothSort(c.getClothsort().getClothSortID());
            System.out.println(c+"==>"+c.getClothsort().getClothSortName());
        }
        model.addAttribute("cloths",cloths);
        model.addAttribute("clothName",clothName);
        model.addAttribute("pageModel",pageModel);
        return "/admin/clothes-table.jsp";
    }

    //查询商品详细信息
    @RequestMapping("/findClothByID")
    public String findClothByID(int clothID,Model model){
        System.out.println(clothID);
        Cloth clothU = clothService.findClothById(clothID);
        model.addAttribute("clothU",clothU);
        return "/admin/clothes-update.jsp";
    }

    //修改商品
    @RequestMapping("/modifyCloth")
    public String modifyCloth(Cloth cloth, @RequestParam(value="file",required=false) MultipartFile upload, HttpSession session) throws IOException {
        System.out.println("要修改的商品信息"+cloth);
        if (!upload.isEmpty()) {//如果上传了新图片
            //调用文件删除方法
            deleteImg(cloth.getClothID(),session);
            //调用文件上传方法保存新图片
            String filename=uploadImg(upload,session);
            //如果上传了新的图片，给product的imgurl赋新值
            cloth.setClothImg("img/" + filename);
        }
        //修改数据库商品信息
        clothService.modifyCloth(cloth);
        return "redirect:/admin/clothes/AdminFindClothList";
    }

    //删除商品
    @RequestMapping("/removeCloth")
    public String removeCloth(int clothID){
        clothService.removeCloth(clothID);
        return "redirect:/admin/clothes/AdminFindClothList";
    }

    //查询商品的所有类别
    @RequestMapping("/findALLClothSort")
    @ResponseBody
    public Object findALLClothSort(Model model){
        List<ClothSort> clothSorts = clothService.findALLClothSort();
        System.out.println("商品的所有类型：");
        for (ClothSort c:clothSorts){
            System.out.println(c);
        }
        //model.addAttribute("clothSorts",clothSorts);
        return clothSorts;
    }

    //添加商品
    @RequestMapping("/addClothA")
    public String addClothA(Cloth cloth, @RequestParam(value="file",required=false) MultipartFile upload, HttpSession session) throws IOException {
        System.out.println(cloth);
        //调用文件上传方法
        String filename=uploadImg(upload,session);
        cloth.setClothImg("img/"+filename);
        int rows = clothService.addClothA(cloth);
        if (rows > 0){
            System.out.println("添加成功");
        }
        else {
            System.out.println("添加失败");
        }
        return "redirect:/admin/clothes/AdminFindClothList";
    }

    //文件上传
    private String uploadImg(MultipartFile upload, HttpSession session) throws IOException {
        System.out.println("调用文件上传！！！");
        //保存图片,获取项目发布路径
        String path = session.getServletContext().getRealPath("/shopping/html/assets/img");
        //保存图片到项目磁盘路径（换成自己的项目磁盘路径）
        String path1 = "F:\\Java\\workspace\\JavaEE\\clothestore\\src\\main\\webapp\\shopping\\html\\assets\\img";
        System.out.println("保存路径为："+path);
        //文件上传路径不存在，创建路径
        File file=new File(path);
        //判断上传路径是否存在，不存在则创建
        if(!file.exists()){
            file.mkdirs();
        }
        //获取文件名
        String fileName= IdUtils.getUUID()+"_"+upload.getOriginalFilename();
        //将MultipartFile转换为File，保存到服务器对应地址
        upload.transferTo(new File(path,fileName));
        //文件拷贝到项目路径
        FileUtils.copyFile(new File(path,fileName),new File(path1,fileName));
        return fileName;
    }

    //文件删除
    private void deleteImg(Integer id, HttpSession session) {
        System.out.println("调用文件删除！！"+id);
        //删除原始文件
        //查找商品的原始信息
        Cloth target = clothService.findClothById(id);
        //删除原始商品对应图片
        File targetFile = new File(session.getServletContext().getRealPath("/") + target.getClothImg());

        File targetFile1=new File("F:\\Java\\workspace\\JavaEE\\clothestore\\src\\main\\webapp\\shopping\\html\\assets\\"+target.getClothImg());
        System.out.println("文件路径"+targetFile1);
        //如果项目文件下的文件存在
        if (targetFile.exists()){
            targetFile.delete();
        }
        //如果磁盘文件下的文件存在
        if (targetFile1.exists()){
            targetFile1.delete();
        }
    }
}
