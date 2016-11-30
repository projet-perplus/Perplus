package com.perplus.house.vo;

import java.io.Serializable;
import java.sql.Timestamp;

public class HouseVo implements Serializable{
	private String memberEmail;
	private int HouseSerial;
	private int houseRating;
	private String houseTitle;
	private String houseContent;
	private Timestamp checkinStart;
	private Timestamp checkinEnd;
	private String houseNecessaryCondition;
}
