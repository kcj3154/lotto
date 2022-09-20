package com.mayfw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mayfw.infra.modules.codegroup.CodeGroup;
import com.mayfw.infra.modules.codegroup.CodeGroupServiceImpl;
import com.mayfw.infra.modules.codegroup.CodeGroupVo;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping(value = "memberList")
	public String codeGroupList(Model model, @ModelAttribute("vo") MemberVo vo) throws Exception {
		
		System.out.println("vo.getShAdminNy(): " + vo.getShAdminNy());
		System.out.println("vo.getShDate(): " + vo.getShDate());
		System.out.println("vo.getStartDate(): " + vo.getStartDate());
		System.out.println("vo.getEndDate(): " + vo.getEndDate());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShValue(): " + vo.getShValue());
		
		/*
		 * setSearchAndPaging(vo);
		 * 
		 * if (vo.getTotalRows() > 0) { List<Member> list = service.selectList(vo);
		 * model.addAttribute("list", list); }
		 */
		
		return "infra/codegroup/xdmin/codeGroupList";
	}

	

		

		
			
		
}

