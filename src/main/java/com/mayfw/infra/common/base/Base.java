package com.mayfw.infra.common.base;

import org.springframework.web.multipart.MultipartFile;

public class Base {
	
	private Integer type;
	private Integer defaultNy;
	private Integer sort;
	private String path;
	private String originalName;
	private String uuidName;
	private String ext;
	private long size;
	private MultipartFile[] uploadedImage;
	private MultipartFile[] uploadedImage2;
	private String pseq;
	private String tableName;
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Integer getDefaultNy() {
		return defaultNy;
	}
	public void setDefaultNy(Integer defaultNy) {
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
	public long getSize() {
		return size;
	}
	public void setSize(long size) {
		this.size = size;
	}
	public MultipartFile[] getUploadedImage() {
		return uploadedImage;
	}
	public void setUploadedImage(MultipartFile[] uploadedImage) {
		this.uploadedImage = uploadedImage;
	}
	public MultipartFile[] getUploadedImage2() {
		return uploadedImage2;
	}
	public void setUploadedImage2(MultipartFile[] uploadedImage2) {
		this.uploadedImage2 = uploadedImage2;
	}
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pseq) {
		this.pseq = pseq;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	
	
}
