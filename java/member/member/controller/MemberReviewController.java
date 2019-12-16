package member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import member.model.Member;
import member.model.Review;
import member.model.ReviewDao;



@Controller
public class MemberReviewController {
	public final String command = "review.mem";
	/*public final String getPage = "";*/
	
	@Autowired
	private ReviewDao rvDao;

	@ResponseBody
	@RequestMapping(value=command, method=RequestMethod.POST)
	public void doAction(HttpSession session, Review review) {
		Member login = (Member) session.getAttribute("loginfo");
		
		System.out.println(login.getM_num());

		System.out.println(review.getO_num());
		System.out.println(review.getR_comment());
		System.out.println(review.getR_num());
		System.out.println(review.getR_star());
		
		
		review.setM_num(login.getM_num());
		review.setR_checker(1);
		System.out.println(review.getM_num());
		System.out.println(review);
		
		rvDao.writeReview(review);
	}
	
}
