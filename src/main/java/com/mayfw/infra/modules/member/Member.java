package com.mayfw.infra.modules.member;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Member {
	
	private String rtSeq;
	private String rt;
	private String ifmmSeq;
	private String ifmmId;
	private String ifmmName;
	private String ifmmDob;
	private String ifmmAdminNy;
	private String ifmmRating;
	private String ifmmGender;
	private String ifmmEmail;
	private String ifmmTel;
	private String ifmmZipcode;
	private String ifmmAddress;
	private String ifmmDetailedAddress;
	private Date ifmmRegDate;
	private Date ifmmModDate;
	private String ifmmDelNy;
	private String ifmmPwd;
	private String ifmmRegMod;
	
	//업로드
	private String seq;
	private String type;
	private String defaultNy;
	private Integer sort;
	private String path;
	private String originalName;
	private String uuidName;
	private String ext;
	private String size;
	private String delNy;
	private String pseq;
	private String regIp;
	private String regSeq;
	private String regDeviceCd;
	private String regDateTime;
	private String regDateTimeSvr;
	private MultipartFile[] uploadedImage;
	
	public String getRtSeq() {
		return rtSeq;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDefaultNy() {
		return defaultNy;
	}
	public void setDefaultNy(String defaultNy) {
		this.defaultNy = defaultNy;
	}
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	public String getUuidName() {
		return uuidName;
	}
	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	public String getExt() {
		return ext;
	}
	public void setExt(String ext) {
		this.ext = ext;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getDelNy() {
		return delNy;
	}
	public void setDelNy(String delNy) {
		this.delNy = delNy;
	}
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pseq) {
		this.pseq = pseq;
	}
	public String getRegIp() {
		return regIp;
	}
	public void setRegIp(String regIp) {
		this.regIp = regIp;
	}
	public String getRegSeq() {
		return regSeq;
	}
	public void setRegSeq(String regSeq) {
		this.regSeq = regSeq;
	}
	public String getRegDeviceCd() {
		return regDeviceCd;
	}
	public void setRegDeviceCd(String regDeviceCd) {
		this.regDeviceCd = regDeviceCd;
	}
	public String getRegDateTime() {
		return regDateTime;
	}
	public void setRegDateTime(String regDateTime) {
		this.regDateTime = regDateTime;
	}
	public String getRegDateTimeSvr() {
		return regDateTimeSvr;
	}
	public void setRegDateTimeSvr(String regDateTimeSvr) {
		this.regDateTimeSvr = regDateTimeSvr;
	}
	public MultipartFile[] getUploadedImage() {
		return uploadedImage;
	}
	public void setUploadedImage(MultipartFile[] uploadedImage) {
		this.uploadedImage = uploadedImage;
	}
	public void setRtSeq(String rtSeq) {
		this.rtSeq = rtSeq;
	}
	public String getRt() {
		return rt;
	}
	public void setRt(String rt) {
		this.rt = rt;
	}
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	public String getIfmmId() {
		return ifmmId;
	}
	public void setIfmmId(String ifmmId) {
		this.ifmmId = ifmmId;
	}
	public String getIfmmName() {
		return ifmmName;
	}
	public void setIfmmName(String ifmmName) {
		this.ifmmName = ifmmName;
	}
	public String getIfmmDob() {
		return ifmmDob;
	}
	public void setIfmmDob(String ifmmDob) {
		this.ifmmDob = ifmmDob;
	}
	public String getIfmmAdminNy() {
		return ifmmAdminNy;
	}
	public void setIfmmAdminNy(String ifmmAdminNy) {
		this.ifmmAdminNy = ifmmAdminNy;
	}
	public String getIfmmRating() {
		return ifmmRating;
	}
	public void setIfmmRating(String ifmmRating) {
		this.ifmmRating = ifmmRating;
	}
	public String getIfmmGender() {
		return ifmmGender;
	}
	public void setIfmmGender(String ifmmGender) {
		this.ifmmGender = ifmmGender;
	}
	public String getIfmmEmail() {
		return ifmmEmail;
	}
	public void setIfmmEmail(String ifmmEmail) {
		this.ifmmEmail = ifmmEmail;
	}
	public String getIfmmTel() {
		return ifmmTel;
	}
	public void setIfmmTel(String ifmmTel) {
		this.ifmmTel = ifmmTel;
	}
	public String getIfmmZipcode() {
		return ifmmZipcode;
	}
	public void setIfmmZipcode(String ifmmZipcode) {
		this.ifmmZipcode = ifmmZipcode;
	}
	public String getIfmmAddress() {
		return ifmmAddress;
	}
	public void setIfmmAddress(String ifmmAddress) {
		this.ifmmAddress = ifmmAddress;
	}
	public String getIfmmDetailedAddress() {
		return ifmmDetailedAddress;
	}
	public void setIfmmDetailedAddress(String ifmmDetailedAddress) {
		this.ifmmDetailedAddress = ifmmDetailedAddress;
	}
	public Date getIfmmRegDate() {
		return ifmmRegDate;
	}
	public void setIfmmRegDate(Date ifmmRegDate) {
		this.ifmmRegDate = ifmmRegDate;
	}
	public Date getIfmmModDate() {
		return ifmmModDate;
	}
	public void setIfmmModDate(Date ifmmModDate) {
		this.ifmmModDate = ifmmModDate;
	}
	public String getIfmmDelNy() {
		return ifmmDelNy;
	}
	public void setIfmmDelNy(String ifmmDelNy) {
		this.ifmmDelNy = ifmmDelNy;
	}
	public String getIfmmPwd() {
		return ifmmPwd;
	}
	public void setIfmmPwd(String ifmmPwd) {
		this.ifmmPwd = ifmmPwd;
	}
	public String getIfmmRegMod() {
		return ifmmRegMod;
	}
	public void setIfmmRegMod(String ifmmRegMod) {
		this.ifmmRegMod = ifmmRegMod;
	}
	
	
	
	

	/* public static List<Member> cachedCodeArrayList = new ArrayList<Member>(); */
	
	
	
 
}
