package com.perplus.house.vo;

import java.io.Serializable;

public class ScheduleVo implements Serializable{
	private int houseSerial;
	private int scheduleCheckinTerm;
	private int scheduleHowFarReservation;
	private int scheduleHowLongBakMin;
	private int scheduleHowLongBakMax;
	public ScheduleVo(int houseSerial, int scheduleCheckinTerm, int scheduleHowFarReservation,
			int scheduleHowLongBakMin, int scheduleHowLongBakMax) {
		super();
		this.houseSerial = houseSerial;
		this.scheduleCheckinTerm = scheduleCheckinTerm;
		this.scheduleHowFarReservation = scheduleHowFarReservation;
		this.scheduleHowLongBakMin = scheduleHowLongBakMin;
		this.scheduleHowLongBakMax = scheduleHowLongBakMax;
	}
	public int getHouseSerial() {
		return houseSerial;
	}
	public void setHouseSerial(int houseSerial) {
		this.houseSerial = houseSerial;
	}
	public int getScheduleCheckinTerm() {
		return scheduleCheckinTerm;
	}
	public void setScheduleCheckinTerm(int scheduleCheckinTerm) {
		this.scheduleCheckinTerm = scheduleCheckinTerm;
	}
	public int getScheduleHowFarReservation() {
		return scheduleHowFarReservation;
	}
	public void setScheduleHowFarReservation(int scheduleHowFarReservation) {
		this.scheduleHowFarReservation = scheduleHowFarReservation;
	}
	public int getScheduleHowLongBakMin() {
		return scheduleHowLongBakMin;
	}
	public void setScheduleHowLongBakMin(int scheduleHowLongBakMin) {
		this.scheduleHowLongBakMin = scheduleHowLongBakMin;
	}
	public int getScheduleHowLongBakMax() {
		return scheduleHowLongBakMax;
	}
	public void setScheduleHowLongBakMax(int scheduleHowLongBakMax) {
		this.scheduleHowLongBakMax = scheduleHowLongBakMax;
	}
	@Override
	public String toString() {
		return "ScheduleVo [houseSerial=" + houseSerial + ", scheduleCheckinTerm=" + scheduleCheckinTerm
				+ ", scheduleHowFarReservation=" + scheduleHowFarReservation + ", scheduleHowLongBakMin="
				+ scheduleHowLongBakMin + ", scheduleHowLongBakMax=" + scheduleHowLongBakMax + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + houseSerial;
		result = prime * result + scheduleCheckinTerm;
		result = prime * result + scheduleHowFarReservation;
		result = prime * result + scheduleHowLongBakMax;
		result = prime * result + scheduleHowLongBakMin;
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
		ScheduleVo other = (ScheduleVo) obj;
		if (houseSerial != other.houseSerial)
			return false;
		if (scheduleCheckinTerm != other.scheduleCheckinTerm)
			return false;
		if (scheduleHowFarReservation != other.scheduleHowFarReservation)
			return false;
		if (scheduleHowLongBakMax != other.scheduleHowLongBakMax)
			return false;
		if (scheduleHowLongBakMin != other.scheduleHowLongBakMin)
			return false;
		return true;
	}
	
	
}
