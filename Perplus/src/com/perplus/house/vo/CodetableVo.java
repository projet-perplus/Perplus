package com.perplus.house.vo;

import java.io.Serializable;

public class CodetableVo implements Serializable{
	public int codeKind;
	public String key;
	public String value;
	public CodetableVo(int codeKind, String key, String value) {
		super();
		this.codeKind = codeKind;
		this.key = key;
		this.value = value;
	}
	public int getCodeKind() {
		return codeKind;
	}
	public void setCodeKind(int codeKind) {
		this.codeKind = codeKind;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	@Override
	public String toString() {
		return "CodetableVo [codeKind=" + codeKind + ", key=" + key + ", value=" + value + "]";
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
		if (key == null) {
			if (other.key != null)
				return false;
		} else if (!key.equals(other.key))
			return false;
		if (value == null) {
			if (other.value != null)
				return false;
		} else if (!value.equals(other.value))
			return false;
		return true;
	}	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + codeKind;
		result = prime * result + ((key == null) ? 0 : key.hashCode());
		result = prime * result + ((value == null) ? 0 : value.hashCode());
		return result;
	}	
}