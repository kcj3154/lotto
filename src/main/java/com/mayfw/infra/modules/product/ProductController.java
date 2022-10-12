package com.mayfw.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	
	@Autowired
	ProductServiceImpl service;
	
	@RequestMapping(value = "/productView")
	public String ProductView(Model model, ProductVo vo) throws Exception {
		List<Product> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/product/productView";
		
	}
	
	

}
