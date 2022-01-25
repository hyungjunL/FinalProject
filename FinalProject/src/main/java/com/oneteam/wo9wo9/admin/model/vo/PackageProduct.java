package com.oneteam.wo9wo9.admin.model.vo;

public class PackageProduct {
	
	private int packageNum;	//	PACKAGE_NUM	NUMBER		NOT NULL,
	private int packageNum2;	//	PACKAGE_NUM2	NUMBER		NOT NULL, (�뙣�궎吏� 遺꾨쪟 踰덊샇)
	private String packageName;	//	PACKAGE_NAME	VARCHAR2(100)		NOT NULL,
	private int packagePrice;	//	PACKAGE_PRICE	NUMBER		NOT NULL,
	private String status;	//	STATUS	VARCHAR2(1)	DEFAULT 'Y'	NOT NULL
	private int count;
	
	private String titleImg;
	
	private String bestPackageImg;
	
	private String bestCImg;
	private String bestFImg;
	private String bestGImg;
	private String bestPImg;

	public PackageProduct() {
		super();
	}

	public PackageProduct(int packageNum, int packageNum2, String packageName, int packagePrice, String status,
			int count, String titleImg, String bestPackageImg, String bestCImg, String bestFImg, String bestGImg, String bestPImg) {
		super();
		this.packageNum = packageNum;
		this.packageNum2 = packageNum2;
		this.packageName = packageName;
		this.packagePrice = packagePrice;
		this.status = status;
		this.count = count;
		this.titleImg = titleImg;
		this.bestPackageImg = bestPackageImg;
		this.bestCImg = bestCImg;
		this.bestFImg = bestFImg;
		this.bestGImg = bestGImg;
		this.bestPImg = bestPImg;
	}




	public int getPackageNum() {
		return packageNum;
	}

	public void setPackageNum(int packageNum) {
		this.packageNum = packageNum;
	}

	public int getPackageNum2() {
		return packageNum2;
	}

	public void setPackageNum2(int packageNum2) {
		this.packageNum2 = packageNum2;
	}

	public String getPackageName() {
		return packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}

	public int getPackagePrice() {
		return packagePrice;
	}

	public void setPackagePrice(int packagePrice) {
		this.packagePrice = packagePrice;
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

	public String getTitleImg() {
		return titleImg;
	}

	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}

	public String getBestPackageImg() {
		return bestPackageImg;
	}

	public void setBestPackageImg(String bestPackageImg) {
		this.bestPackageImg = bestPackageImg;
	}


	public String getBestCImg() {
		return bestCImg;
	}

	public void setBestC(String bestCImg) {
		this.bestCImg = bestCImg;
	}
	
	public String getBestFImg() {
		return bestFImg;
	}

	public void setBestFImg(String bestFImg) {
		this.bestFImg = bestFImg;
	}

	public String getBestGImg() {
		return bestGImg;
	}

	public void setBestGImg(String bestGImg) {
		this.bestGImg = bestGImg;
	}

	public String getBestPImg() {
		return bestPImg;
	}

	public void setBestPImg(String bestPImg) {
		this.bestPImg = bestPImg;
	}

	@Override
	public String toString() {
		return "PackageProduct [packageNum=" + packageNum + ", packageNum2=" + packageNum2 + ", packageName="
				+ packageName + ", packagePrice=" + packagePrice + ", status=" + status + ", count=" + count
				+ ", titleImg=" + titleImg + ", bestPackageImg=" + bestPackageImg + ", bestCImg=" + bestCImg + ", bestFImg="
				+ bestFImg + ", bestGImg=" + bestGImg + ", bestPImg=" + bestPImg + "]";
	}
	
	


	
}
