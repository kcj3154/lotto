package com.mayfw.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

//import com.mayfw.infra.modules.member.Member;
//import com.mayfw.infra.modules.member.MemberVo;

@Repository
public class MemberDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mayfw.infra.modules.member.memberMapper";
			
	/*
	 * public List<Member> selectListDao(MemberVo vo) { return
	 * sqlSession.selectList(namespace + ".selectList", vo); }
	 */

	public List<Member> selectList(MemberVo vo) {
		List<Member> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}
	
	public int insert(Member dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public Member selectOne(MemberVo vo) {
		Member result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int update(Member dto) {return sqlSession.update(namespace + ".update", dto); }
	
	public int delete(Member dto) {return sqlSession.delete(namespace + ".delete", dto); }
	
	public int selectOneCount(MemberVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	
//	for cache
	public List<Member> selectListCachedCodeArrayList(){ return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); }

	public int selectOneIdCheck(Member dto) {return sqlSession.selectOne(namespace + ".selectOneIdCheck", dto);}
		

		
	}



