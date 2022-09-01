package com.mayfw.infra.modules.code;

import java.util.List;

import com.mayfw.infra.modules.code.Code;

public interface CodeService {

	public List<Code> selectList() throws Exception; 
}
