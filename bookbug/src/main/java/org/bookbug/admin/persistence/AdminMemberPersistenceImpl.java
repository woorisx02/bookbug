package org.bookbug.admin.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.bookbug.user.vo.MemberVO;

public class AdminMemberPersistenceImpl implements AdminMemberPersistence{

	@Inject
	private SqlSession sql;
	
	private static String namespace="org.admin.mappers.member";
	
	@Override
	public int registerMember(MemberVO mvo) {
		return sql.insert(namespace+".register", mvo);
	}

}
