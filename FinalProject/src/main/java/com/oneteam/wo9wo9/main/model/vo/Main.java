package com.oneteam.wo9wo9.main.model.vo;

public class Main {
	private int sideNum; //SIDE_NUM	NUMBER		NOT NULL,
	private int categoryNum; //CATEGORY_NUM	NUMBER		NOT NULL,       -- 요기요 (NUMBER 가 아니라 VARCHAR2 로 되어있었음
	private String sideName;//SIDE_NAME	VARCHAR2(100)		NOT NULL,
	private int price; //PRICE	NUMBER		NOT NULL,
	private String status;//STATUS	VARCHAR2(1)	DEFAULT 'Y'	NOT NULL,
	private int count; //COUNT	NUMBER	DEFAULT 0	NOT NULL
	
	private String bestImg; //BESTIMG
	private String bestRice;
	private String bestSoup;
		


	public Main(int sideNum, int categoryNum, String sideName, int price, String status, int count, String bestImg,
			String bestRice, String bestSoup) {
		super();
		this.sideNum = sideNum;
		this.categoryNum = categoryNum;
		this.sideName = sideName;
		this.price = price;
		this.status = status;
		this.count = count;
		this.bestImg = bestImg;
		this.bestRice = bestRice;
		this.bestSoup = bestSoup;
	}

	public String getBestRice() {
		return bestRice;
	}

	public void setBestRice(String bestRice) {
		this.bestRice = bestRice;
	}

	public String getBestSoup() {
		return bestSoup;
	}

	public void setBestSoup(String bestSoup) {
		this.bestSoup = bestSoup;
	}

	public Main() {
		super();
	}

	public Main(int sideNum, int categoryNum, String sideName, int price, String status, int count, String bestImg) {
		super();
		this.sideNum = sideNum;
		this.categoryNum = categoryNum;
		this.sideName = sideName;
		this.price = price;
		this.status = status;
		this.count = count;
		this.bestImg = bestImg;
	}

	public int getSideNum() {
		return sideNum;
	}

	public void setSideNum(int sideNum) {
		this.sideNum = sideNum;
	}

	public int getCategoryNum() {
		return categoryNum;
	}

	public void setCategoryNum(int categoryNum) {
		this.categoryNum = categoryNum;
	}

	public String getSideName() {
		return sideName;
	}

	public void setSideName(String sideName) {
		this.sideName = sideName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getBestImg() {
		return bestImg;
	}

	public void setBestImg(String bestImg) {
		this.bestImg = bestImg;
	}

	@Override
	public String toString() {
		return "Main [sideNum=" + sideNum + ", categoryNum=" + categoryNum + ", sideName=" + sideName + ", price="
				+ price + ", status=" + status + ", count=" + count + ", bestImg=" + bestImg + ", bestRice=" + bestRice
				+ ", bestSoup=" + bestSoup + "]";
	}
	
	
	
	
}
