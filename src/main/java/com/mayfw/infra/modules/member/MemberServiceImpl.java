package com.mayfw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mayfw.infra.modules.codegroup.CodeGroup;
import com.mayfw.infra.modules.codegroup.CodeGroupVo;

@Service
public class MemberServiceImpl implements MemberService{
		@Autowired
		MemberDao dao;
		
		@Override
		public List<Member> selectListService(MemberVo vo) throws Exception {
			
			/*
			 * vo.setSh_start_date(vo.getSh_start_date() + " 00:00:00");
			 * vo.setSh_end_date(vo.getSh_end_date() + " 23:59:59");
			 */
			return dao.selectListDao(vo);
		}

		@Override
		public List<Member> selectList(MemberVo vo) throws Exception {
			List<Member> list = dao.selectList(vo);
			return list;
		}
		

}
