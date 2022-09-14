package com.mayfw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mayfw.infra.modules.codegroup.CodeGroup;

@Service
public class CodeServiceImpl implements CodeService {
	
	@Autowired
	CodeDao dao;
	
//	@Override
//	public List<Code> selectList(CodeVo vo) throws Exception {
//		return dao.selectList(vo);
//	}
	
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		List<Code> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public Code selectListA(CodeVo vo) throws Exception {
		Code list = dao.selectListA(vo);
		return list;
	}
	
	@Override
	public int insert(Code dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int update(Code dto) throws Exception {
		int result = dao.update(dto);
		System.out.println("service result: " + result);
		return result;
	}
	
	

}