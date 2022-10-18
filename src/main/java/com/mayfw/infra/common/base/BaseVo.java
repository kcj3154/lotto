package com.mayfw.infra.common.base;

import com.mayfw.infra.common.constants.Constants;

public class BaseVo {
	
	private int thisPage = 1;
	private int rowNumToShow = Constants.ROW_NUM_TO_SHOW;
	private int pageNumToShow = Constants.PAGE_NUM_TO_SHOW;
	
	private String shValue;
	private String shType;
	private Integer shOption;
	private Integer shDelNy;
	private Integer shDate;
	private String shStartDate;
	private String shEndDate;	
	
	public int getThisPage() {
		return thisPage;
	}
	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}
	public int getRowNumToShow() {
		return rowNumToShow;
	}
	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}
	public int getPageNumToShow() {
		return pageNumToShow;
	}
	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}
	public String getShValue() {
		return shValue;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	public String getShType() {
		return shType;
	}
	public void setShType(String shType) {
		this.shType = shType;
	}
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public Integer getShDelNy() {
		return shDelNy;
	}
	public void setShDelNy(Integer shDelNy) {
		this.shDelNy = shDelNy;
	}
	public Integer getShDate() {
		return shDate;
	}
	public void setShDate(Integer shDate) {
		this.shDate = shDate;
	}
	public String getShStartDate() {
		return shStartDate;
	}
	public void setShStartDate(String shStartDate) {
		this.shStartDate = shStartDate;
	}
	public String getShEndDate() {
		return shEndDate;
	}
	public void setShEndDate(String shEndDate) {
		this.shEndDate = shEndDate;
	}
	public int getTotalRows() {
		return totalRows;
	}
	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}
	public int getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getStartRnumForMysql() {
		return startRnumForMysql;
	}
	public void setStartRnumForMysql(int startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}
	public int getEndRnumForMysql() {
		return endRnumForMysql;
	}
	public void setEndRnumForMysql(int endRnumForMysql) {
		this.endRnumForMysql = endRnumForMysql;
	}
	private int totalRows;										// 전체 데이터 갯수
	private int totalPages;										// 전체 페이지 번호
	private int startPage;										// 시작 페이지 번호
	private int endPage;										// 마지막 페이지 번호
	
	private int startRnumForMysql = 1;							// 쿼리 시작 row
	private int endRnumForMysql;								// 쿼리 끝 row
	
	
public void setParamsPaging(int totalRows) {
		
//		setThisPage(3);

		setTotalRows(totalRows);
		
		if (getTotalRows() == 0) {
			setTotalPages(1);
		} else {
			setTotalPages(getTotalRows() / getRowNumToShow());
		}

		if (getTotalRows() % getRowNumToShow() > 0) {
			setTotalPages(getTotalPages() + 1);
		}

		if (getTotalPages() < getThisPage()) {
			setThisPage(getTotalPages());
		}
		
		setStartPage(((getThisPage() - 1) / getPageNumToShow()) * getPageNumToShow() + 1);

		setEndPage(getStartPage() + getPageNumToShow() - 1);

		if (getEndPage() > getTotalPages()) {
			setEndPage(getTotalPages());
		}
		
		setEndRnumForMysql((getRowNumToShow() * getThisPage()));
		setStartRnumForMysql((getEndRnumForMysql() - getRowNumToShow()) + 1);
		if (getStartRnumForMysql() < 1) setStartRnumForMysql(1);
		
		if (thisPage == 1) {
			setStartRnumForMysql(0);
		} else {
			setStartRnumForMysql((getRowNumToShow() * (getThisPage()-1)));
		}
		
		System.out.println("getThisPage():" + getThisPage());
		System.out.println("getTotalRows():" + getTotalRows());
		System.out.println("getRowNumToShow():" + getRowNumToShow());
		System.out.println("getTotalPages():" + getTotalPages());
		System.out.println("getStartPage():" + getStartPage());
		System.out.println("getEndPage():" + getEndPage());		
		System.out.println("getStartRnumForMysql():" + getStartRnumForMysql());
		System.out.println("getEndRnumForMysql():" + getEndRnumForMysql());
	}

}
