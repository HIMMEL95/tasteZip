package com.tasteZip.infra.modules.findWay;

public class FindWayVo {
    private String sPlace;
    private String ePlace;
    
    private String stPlace;
    private String edPlace;
    
    private String ifstSeq;
    private String ifstAddress;
    
    
    public String getsPlace() {
        return sPlace;
    }
    public void setsPlace(String sPlace) {
        this.sPlace = sPlace;
    }
    public String getePlace() {
        return ePlace;
    }
    public void setePlace(String ePlace) {
        this.ePlace = ePlace;
    }
	public String getIfstSeq() {
		return ifstSeq;
	}
	public void setIfstSeq(String ifstSeq) {
		this.ifstSeq = ifstSeq;
	}
	public String getIfstAddress() {
		return ifstAddress;
	}
	public void setIfstAddress(String ifstAddress) {
		this.ifstAddress = ifstAddress;
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
