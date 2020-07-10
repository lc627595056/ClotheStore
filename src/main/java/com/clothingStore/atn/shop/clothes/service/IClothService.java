package com.clothingStore.atn.shop.clothes.service;

import com.clothingStore.atn.commons.beans.Cloth;
import com.clothingStore.atn.commons.beans.ClothSort;
import com.clothingStore.atn.commons.beans.ConsumeItem;
import com.clothingStore.atn.utils.PageModel;

import java.util.List;

public interface IClothService {

    List<Cloth> findCloth(Integer id);

    Cloth findClothById(int id);

    //List<Cloth> findClothByCategory(Integer id);

    List<Cloth> findClothByName(String clothName);

    List<Cloth> AdminFindClothList(String clothName, PageModel pageModel);

    void modifyCloth(Cloth cloth);

    void removeCloth(int clothID);

    List<ClothSort> findALLClothSort();

    int addClothA(Cloth cloth);

    List<ConsumeItem> findConsumeList(String consumeID,PageModel pageModel);

    void removeConsumeA(String consumeID);

    int findClothCount(String clothName);

    int findConsumeCount(String consumeID);

    List<ConsumeItem> findConsumeListByUser(String id);

    int findConsumeByUsrIDCount(Integer id);
}
