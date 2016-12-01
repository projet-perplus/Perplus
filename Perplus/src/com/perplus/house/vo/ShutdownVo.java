package com.perplus.house.vo;

import java.io.Serializable;
import java.util.Date;

public class ShutdownVo implements Serializable{
	private int houseSerial;
	private Date shutdownDate;
	public ShutdownVo(int houseSerial, Date shutdownDate) {
		super();
		this.houseSerial = houseSerial;
		this.shutdownDate = shutdownDate;
	}
	public int getHouseSerial() {
		return houseSerial;
	}
	public void setHouseSerial(int houseSerial) {
		this.houseSerial = houseSerial;
	}
	public Date getShutdownDate() {
		return shutdownDate;
	}
	public void setShutdownDate(Date shutdownDate) {
		this.shutdownDate = shutdownDate;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + houseSerial;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ShutdownVo other = (ShutdownVo) obj;
		if (houseSerial != other.houseSerial)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "ShutdownVo [houseSerial=" + houseSerial + "]";
	}
	
	
}
