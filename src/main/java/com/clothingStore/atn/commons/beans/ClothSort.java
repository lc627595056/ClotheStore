package com.clothingStore.atn.commons.beans;

public class ClothSort {
    private Integer clothSortID;
    private String clothSortName;

    public Integer getClothSortID() {
        return clothSortID;
    }

    public void setClothSortID(Integer clothSortID) {
        this.clothSortID = clothSortID;
    }

    public String getClothSortName() {
        return clothSortName;
    }

    public void setClothSortName(String clothSortName) {
        this.clothSortName = clothSortName;
    }

    @Override
    public String toString() {
        return "ClothSort{" +
                "clothSortID=" + clothSortID +
                ", clothSortName='" + clothSortName + '\'' +
                '}';
    }
}
