package com.mayfw.infra.modules.coupang;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CoupangServiceImpl implements CoupangService {
	
	
	@Autowired
	CoupangDao dao;
	
	@Override
	public List<Coupang> selectList(CoupangVo vo) throws Exception {
		List<Coupang> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public int insert(Coupang dto) throws Exception {
		int result = dao.insert(dto);
		return result;
	}
	
	@Override
	public Coupang selectOne(CoupangVo vo) throws Exception {
		Coupang result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int selectOneCount(CoupangVo vo) throws Exception {
		
		return dao.selectOneCount(vo);
	}
}
