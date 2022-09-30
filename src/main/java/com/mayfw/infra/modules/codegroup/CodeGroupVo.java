package com.mayfw.infra.modules.codegroup;

import com.mayfw.infra.common.constants.Constants;

public class CodeGroupVo {
	
	private String shName;
	private String shId;
	private String shUseNy;
	private String shDelNy;
	public String getShDelNy() {
		return shDelNy;
	}
	public void setShDelNy(String shDelNy) {
		this.shDelNy = shDelNy;
	}
	private String shDate;
	private String startDate;
	private String endDate;
	private String shSeq;
	private String Sseq;
	public String getShName() {
		return shName;
	}
	public void setShName(String shName) {
		this.shName = shName;
	}
	public String getShId() {
		return shId;
	}
	public void setShId(String shId) {
		this.shId = shId;
	}
	public String getShUseNy() {
		return shUseNy;
	}
	public void setShUseNy(String shUseNy) {
		this.shUseNy = shUseNy;
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
	public String getShSeq() {
		return shSeq;
	}
	public void setShSeq(String shSeq) {
		this.shSeq = shSeq;
	}
	public String getSseq() {
		return Sseq;
	}
	public void setSseq(String sseq) {
		Sseq = sseq;
	}
	
	
	
//	paging
	private int thisPage = 1;									// 현재 페이지
	private int rowNumToShow = Constants.ROW_NUM_TO_SHOW;		// 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = Constants.PAGE_NUM_TO_SHOW;		// 화면에 보여줄 페이징 번호 갯수

	private int totalRows;										// 전체 데이터 갯수
	private int totalPages;										// 전체 페이지 번호
	private int startPage;										// 시작 페이지 번호
	private int endPage;										// 마지막 페이지 번호
	
	private int startRnumForOracle = 1;							// 쿼리 시작 row
	private int endRnumForOracle;								// 쿼리 끝 row
	private Integer RNUM;							

	private int startRnumForMysql = 0;							// 쿼리 시작 row


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

	public int getStartRnumForOracle() {
		return startRnumForOracle;
	}

	public void setStartRnumForOracle(int startRnumForOracle) {
		this.startRnumForOracle = startRnumForOracle;
	}

	public int getEndRnumForOracle() {
		return endRnumForOracle;
	}

	public void setEndRnumForOracle(int endRnumForOracle) {
		this.endRnumForOracle = endRnumForOracle;
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
			
			setEndRnumForOracle((getRowNumToShow() * getThisPage()));
			setStartRnumForOracle((getEndRnumForOracle() - getRowNumToShow()) + 1);
			if (getStartRnumForOracle() < 1) setStartRnumForOracle(1);
			
			if (thisPage == 1) {
				setStartRnumForMysql(0);
			} else {
				setStartRnumForMysql((getRowNumToShow() * (getThisPage()-1)));
			}
			
	//		System.out.println("getThisPage():" + getThisPage());
	//		System.out.println("getTotalRows():" + getTotalRows());
	//		System.out.println("getRowNumToShow():" + getRowNumToShow());
	//		System.out.println("getTotalPages():" + getTotalPages());
	//		System.out.println("getStartPage():" + getStartPage());
	//		System.out.println("getEndPage():" + getEndPage());		
	//		System.out.println("getStartRnumForOracle():" + getStartRnumForOracle());
	//		System.out.println("getEndRnumForOracle():" + getEndRnumForOracle());
	//		System.out.println("getStartRnumForMysql(): " + getStartRnumForMysql());
			
		}
	
	
//	list
	private String[] checkboxSeqArray;
	public String[] getCheckboxSeqArray() {
		return checkboxSeqArray;
	}
	public void setCheckboxSeqArray(String[] checkboxSeqArray) {
		this.checkboxSeqArray = checkboxSeqArray;
	}
		
	}
	
	
		
	


	


