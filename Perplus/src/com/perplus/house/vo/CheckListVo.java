package com.perplus.house.vo;

import java.io.Serializable;

public class CheckListVo implements Serializable{
	private int checklistSerial;
	private int houseSerial;
	private String codeKind;
	private String value;
	
	public CheckListVo() {
	}

	public CheckListVo(int checklistSerial, int houseSerial, String codeKind, String value) {
		super();
		this.checklistSerial = checklistSerial;
		this.houseSerial = houseSerial;
		this.codeKind = codeKind;
		this.value = value;
	}

	public int getChecklistSerial() {
		return checklistSerial;
	}

	public void setChecklistSerial(int checklistSerial) {
		this.checklistSerial = checklistSerial;
	}

	public int getHouseSerial() {
		return houseSerial;
	}

	public void setHouseSerial(int houseSerial) {
		this.houseSerial = houseSerial;
	}

	public String getCodeKind() {
		return codeKind;
	}

	public void setCodeKind(String codeKind) {
		this.codeKind = codeKind;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	@Override
	public String toString() {
		return "CheckListVo [checklistSerial=" + checklistSerial + ", houseSerial=" + houseSerial + ", codeKind="
				+ codeKind + ", value=" + value + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + checklistSerial;
		result = prime * result + ((codeKind == null) ? 0 : codeKind.hashCode());
		result = prime * result + houseSerial;
		result = prime * result + ((value == null) ? 0 : value.hashCode());
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
		CheckListVo other = (CheckListVo) obj;
		if (checklistSerial != other.checklistSerial)
			return false;
		if (codeKind == null) {
			if (other.codeKind != null)
				return false;
		} else if (!codeKind.equals(other.codeKind))
			return false;
		if (houseSerial != other.houseSerial)
			return false;
		if (value == null) {
			if (other.value != null)
				return false;
		} else if (!value.equals(other.value))
			return false;
		return true;
	}

	
}
