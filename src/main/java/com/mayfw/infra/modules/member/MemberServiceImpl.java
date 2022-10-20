package com.mayfw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mayfw.infra.common.util.UtilSecurity;
import com.mayfw.infra.common.util.UtilUpload;



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
			return dao.selectList(vo);
		}

		@Override
		public List<Member> selectList(MemberVo vo) throws Exception {
			List<Member> list = dao.selectList(vo);
			return list;
		}
		
		@Override
		public int insert(Member dto) throws Exception {
//			int result = dao.insert(dto);
//			System.out.println("service result: " + result);
//			return result;
			
			int j = 0;
			System.out.println();
			for (MultipartFile multipartFile : dto.getUploadedImage()) {
				if (!multipartFile.isEmpty()) {
					String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
					UtilUpload.upload(multipartFile, pathModule, dto);
//					dto.setType(2);
//					dto.setDefaultNy(1);
					dto.setSort(j + 1);
					dto.setPseq(dto.getSeq());
					dao.testUploaded(dto);
				}
				j++;
			}
			
			int result = 0;
			return result;
		}
		
		
		
		@Override
		public Member selectOne(MemberVo vo) throws Exception {
			Member result = dao.selectOne(vo);
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

		public int selectOneIdCheck(Member dto) {
			
			return dao.selectOneIdCheck(dto);
		}
		
		@Override
		public int signup(Member dto) throws Exception { 
		 	dto.setIfmmPwd(UtilSecurity.encryptSha256(dto.getIfmmPwd()));    	
			return dao.insert(dto);
		}
		
		/*
		 * @PostConstruct public void selectListCachedCodeArrayList() throws Exception {
		 * List<Member> codeListFromDb = (ArrayList<Member>)
		 * dao.selectListCachedCodeArrayList(); // codeListFromDb = (ArrayList<Code>)
		 * dao.selectListCachedCodeArrayList(); Member.cachedCodeArrayList.clear();
		 * Member.cachedCodeArrayList.addAll(codeListFromDb);
		 * System.out.println("cachedCodeArrayList: " +
		 * Member.cachedCodeArrayList.size() + " chached !"); }
		 */
		
		/*
		 * public static List<Member> selectListCachedCode(String seq) throws Exception
		 * { List<Member> rt = new ArrayList<Member>(); for(Member codeRow :
		 * Member.cachedCodeArrayList) { if (codeRow.getSeq().equals(seq)) {
		 * rt.add(codeRow); } else { // by pass } } return rt; }
		 */

		/*
		 * public static String selectOneCachedCode(int member) throws Exception {
		 * String rt = ""; for(Member codeGroupRow : Member.cachedCodeArrayList) { if
		 * (codeRow.getSeq().equals(Integer.toString(member))) { rt =
		 * codeRow.getCodeGroup(); } else { // by pass } } return rt; }
		 */
		
		
		/*
		 * public static void clear() throws Exception {
		 * Member.cachedCodeArrayList.clear(); }
		 */
		
	
		
		@Override
		public Member selectOneId(Member dto) throws Exception {
			return dao.selectOneId(dto);
		}

		@Override
		public Member selectOneLogin(Member dto) throws Exception {
			return dao.selectOneLogin(dto);
		}
		

}


