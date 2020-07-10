package com.clothingStore.atn.shop.clothes.service;

import com.clothingStore.atn.commons.beans.Cloth;
import com.clothingStore.atn.commons.beans.ClothSort;
import com.clothingStore.atn.commons.beans.ConsumeItem;
import com.clothingStore.atn.shop.clothes.dao.IClothDao;
import com.clothingStore.atn.utils.PageModel;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ClothServiceImpl implements IClothService {

    @Resource
    private IClothDao clothDao;

    @Override
    public List<Cloth> findCloth(Integer id) {
        return clothDao.selectCloth(id);
    }

    @Override
    public Cloth findClothById(int id) {
        return clothDao.selectClothById(id);
    }

    /*@Override
    public List<Cloth> findClothByCategory(Integer id) {
        return clothDao.selectClothByCategory(id);
    }*/

    @Override
    public List<Cloth> findClothByName(String clothName) {
        return clothDao.selectClothByName(clothName);
    }

    @Override
    public List<Cloth> AdminFindClothList(String clothName, PageModel pageModel) {
        return clothDao.AdminSelectClothList(clothName,pageModel);
    }

    @Override
    public void modifyCloth(Cloth cloth) {
        clothDao.updateCloth(cloth);
    }

    @Override
    public void removeCloth(int clothID) {
        clothDao.deleteCloth(clothID);
    }

    @Override
    public List<ClothSort> findALLClothSort() {
        return clothDao.selectALLClothSort();
    }

    @Override
    public int addClothA(Cloth cloth) {
        return clothDao.insertClothA(cloth);
    }

    @Override
    public List<ConsumeItem> findConsumeList(String consumeID,PageModel pageModel) {
        return clothDao.selectConsumeList(consumeID,pageModel);
    }

    @Override
    public void removeConsumeA(String consumeID) {
        //删除订单和订单项
        clothDao.deleteConsume(consumeID);
        clothDao.deleteConsumeItem(consumeID);
    }

    @Override
    public int findClothCount(String clothName) {
        return clothDao.selectClothCount(clothName);
    }

    @Override
    public int findConsumeCount(String consumeID) {
        return clothDao.selectConsumeCount(consumeID);
    }

    @Override
    public List<ConsumeItem> findConsumeListByUser(String id) {
        return clothDao.selectConsumeListByUser(id);
    }

    @Override
    public int findConsumeByUsrIDCount(Integer id) {
        return clothDao.selectConsumeByUsrIDCount(id);
    }

}
