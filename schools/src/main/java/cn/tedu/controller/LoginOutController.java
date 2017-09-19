package cn.tedu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class LoginOutController {
	@RequestMapping("loginout")
	public String loginout(HttpSession session){
		session.removeAttribute("userSession");
		return "login";
	}
}
