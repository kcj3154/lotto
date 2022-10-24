package com.mayfw.infra.modules.product;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mayfw.infra.modules.member.Member;

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
	
	
	//상품 업로드
	public int productUploaded(Product dto) {return sqlSession.insert(namespace + ".productUploaded", dto);}


	
}
