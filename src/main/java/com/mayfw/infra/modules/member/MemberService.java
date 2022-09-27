package com.mayfw.infra.modules.member;

import java.util.List;

public interface MemberService {
	public List<Member> selectListService(MemberVo vo) throws Exception;

	List<Member> selectList(MemberVo vo) throws Exception;
	public int insert(Member dto) throws Exception;
	public Member selectOne(MemberVo vo) throws Exception;
	public int update(Member dto) throws Exception;
	public int delete(Member dto) throws Exception;
	public int selectOneCount(MemberVo vo) throws Exception;
	public int selectOneIdCheck(Member dto) throws Exception;
	
	public int signup(Member dto) throws Exception;
	public Member selectOneId(Member dto) throws Exception;
	public Member selectOneLogin(Member dto) throws Exception;
	
	
}
