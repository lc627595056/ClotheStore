
package com.clothingStore.atn.shop.consume.dao;

import com.clothingStore.atn.commons.beans.Consume;
import com.clothingStore.atn.commons.beans.ConsumeItem;

public interface IConsumeDao {

    void insertConsumeItem(ConsumeItem item);

    void insertConsume(Consume consume);

    void updateConsumeState(String id);

    Consume selectConsumeById(String id);
}
