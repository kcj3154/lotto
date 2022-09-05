package com.mayfw.infra.modules.code;

import java.util.Date;

public class Code {
	
	private String seq;
	private String ccg_seq;
	private String codeGroup;
	private String codeName;
	private String codeNameEn;
	private String useNy;
	private Integer sort;
	private Date reg_date;
	private Date mod_date;
	public String getSeq() {
		return seq;
	}
	
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getCcg_seq() {
		return ccg_seq;
	}
	public void setCcg_seq(String ccg_seq) {
		this.ccg_seq = ccg_seq;
	}
	public String getCodeGroup() {
		return codeGroup;
	}
	public void setCodeGroup(String codeGroup) {
		this.codeGroup = codeGroup;
	}
	public String getCodeName() {
		return codeName;
	}
	public void setCodeName(String codeName) {
		this.codeName = codeName;
	}
	public String getCodeNameEn() {
		return codeNameEn;
	}
	public void setCodeNameEn(String codeNameEn) {
		this.codeNameEn = codeNameEn;
	}
	public String getUseNy() {
		return useNy;
	}
	public void setUseNy(String useNy) {
		this.useNy = useNy;
	}
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public Date getMod_date() {
		return mod_date;
	}
	public void setMod_date(Date mod_date) {
		this.mod_date = mod_date;
	}
	

}
