package com.mayfw.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "memberList")
	public String memberList(Model model, @ModelAttribute("vo") MemberVo vo) throws Exception {
		
		System.out.println("vo.getShAdminNy(): " + vo.getShAdminNy());
		System.out.println("vo.getShDate(): " + vo.getShDate());
		System.out.println("vo.getStartDate(): " + vo.getStartDate());
		System.out.println("vo.getEndDate(): " + vo.getEndDate());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShValue(): " + vo.getShValue());
		
		
		
		setSearchAndPaging(vo);
		
//		if (vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
//		}
		
		return "infra/member/xdmin/memberList";
	}
	
public void setSearchAndPaging(MemberVo vo) throws Exception{
		
		vo.setShAdminNy(vo.getShAdminNy() == null ? "1" : vo.getShAdminNy());
//		vo.setShDate(vo.getShDate() == null ? "6" : vo.getShDate());
//		vo.setShId(vo.getShId() == null ? "2" : vo.getShId());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		
		vo.setParamsPaging(service.selectOneCount(vo));
}
	
	@RequestMapping(value = "memberInst")
	public String memberInst(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {

		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		System.out.println(dto.getSeq());
		vo.setShSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberForm";
	}
	
	/*
	 * @RequestMapping(value = "codeGroupView") public String
	 * codeGroupView(CodeGroupVo vo, Model model) throws Exception { CodeGroup
	 * result = service.selectOne(vo); model.addAttribute("item", result); return
	 * "infra/codegroup/xdmin/codeGroupForm"; }
	 */
	
	@RequestMapping(value = "memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
//		System.out.println("vo.getSseq(): " + vo.getShSeq());
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/member/xdmin/memberForm";
	}
	
	@RequestMapping(value = "memberUpdt")
	public String memberUpdt(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberList";
	}
	
	/*
	 * @RequestMapping(value = "codeGroupDele") public String
	 * codeGroupDele(CodeGroupVo vo, CodeGroup dto, RedirectAttributes
	 * redirectAttributes) throws Exception {
	 * 
	 * service.delete(dto); redirectAttributes.addFlashAttribute("vo", vo); return
	 * "redirect:/codeGroup/codeGroupList"; }
	 */
	
	
	@RequestMapping(value = "signup")
	public String signup() throws Exception {
		return "infra/member/user/signup";
	

	}
	
	@RequestMapping(value = "login")
	public String login() throws Exception {
		return "infra/member/user/login";
		
	}
	
	@RequestMapping(value = "productView")
	public String productView() throws Exception {
		return "infra/member/user/productView";
		
	}
	
	@RequestMapping(value = "productOrder")
	public String productOrder() throws Exception {
		return "infra/member/user/productOrder";
		
	}
	
	@ResponseBody
	@RequestMapping(value = "checkId")
	public Map<String, Object> checkId(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOneIdCheck(dto);
		
		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}

		
			
		
}

