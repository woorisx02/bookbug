package org.bookbug.admin.persistence;

import org.bookbug.user.vo.MemberVO;

public interface AdminMemberPersistence {

	public int registerMember(MemberVO mvo);
}
