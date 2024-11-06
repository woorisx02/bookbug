<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../includes/admin-header.jsp" %>
<div class="bn bn-admin-member">
	<h2>member <span>register</span></h2>
</div>

<form action="/admin/member/register" method="post">

	<ul>
		<li>
			<input type="text" name="member_id" placeholder="아이디입력" required autofocus>
			<button type="button" onclick="idCheck()">아이디중복확인</button>
		</li>
		<li><input type="password" name="member_pwd" placeholder="비밀번호입력" required></li>
		<li><input type="text" name="member_name" placeholder="이름입력" required></li>
		<li>
			<input type="radio" id="member_gender" name="member_gender" value="여성" checked>
			<label for="member_gender">여성</label>
			<input type="radio" id="member_gender" name="member_gender" value="남성">
			<label for="member_gender">남성</label>
		</li>
		<li><input type="email" name="member_email" placeholder="이메일 입력"></li>
		<li><input type="tel" name="member_phone" placeholder="전화번호입력" required></li>
		<li><input type="text" name="member_birthday" placeholder="생년월일입력" required></li>
		<li>
			<input type="text" name="member_zipcode" placeholder="우편번호">
			<button type="button" onclick="getZipcode()">우편번호찾기</button>
		</li>
		<li><input type="text" name="member_address" placeholder="주소"></li>
		<li>
			<input type="checkbox" name="member_preference" value="SF소설">
		</li>
	</ul>
</form>





















<%@ include file="../../includes/admin-footer.jsp" %>