package com.mayfw.infra.common.base;

import org.springframework.web.multipart.MultipartFile;

public class Base {
	
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
		private String modDateTime;
		private String regDateTimeSvr;
		private MultipartFile[] uploadedImage;
		private MultipartFile[] uploadedImage2;
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
		public String getModDateTime() {
			return modDateTime;
		}
		public void setModDateTime(String modDateTime) {
			this.modDateTime = modDateTime;
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
		public MultipartFile[] getUploadedImage2() {
			return uploadedImage2;
		}
		public void setUploadedImage2(MultipartFile[] uploadedImage2) {
			this.uploadedImage2 = uploadedImage2;
		}
		
	
	
}
