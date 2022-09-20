package com.mayfw.infra.modules.member;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

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
		
		@Override
		public int insert(Member dto) throws Exception {
			int result = dao.insert(dto);
			System.out.println("service result: " + result);
			return result;
		}
		
		@Override
		public Member selectOne(MemberVo vo) throws Exception {
			CodeGroup result = dao.selectOne(vo);
			System.out.println("service result: " + result);
			return result;
		}
		

		@Override
		public int update(Member dto) throws Exception {
			int result = dao.update(dto);
			System.out.println("service result: " + result);
			return result;
		}
		
		@Override
		public int selectOneCount(MemberVo vo) throws Exception {
			
			return dao.selectOneCount(vo);
		}
		
		@Override
		public int delete(Member dto) throws Exception {
			int result = dao.delete(dto);
			return result;
		}
		
		@PostConstruct
		public void selectListCachedCodeArrayList() throws Exception {
			List<Member> codeListFromDb = (ArrayList<Member>) dao.selectListCachedCodeArrayList();
//			codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
			CodeGroup.cachedCodeArrayList.clear(); 
			CodeGroup.cachedCodeArrayList.addAll(codeListFromDb);
			System.out.println("cachedCodeArrayList: " + CodeGroup.cachedCodeArrayList.size() + " chached !");
		}
		
		public static List<Member> selectListCachedCodeGroup(String seq) throws Exception {
			List<Member> rt = new ArrayList<Member>();
			for(Member codeRow : CodeGroup.cachedCodeArrayList) {
				if (codeRow.getSeq().equals(seq)) {
					rt.add(codeRow);
				} else {
					// by pass
				}
			}
			return rt;
		}

		public static String selectOneCachedCode(int member) throws Exception {
			String rt = "";
			for(Member codeGroupRow : Member.cachedCodeArrayList) {
				if (codeRow.getSeq().equals(Integer.toString(member))) {
					rt = codeRow.getCodeGroup();
				} else {
					// by pass
				}
			}
			return rt;
		}
		
		
		public static void clear() throws Exception {
			Member.cachedCodeArrayList.clear();
		}


}
