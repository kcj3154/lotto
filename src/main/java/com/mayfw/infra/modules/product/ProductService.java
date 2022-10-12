package com.mayfw.infra.modules.product;

import java.util.List;

public interface ProductService {
	
	public List<Product> selectList(ProductVo vo) throws Exception;
	public int insert(Product dto) throws Exception;
	public Product selectOne(ProductVo vo) throws Exception;

}
