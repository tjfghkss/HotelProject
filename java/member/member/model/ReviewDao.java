package member.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myReview")
public class ReviewDao {
	private String namespace = "member.model.Review";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	

	public void writeReview(Review review) {
		sqlSessionTemplate.insert(namespace+".writeReview", review);
		
	}
	
}
