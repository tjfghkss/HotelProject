package member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.model.Member;
import order.model.Order;
import order.model.OrderDao;

@Controller
public class MemberReservationController {
	private final String command = "reserve.mem";
	private final String goPage = "memberReservationForm";
	
	@Autowired
	OrderDao oDao;
	
	@RequestMapping(command)
	public String reservList(HttpSession session, Model model) {
		
		Member loginfo = (Member)session.getAttribute("loginfo");
		
		int m_num = loginfo.getM_num();
		System.out.println(m_num);
		
		List<Order> lists = oDao.getOrderList(m_num);
		System.out.println("lists.size() : "+lists.size());
		System.out.println(lists);
		
		model.addAttribute("lists", lists);

		return goPage;
		
	}
}
