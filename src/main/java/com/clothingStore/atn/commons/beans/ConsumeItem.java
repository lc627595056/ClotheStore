package com.clothingStore.atn.commons.beans;

public class ConsumeItem {
    private Consume consume;
    private Cloth cloth;
    private User user;
    private String clothSize;
    private int buyNum;

    public Consume getConsume() {
        return consume;
    }

    public void setConsume(Consume consume) {
        this.consume = consume;
    }

    public Cloth getCloth() {
        return cloth;
    }

    public void setCloth(Cloth cloth) {
        this.cloth = cloth;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getClothSize() {
        return clothSize;
    }

    public void setClothSize(String clothSize) {
        this.clothSize = clothSize;
    }

    public int getBuyNum() {
        return buyNum;
    }

    public void setBuyNum(int buyNum) {
        this.buyNum = buyNum;
    }

    @Override
    public String toString() {
        return "ConsumeItem{" +
                "consume=" + consume +
                ", cloth=" + cloth +
                ", user=" + user +
                ", clothSize='" + clothSize + '\'' +
                ", buyNum=" + buyNum +
                '}';
    }
}
