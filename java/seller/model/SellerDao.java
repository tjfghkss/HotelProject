package seller.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("mySeller")
public class SellerDao {
	private final String namespace = "seller.model.Seller";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public SellerDao() {
		
		System.out.println("seller dao passing through");
	}

	public int insertData(Seller seller) {
		// TODO Auto-generated method stub
		int cnt = sqlSessionTemplate.insert(namespace + ".insertData",seller);
		return cnt;
	}
	
	
	
	

}
