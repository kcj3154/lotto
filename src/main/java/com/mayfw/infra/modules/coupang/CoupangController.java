package com.mayfw.infra.modules.coupang;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CoupangController {
	
	@Autowired
	CoupangServiceImpl service;
	
	@RequestMapping(value = "/productView")
	public String ProductView(Model model, CoupangVo vo) throws Exception {
		List<Coupang> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/product/productView";
		
	}
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home(Model model, Coupang dto, @ModelAttribute("vo") CoupangVo vo){
		
		return "/home";
	}
	
	@RequestMapping(value = "/")
	public String indexView() throws Exception {
		
		return "/index/indexView";
	}
	
	
	
	

}
