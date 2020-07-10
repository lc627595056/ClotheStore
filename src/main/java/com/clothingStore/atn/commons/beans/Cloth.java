package com.clothingStore.atn.commons.beans;

public class Cloth {
    private Integer clothID;
    private String clothName;
    private double clothPrice;
    private Integer clothSort;
    private String clothImg;
    private String clothSize;
//    关联商品类型
    private ClothSort clothsort;

    public ClothSort getClothsort() {
        return clothsort;
    }

    public void setClothsort(ClothSort clothsort) {
        this.clothsort = clothsort;
    }

    public Integer getClothID() {
        return clothID;
    }

    public void setClothID(Integer clothID) {
        this.clothID = clothID;
    }

    public String getClothName() {
        return clothName;
    }

    public void setClothName(String clothName) {
        this.clothName = clothName;
    }

    public double getClothPrice() {
        return clothPrice;
    }

    public void setClothPrice(double clothPrice) {
        this.clothPrice = clothPrice;
    }

    public Integer getClothSort() {
        return clothSort;
    }

    public void setClothSort(Integer clothSort) {
        this.clothSort = clothSort;
    }

    public String getClothImg() {
        return clothImg;
    }

    public void setClothImg(String clothImg) {
        this.clothImg = clothImg;
    }

    public String getClothSize() {
        return clothSize;
    }

    public void setClothSize(String clothSize) {
        this.clothSize = clothSize;
    }

    //重写hashCode方法
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((clothID == null) ?0 : clothID.hashCode());
        return result;
    }

    //重写equals方法
    @Override
    public boolean equals(Object obj) {
        //如果两个对象为同一对象，返回true
        if (this == obj)
            return true;
        //测试equals后，也就是参数是否为空，如果为空，返回false
        if (obj == null)
            return false;
        //两个对象是否为同种类型对象，如果不是，返回false
        if (getClass() != obj.getClass())
            return false;
        //因为obj是Product类型，强制转换
        Cloth other= (Cloth) obj;
        //如果equals前的product的主键为空
        if (clothID==null){
            //equals后的product的主键不为空，返回false
            if (other.clothID!=null){
                return false;
            }
        }else if (!clothID.equals(other.clothID)){//如果两个对象的id都不为空，但是两个id不相等，返回false
            return false;
        }else if (!clothSize.equals((other.clothSize))){
            return false;
        }
        //两个对象为同一类型，以及两个对象都不为空，并且两个对象的主键（id）也不为空且相等
        return true;
    }

    @Override
    public String toString() {
        return "Cloth{" +
                "clothID=" + clothID +
                ", clothName='" + clothName + '\'' +
                ", clothPrice=" + clothPrice +
                ", clothSort=" + clothSort +
                ", clothImg='" + clothImg + '\'' +
                ", clothSize='" + clothSize + '\'' +
                ", clothsort=" + clothsort +
                '}';
    }
}
