package com.mayfw.infra.modules.member;

import com.mayfw.infra.common.constants.Constants;

public class MemberVo {
	
	private String shSeq;
	private String shAdminNy;
	private String shDate;
	private String startDate;
	private String endDate;
	private String shOption;
	private String shValue;
	
	
public String getShSeq() {
		return shSeq;
	}
	public void setShSeq(String shSeq) {
		this.shSeq = shSeq;
	}
	public String getShAdminNy() {
		return shAdminNy;
	}
	public void setShAdminNy(String shAdminNy) {
		this.shAdminNy = shAdminNy;
	}
	public String getShDate() {
		return shDate;
	}
	public void setShDate(String shDate) {
		this.shDate = shDate;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getShOption() {
		return shOption;
	}
	public void setShOption(String shOption) {
		this.shOption = shOption;
	}
	public String getShValue() {
		return shValue;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	//	paging
	private int thisPage = 1;									// 현재 페이지
	private int rowNumToShow = Constants.ROW_NUM_TO_SHOW;		// 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = Constants.PAGE_NUM_TO_SHOW;		// 화면에 보여줄 페이징 번호 갯수
	private int totalRows;										// 전체 데이터 갯수
	private int totalPages;										// 전체 페이지 번호
	private int startPage;										// 시작 페이지 번호
	private int endPage;										// 마지막 페이지 번호
//	private int startRnumForOracle = 1;							// 쿼리 시작 row
//	private int endRnumForOracle;								// 쿼리 끝 row
	private Integer RNUM;
	private int startRnumForMysql = 0;							// 쿼리 시작 row

	
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
		
		setStartPage(         (   (getThisPage() - 1)    / getPageNumToShow())           * getPageNumToShow()       + 1);

		setEndPage(getStartPage() + getPageNumToShow() - 1);

		if (getEndPage() > getTotalPages()) {
			setEndPage(getTotalPages());
		}
		
		if (thisPage == 1) {
			setStartRnumForMysql(0);
		} else {
			setStartRnumForMysql((getRowNumToShow() * (getThisPage()-1)));
		}
	
	

}
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
public Integer getRNUM() {
	return RNUM;
}
public void setRNUM(Integer rNUM) {
	RNUM = rNUM;
}
public int getStartRnumForMysql() {
	return startRnumForMysql;
}
public void setStartRnumForMysql(int startRnumForMysql) {
	this.startRnumForMysql = startRnumForMysql;
}
}
