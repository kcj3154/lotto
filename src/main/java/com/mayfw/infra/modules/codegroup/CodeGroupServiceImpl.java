package com.mayfw.infra.modules.codegroup;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class CodeGroupServiceImpl implements CodeGroupService {
	
	
	@Autowired
	CodeGroupDao dao;
	
//	@Override
//	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
//		return dao.selectList(vo);
//	}
	
	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
		List<CodeGroup> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public int insert(CodeGroup dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception {
		CodeGroup result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}
	

	@Override
	public int update(CodeGroup dto) throws Exception {
		int result = dao.update(dto);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int selectOneCount(CodeGroupVo vo) throws Exception {
		
		return dao.selectOneCount(vo);
	}
	
	@Override
	public int delete(CodeGroupVo vo) throws Exception {
		int result = dao.delete(vo);
		return result;
	}
	
	@Override
	public int uelete(CodeGroup dto) throws Exception {
		setRegMod(dto);
		return dao.uelete(dto);
	}
	
	private void setRegMod(CodeGroup dto) {
		// TODO Auto-generated method stub
		
	}

	@PostConstruct
	public void selectListCachedCodeGroupArrayList() throws Exception {
		List<CodeGroup> codeGroupListFromDb = (ArrayList<CodeGroup>) dao.selectListCachedCodeGroupArrayList();
//		codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
		CodeGroup.cachedCodeGroupArrayList.clear(); 
		CodeGroup.cachedCodeGroupArrayList.addAll(codeGroupListFromDb);
		System.out.println("cachedCodeGroupArrayList: " + CodeGroup.cachedCodeGroupArrayList.size() + " chached !");
	}
	
	public static List<CodeGroup> selectListCachedCodeGroup(String seq) throws Exception {
		List<CodeGroup> rt = new ArrayList<CodeGroup>();
		for(CodeGroup codeGroupRow : CodeGroup.cachedCodeGroupArrayList) {
			if (codeGroupRow.getSeq().equals(seq)) {
				rt.add(codeGroupRow);
			} else {
				// by pass
			}
		}
		return rt;
	}

	public static String selectOneCachedCodeGroup(int codeGroup) throws Exception {
		String rt = "";
		for(CodeGroup codeGroupRow : CodeGroup.cachedCodeGroupArrayList) {
			if (codeGroupRow.getSeq().equals(Integer.toString(codeGroup))) {
				rt = codeGroupRow.getCodeGroup();
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	
	public static void clear() throws Exception {
		CodeGroup.cachedCodeGroupArrayList.clear();
	}

	
	
}
