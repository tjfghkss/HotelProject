package hotel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class HotelInsertController {
	
	private final String command="/insert.ho";
	private final String getPage="hotelInsertForm";
	
	@RequestMapping(command)
	public String insert(HttpSession session) {
		String ha="hihihihih";
		return getPage;
	}
}
