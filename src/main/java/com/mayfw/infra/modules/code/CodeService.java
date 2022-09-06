package com.mayfw.infra.modules.code;

import java.util.List;

public interface CodeService {

	public List<Code> selectList(CodeVo vo ) throws Exception; 
	public List<Code> selectListA(CodeVo vo) throws Exception; 
	public int insert(Code dto) throws Exception;
}