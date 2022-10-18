package com.mayfw.infra.modules.coupang;

import java.util.List;



public interface CoupangService {
	
	public List<Coupang> selectList(CoupangVo vo) throws Exception;
	public int insert(Coupang dto) throws Exception;
	public Coupang selectOne(CoupangVo vo) throws Exception;
	public int selectOneCount(CoupangVo vo) throws Exception;
}
