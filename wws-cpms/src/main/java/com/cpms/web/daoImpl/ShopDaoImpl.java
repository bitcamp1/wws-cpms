package com.cpms.web.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cpms.web.common.SqlSessionFactoryManager;
import com.cpms.web.dao.ShopDao;
import com.cpms.web.data.ShopJusoData;
import com.cpms.web.dto.EmployeeDto;
import com.cpms.web.dto.ShopDto;
@Repository
public class ShopDaoImpl implements ShopDao{
	SqlSession session = SqlSessionFactoryManager.getSqlSessionFactory().openSession();
	@Override
	public int countSubShops() throws Exception {
		return session.selectOne("ShopMapper.countSubShops");
	}

	@Override
	public List<ShopDto> selectAllSubShops(HashMap<String, Integer> paramMap)
			throws Exception {
		
		return session.selectList("ShopMapper.selectAllSubShops",paramMap);
	}

	@Override
	public int countEmployees() throws Exception {
		return session.selectOne("ShopMapper.countEmployees");
		
	}

	@Override
	public List<EmployeeDto> selectAllEmployees(
			HashMap<String, Integer> paramMap) throws Exception {
		return session.selectList("ShopMapper.selectAllEmployees",paramMap);
	}

	@Override
	public int selectShopSeqByName(String shopName) throws Exception {
		return session.selectOne("ShopMapper.selectShopSeqByName",shopName);
	}

	@Override
	public int existsShopSeq(ShopDto shopDto) {
		return session.selectOne("ShopMapper.existsShopSeq",shopDto);
	}

	@Override
	public ShopDto getShopBySeq(int shopSeq) throws Exception {
		return session.selectOne("ShopMapper.getShopBySeq",shopSeq);
	}

	@Override
	public ShopJusoData getShopDetail(int id) throws Exception {
		System.out.println("넘어온 id값:"+id);
		return session.selectOne("ShopMapper.getShopDetail",id);
	}


}
