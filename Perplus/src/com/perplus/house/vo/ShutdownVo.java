package com.perplus.house.vo;

import java.io.Serializable;
import java.util.Date;

public class ShutdownVo implements Serializable{
	private int shutdownSerial;
	private int houseSerial;
	private Date shutdownDate;
	
	public ShutdownVo() {
		// TODO Auto-generated constructor stub
	}

	public ShutdownVo(int shutdownSerial, int houseSerial, Date shutdownDate) {
		super();
		this.shutdownSerial = shutdownSerial;
		this.houseSerial = houseSerial;
		this.shutdownDate = shutdownDate;
	}

	public int getShutdownSerial() {
		return shutdownSerial;
	}

	public void setShutdownSerial(int shutdownSerial) {
		this.shutdownSerial = shutdownSerial;
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
	public String toString() {
		return "ShutdownVo [shutdownSerial=" + shutdownSerial + ", houseSerial=" + houseSerial + ", shutdownDate="
				+ shutdownDate + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + houseSerial;
		result = prime * result + ((shutdownDate == null) ? 0 : shutdownDate.hashCode());
		result = prime * result + shutdownSerial;
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
		if (shutdownDate == null) {
			if (other.shutdownDate != null)
				return false;
		} else if (!shutdownDate.equals(other.shutdownDate))
			return false;
		if (shutdownSerial != other.shutdownSerial)
			return false;
		return true;
	}
	
}
