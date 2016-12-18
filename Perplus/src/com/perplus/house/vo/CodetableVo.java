package com.perplus.house.vo;

import java.io.Serializable;

public class CodetableVo implements Serializable{
	public int codeKind;
	public String value;
	public CodetableVo(int codeKind, String value) {
		this.codeKind = codeKind;
		this.value = value;
	}
	public CodetableVo() {
	}
	public int getCodeKind() {
		return codeKind;
	}
	public void setCodeKind(int codeKind) {
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
		return "CodetableVo [codeKind=" + codeKind + ", value=" + value + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + codeKind;
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
		CodetableVo other = (CodetableVo) obj;
		if (codeKind != other.codeKind)
			return false;
		if (value == null) {
			if (other.value != null)
				return false;
		} else if (!value.equals(other.value))
			return false;
		return true;
	}
	
	
	
}