package com.clothingStore.atn.shop.consume.service;

import com.clothingStore.atn.commons.beans.Cloth;
import com.clothingStore.atn.commons.beans.Consume;
import com.clothingStore.atn.commons.beans.ConsumeItem;
import com.clothingStore.atn.shop.consume.dao.IConsumeDao;
import com.clothingStore.atn.shop.user.dao.IUserDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;

@Service
public class ConsumeServiceImpl implements IConsumeService {


    @Resource
    IConsumeDao consumeDao;
    @Resource
    IUserDao userDao;

    @Override
    public void createConsume(Consume consume, Map<Cloth, Integer> cart) {
        //循环插入该订单对应的订单项信息
        for (Cloth cloth:cart.keySet()){
            //创建OrderItem对象，保存各项信息
            ConsumeItem item=new ConsumeItem();
            item.setCloth(cloth);
            item.setConsume(consume);
            item.setClothSize(cloth.getClothSize());
            item.setBuyNum(cart.get(cloth));
            item.setUser(consume.getUser());
            //插入订单项
            consumeDao.insertConsumeItem(item);
        }
        //插入订单orders对应的信息
        consumeDao.insertConsume(consume);
    }

    @Override
    public void modifyConsumeState(String id, double money) {
        //更改用户消费金额
        Consume consume=consumeDao.selectConsumeById(id);
        int user_id=consume.getUser().getUserID();
        userDao.updateUserConsume(user_id,money);
        //修改订单支付状态
        consumeDao.updateConsumeState(id);
    }
}
