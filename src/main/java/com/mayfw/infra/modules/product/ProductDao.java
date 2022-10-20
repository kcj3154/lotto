package com.mayfw.infra.modules.product;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mayfw.infra.modules.product.ProductMapper";
	
	public List<Product> selectList(ProductVo vo){
		List<Product> list = sqlSession.selectList(namespace+ ".selectList", vo);
		return list;
	}
	
	public int insert(Product dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		return result;
	}
	
	public Product selectOne(ProductVo vo) {
		Product result = sqlSession.selectOne(namespace + ".selectOne", vo);
		return result;
	}
	
	public Product selectOneMember(ProductVo vo) {
		Product result = sqlSession.selectOne(namespace + ".selectOneMember", vo);
		return result;
	}
	
	public int selectOneCount(ProductVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	
		

	
}
