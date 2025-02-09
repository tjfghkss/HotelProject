package order.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import hotel.model.Hotel;
import member.model.Member;
import seller.model.Seller;

//@Component("myMainOrderDao")
//@Repository
@Component
public class MainOrderDao {
	private String namespace = "order.model.MainOrder";
	
	
	public MainOrderDao() {
		System.out.println("===============ccccc=============");
		System.out.println("===============ccccc=============");
		System.out.println("===============ccccc=============");
		System.out.println("===============ccccc=============");
		System.out.println("===============ccccc=============");
	}
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;


	public int insertOrders(MainOrder mainorder) {
		// TODO Auto-generated method stub
		mainorder.setO_totalpeople("3");
		int cnt = sqlSessionTemplate.insert(namespace + ".insertOrders",mainorder);
		return cnt;
	}


	public int getMaxNum() {
		// TODO Auto-generated method stub
		int cnt =sqlSessionTemplate.selectOne(namespace +".getMaxNum");
		return cnt;
	}


	public List<MainOrder> getSellerOrders() {
		// TODO Auto-generated method stub
		List<MainOrder> mod = sqlSessionTemplate.selectList(namespace +".getSellerOrders");
		return mod;
	}


	public List<MainOrder> getMemberOrders(Member login) {
		// TODO Auto-generated method stub
		List<MainOrder> md = sqlSessionTemplate.selectList(namespace + ".getMemberOrders",login);
		return md;
	}


	public int updateCheckin(int onum) {
		// TODO Auto-generated method stub
		int cnt = sqlSessionTemplate.update(namespace+ ".updateChecker",onum);
		return cnt;
	}
	
	public void deleteMOrder(int o_num) {
		sqlSessionTemplate.delete(namespace+".deleteMOrder",o_num);

	}


	public void checkReview(MainOrder mainorder) {
		sqlSessionTemplate.update(namespace+ ".checkReview", mainorder);
		
	}


	

	
	

}
