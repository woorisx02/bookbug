package org.bookbug.user.vo;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	
	private String member_id;
	private String member_pwd;
	private String member_name;
	private String member_gender;
	private String member_email;
	private String member_phone;
	private String member_birthday;
	private String member_zipcode;
	private String member_address;
	private String member_preference;
	private Date member_reg_date;
	private Date member_up_date;
	
}
