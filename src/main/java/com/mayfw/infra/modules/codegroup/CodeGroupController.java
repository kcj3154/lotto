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
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroup dto) throws Exception {

		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		System.out.println(dto.getSeq());

		return "redirect:/codeGroup/codeGroupList";
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
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/codeGroup/codeGroupList";
	}
}
