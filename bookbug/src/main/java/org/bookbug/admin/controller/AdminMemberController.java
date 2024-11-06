package org.bookbug.admin.controller;

import javax.inject.Inject;

import org.bookbug.admin.persistence.AdminMemberPersistenceImpl;
import org.bookbug.user.vo.MemberVO;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/member/*")
public class AdminMemberController {

	@Inject
	private AdminMemberPersistenceImpl service;
	
	@Inject
	private BCryptPasswordEncoder encoder;
	
	// 회원등록 화면 처리
	@GetMapping("/register")
	public void registerMember() {}
	
	// 회원등록 데이터 처리
	@PostMapping("/register")
	public String registerMember(MemberVO mvo, Model model) throws Exception {
		int result = service.registerMember(mvo);
		model.addAttribute("member", mvo);
		String url = null;
		if(result==1) {
			//url = "/admin/confirm/login";
			url = "/admin/member/list";
		}else {
			url = "/admin/member/register";
		}
		return url;
	}
}
