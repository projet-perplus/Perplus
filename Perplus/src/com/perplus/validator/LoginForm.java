package com.perplus.validator;

import org.hibernate.validator.constraints.NotEmpty;

public class LoginForm {
	
	@NotEmpty
	private String memberEmail;
	@NotEmpty
	private String memberPassword;
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberPassword() {
		return memberPassword;
	}
	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}
	@Override
	public String toString() {
		return "LoginForm [memberEmail=" + memberEmail + ", memberPassword=" + memberPassword + "]";
	}
	
	
	
}
