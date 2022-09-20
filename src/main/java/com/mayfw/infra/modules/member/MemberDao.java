package com.mayfw.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mayfw.infra.modules.member.memberMapper";
			
	public List<Member> selectListDao(MemberVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}

	public List<Member> selectList(MemberVo vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
