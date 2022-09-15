package com.mayfw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mayfw.infra.modules.codegroup.CodeGroup;
import com.mayfw.infra.modules.codegroup.CodeGroupVo;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {


	@Autowired
	CodeServiceImpl service;
	

	@RequestMapping(value = "codeList")
	public String codeList(Model model, @ModelAttribute("vo") CodeVo vo) throws Exception {
		
		System.out.println("vo.getShId(): " + vo.getShId());
		System.out.println("vo.getShName(): " + vo.getShName());
		System.out.println("vo.getShUseNy(): " + vo.getShUseNy());
		System.out.println("vo.getShDate(): " + vo.getShDate());
		System.out.println("vo.getStartDate(): " + vo.getStartDate());
		System.out.println("vo.getEndDate(): " + vo.getEndDate());

		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		
		return "infra/code/xdmin/codeList";
	}
	
	@RequestMapping(value = "codeForm")
	public String codeForm(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSseq(): " + vo.getSseq());
		Code result = service.selectOne(vo);
		List<Code> list = service.selectListA();
		model.addAttribute("list", list);
		model.addAttribute("item", result);
		return "infra/code/xdmin/codeForm";
	}
	
	
	
	/*
	 * @RequestMapping(value = "codeRegForm") public String codeRegForm() throws
	 * Exception { return "infra/code/xdmin/codeRegForm"; }
	 */
	
	@RequestMapping(value = "codeInst")
	public String codeInst(Code dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		System.out.println(dto.getSeq());
		
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeUpdt")
	public String codeUpdt(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/code/codeList";
	}
}