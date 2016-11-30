package com.perplus.util;

public class TextUtil {

	//등록/수정처리 시 content와 title 변환
	//<textarea>에 입력된 것 중 &, <, >, 공백, 엔터를 HTML에 보여질 형태로 변경
	public static String textToHtml(String src){
		return src.replaceAll("&", "&amp;")
				   .replaceAll("<", "&lt;")
				   .replaceAll(">", "&gt;")
				   .replaceAll(" ",  "&nbsp;")
				   .replaceAll("\n", "<br>");
	}
	//수정 폼 조회시 content와 title을 변환
	//HTML에 보여질 형태로 변경된 문자열들을 <textarea>에 보여질(사용자가 입력한) 형태로 변경
	public static String htmlToText(String src){
		return src.replaceAll("<br>", "\n")
				   .replaceAll("&lt;", "<")
				   .replaceAll("&gt;", ">")
				   .replaceAll("&nbsp;", " ")
				   .replaceAll("&amp;", "&");
	}
}









