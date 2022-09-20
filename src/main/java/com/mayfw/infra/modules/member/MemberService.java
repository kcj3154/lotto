package com.mayfw.infra.modules.member;

import java.util.List;

public interface MemberService {
	public List<Member> selectListService(MemberVo vo) throws Exception;

	List<Member> selectList(MemberVo vo) throws Exception;
}
