package com.mayfw.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {
	

	@Autowired
	CodeGroupServiceImpl service;
	

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model, @ModelAttribute("vo") CodeGroupVo vo) throws Exception {
		
		System.out.println("vo.getShId(): " + vo.getShId());
		System.out.println("vo.getShName(): " + vo.getShName());
		System.out.println("vo.getShUseNy(): " + vo.getShUseNy());
		System.out.println("vo.getShDate(): " + vo.getShDate());
		System.out.println("vo.getStartDate(): " + vo.getStartDate());
		System.out.println("vo.getEndDate(): " + vo.getEndDate());
		
		setSearchAndPaging(vo);
		
		if (vo.getTotalRows() > 0) {
			List<CodeGroup> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	public void setSearchAndPaging(CodeGroupVo vo) throws Exception{
		
		vo.setShUseNy(vo.getShUseNy() == null ? "1" : vo.getShUseNy());
//		vo.setShDate(vo.getShDate() == null ? "6" : vo.getShDate());
//		vo.setShId(vo.getShId() == null ? "2" : vo.getShId());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		
		vo.setParamsPaging(service.selectOneCount(vo));
}
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {

		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		System.out.println(dto.getSeq());
		vo.setShSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codeGroup/codeGroupForm";
	}
	
	/*
	 * @RequestMapping(value = "codeGroupView") public String
	 * codeGroupView(CodeGroupVo vo, Model model) throws Exception { CodeGroup
	 * result = service.selectOne(vo); model.addAttribute("item", result); return
	 * "infra/codegroup/xdmin/codeGroupForm"; }
	 */
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSseq(): " + vo.getSseq());
		CodeGroup item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/codeGroup/codeGroupList";
	}
}
