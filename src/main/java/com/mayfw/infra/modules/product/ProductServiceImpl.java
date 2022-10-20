package com.mayfw.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ProductServiceImpl implements ProductService {
	
	
	@Autowired
	ProductDao dao;
	
	@Override
	public List<Product> selectList(ProductVo vo) throws Exception {
		List<Product> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public int insert(Product dto) throws Exception {
		int result = dao.insert(dto);
		return result;
	}
	
	@Override
	public Product selectOne(ProductVo vo) throws Exception {
		Product result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public Product selectOneMember(ProductVo vo) throws Exception {
		Product result = dao.selectOneMember(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int selectOneCount(ProductVo vo) throws Exception {
		
		return dao.selectOneCount(vo);
	}
}
