package com.tasteZip.infra.modules.store;

import com.tasteZip.infra.common.base.BaseVo;

public class StoreVo extends BaseVo {
    
    private Integer shOption;
    private String shValue;
    private Integer shDelNy;
    private Integer shOptionDate;
    private String shDateStart;
    private String shDateEnd;
    private String ifstSeq; 
    private String ifstAddress;
    private String ifmnSeq;
    private String ifstLat;
    private String ifstLng;
    private String iffvSeq;
    private String ifmmSeq;
    private String seq;
    
    private String stPlace;
    private String edPlace;
   
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getShOption() {
        return shOption;
    }
    public void setShOption(Integer shOption) {
        this.shOption = shOption;
    }
    public String getShValue() {
        return shValue;
    }
    public void setShValue(String shValue) {
        this.shValue = shValue;
    }
    public Integer getShDelNy() {
        return shDelNy;
    }
    public void setShDelNy(Integer shDelNy) {
        this.shDelNy = shDelNy;
    }
    public Integer getShOptionDate() {
        return shOptionDate;
    }
    public void setShOptionDate(Integer shOptionDate) {
        this.shOptionDate = shOptionDate;
    }
    public String getShDateStart() {
        return shDateStart;
    }
    public void setShDateStart(String shDateStart) {
        this.shDateStart = shDateStart;
    }
    public String getShDateEnd() {
        return shDateEnd;
    }
    public void setShDateEnd(String shDateEnd) {
        this.shDateEnd = shDateEnd;
    }
    public String getIfstSeq() {
        return ifstSeq;
    }
    public void setIfstSeq(String ifstSeq) {
        this.ifstSeq = ifstSeq;
    }
	public String getIfmnSeq() {
		return ifmnSeq;
	}
	public void setIfmnSeq(String ifmnSeq) {
		this.ifmnSeq = ifmnSeq;
	}
	public String getIfstLat() {
		return ifstLat;
	}
	public void setIfstLat(String ifstLat) {
		this.ifstLat = ifstLat;
	}
	public String getIfstLng() {
		return ifstLng;
	}
	public void setIfstLng(String ifstLng) {
		this.ifstLng = ifstLng;
	}
	
	public String getIfstAddress() {
		return ifstAddress;
	}
	public void setIfstAddress(String ifstAddress) {
		this.ifstAddress = ifstAddress;
	}
	public String getIffvSeq() {
		return iffvSeq;
	}
	public void setIffvSeq(String iffvSeq) {
		this.iffvSeq = iffvSeq;
	}
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	public String getStPlace() {
		return stPlace;
	}
	public void setStPlace(String stPlace) {
		this.stPlace = stPlace;
	}
	public String getEdPlace() {
		return edPlace;
	}
	public void setEdPlace(String edPlace) {
		this.edPlace = edPlace;
	}
	
}
