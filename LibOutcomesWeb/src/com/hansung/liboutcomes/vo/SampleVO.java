package com.hansung.liboutcomes.vo;

/*
 * VO 사용 방법을 위한 Sample 파일
 * 
 * VO(Value Object)란 관계형 데이터베이스의 레코드에 대응되는 자바 클래스
 */
public class SampleVO {

	// sampleTable의 필드 값들
	private int sampleNum;
	private int sampleInt;
	private String sampleString;

	public SampleVO() {} // 인자 없는 생성자

	public SampleVO(int sampleNum, int sampleInt, String sampleString) { // 인자 있는 생성자
		this.sampleNum = sampleNum;
		this.sampleInt = sampleInt;
		this.sampleString = sampleString;
	}

	// Getters & Setters
	public int getSampleNum() {
		return sampleNum;
	}
	public void setSampleNum(int sampleNum) {
		this.sampleNum = sampleNum;
	}
	public int getSampleInt() {
		return sampleInt;
	}
	public void setSampleInt(int sampleInt) {
		this.sampleInt = sampleInt;
	}
	public String getSampleString() {
		return sampleString;
	}
	public void setSampleString(String sampleString) {
		this.sampleString = sampleString;
	}
	
}
