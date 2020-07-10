package com.clothingStore.atn.shop.clothes.dao;

import com.clothingStore.atn.commons.beans.Cloth;
import com.clothingStore.atn.commons.beans.ClothSort;
import com.clothingStore.atn.commons.beans.ConsumeItem;
import com.clothingStore.atn.utils.PageModel;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IClothDao {

    List<Cloth> selectCloth(Integer id);

    Cloth selectClothById(int id);

    //List<Cloth> selectClothByCategory(Integer id);

    List<Cloth> selectClothByName(String clothName);

    List<Cloth> AdminSelectClothList(@Param("clothName") String clothName, @Param("pageModel") PageModel pageModel);

    void updateCloth(Cloth cloth);

    void deleteCloth(int clothID);

    List<ClothSort> selectALLClothSort();

    int insertClothA(Cloth cloth);

    List<ConsumeItem> selectConsumeList(@Param("consumeID") String consumeID, @Param("pageModel") PageModel pageModel);

    void deleteConsume(String consumeID);

    void deleteConsumeItem(String consumeID);

    int selectClothCount(String clothName);

    int selectConsumeCount(String consumeID);

    List<ConsumeItem> selectConsumeListByUser(String id);

    int selectConsumeByUsrIDCount(Integer id);
}
