package com.mayfw.infra.modules.coupang;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CoupangDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mayfw.infra.modules.coupang.CoupangMapper";
	
	public List<Coupang> selectList(CoupangVo vo){
		List<Coupang> list = sqlSession.selectList(namespace+ ".selectList", vo);
		return list;
	}
	
	public int insert(Coupang dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		return result;
	}
	
	public Coupang selectOne(CoupangVo vo) {
		Coupang result = sqlSession.selectOne(namespace + ".selectOne", vo);
		return result;
	}
	
	public int selectOneCount(CoupangVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
		

	
}
