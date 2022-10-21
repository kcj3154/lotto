package com.mayfw.infra.modules.code;

import java.util.List;



public interface CodeService {

	public List<Code> selectList(CodeVo vo ) throws Exception; 
	public List<Code> selectListA() throws Exception; 
	public Code selectOne(CodeVo vo) throws Exception; 
	public int insert(Code dto) throws Exception;
	public int update(Code dto) throws Exception;
}