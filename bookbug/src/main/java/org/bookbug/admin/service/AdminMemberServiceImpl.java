package org.bookbug.admin.service;

import javax.inject.Inject;

import org.bookbug.admin.persistence.AdminMemberPersistenceImpl;
import org.bookbug.user.vo.MemberVO;
import org.springframework.stereotype.Service;

@Service
public class AdminMemberServiceImpl implements AdminMemberService{
	
	@Inject
	private AdminMemberPersistenceImpl persistence;
	
	
	@Override
	public int registerMember(MemberVO mvo) {
		return persistence.registerMember(mvo); 
	}

	
}
