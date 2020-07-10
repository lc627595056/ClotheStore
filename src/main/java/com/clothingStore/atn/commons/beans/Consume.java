package com.clothingStore.atn.commons.beans;

import java.util.Date;

public class Consume {
    private String consumeID;
    private String consumeName;
    private String consumePhone;
    private String consumeAddress;
    private Date consumeDate;
    private double consumeSum;
    private Integer consumeState;
    private User user;

    public String getConsumeID() {
        return consumeID;
    }

    public void setConsumeID(String consumeID) {
        this.consumeID = consumeID;
    }

    public String getConsumeName() {
        return consumeName;
    }

    public void setConsumeName(String consumeName) {
        this.consumeName = consumeName;
    }

    public String getConsumePhone() {
        return consumePhone;
    }

    public void setConsumePhone(String consumePhone) {
        this.consumePhone = consumePhone;
    }

    public String getConsumeAddress() {
        return consumeAddress;
    }

    public void setConsumeAddress(String consumeAddress) {
        this.consumeAddress = consumeAddress;
    }

    public Date getConsumeDate() {
        return consumeDate;
    }

    public void setConsumeDate(Date consumeDate) {
        this.consumeDate = consumeDate;
    }

    public double getConsumeSum() {
        return consumeSum;
    }

    public void setConsumeSum(double consumeSum) {
        this.consumeSum = consumeSum;
    }

    public Integer getConsumeState() {
        return consumeState;
    }

    public void setConsumeState(Integer consumeState) {
        this.consumeState = consumeState;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Consume{" +
                "consumeID='" + consumeID + '\'' +
                ", consumeName='" + consumeName + '\'' +
                ", consumePhone='" + consumePhone + '\'' +
                ", consumeAddress='" + consumeAddress + '\'' +
                ", consumeDate=" + consumeDate +
                ", consumeSum=" + consumeSum +
                ", consumeState='" + consumeState + '\'' +
                ", user=" + user +
                '}';
    }
}
