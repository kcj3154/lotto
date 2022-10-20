package com.mayfw.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mayfw.infra.modules.codegroup.CodeGroupVo;

@Controller
public class ProductController {
	
	@Autowired
	ProductServiceImpl service;
	
	@RequestMapping(value = "/productView")
	public String ProductView(Model model, ProductVo vo) throws Exception {
		List<Product> list = service.selectList(vo);
		Product item = service.selectOne(vo);
		model.addAttribute("list", list).addAttribute("item", item);
		
		return "infra/product/productView";
		
	}
	
	@RequestMapping(value = "/productOrder")
	public String ProductOrder(Model model, ProductVo vo) throws Exception {
		List<Product> list = service.selectList(vo);
		Product item = service.selectOne(vo);
		model.addAttribute("rt", service.selectOneMember(vo));
		model.addAttribute("list", list).addAttribute("item", item);;
		
		return "infra/product/productOrder";
		
	}
	
	public void setSearchAndPaging(ProductVo vo) throws Exception{
			vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home(Model model, @ModelAttribute("vo") ProductVo vo) throws Exception{
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<Product> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "/home";
	}
	
	
	
	@RequestMapping(value = "/")
	public String indexView() throws Exception {
		
		return "/index/indexView";
	}
	
	
	
	

}
