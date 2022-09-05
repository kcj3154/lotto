package com.mayfw.infra.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mayfw.infra.modules.code.CodeMapper";
	
//	public List<Code> selectList(CodeVo vo) { return sqlSession.selectList(namespace + ".selectList", ""); }
	
	public List<Code> selectList(CodeVo vo) {
//		List<Code> list = sqlSession.selectList(namespace + ".selectList", vo);
		List<Code> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}
}
