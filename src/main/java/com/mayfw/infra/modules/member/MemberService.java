package com.mayfw.infra.modules.member;

import java.util.List;

import com.mayfw.infra.modules.member.Member;
import com.mayfw.infra.modules.member.Member;

public interface MemberService {
	public List<Member> selectListService(MemberVo vo) throws Exception;

	List<Member> selectList(MemberVo vo) throws Exception;
	public int insert(Member dto) throws Exception;
	public Member selectOne(MemberVo vo) throws Exception;
	public int update(Member dto) throws Exception;
	public int delete(Member dto) throws Exception;
	public int selectOneCount(MemberVo vo) throws Exception;
}
