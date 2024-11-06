<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BookBug : Support</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/gh/sun-typeface/SUIT@2/fonts/variable/woff2/SUIT-Variable.css" rel="stylesheet">
    <!--font-family: 'SUIT', sans-serif;-->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap" rel="stylesheet">
    <!--font-family: "Playfair Display", serif;-->
    <script src="/resources/js/jquery-1.12.4.min.js"></script>
    <script src="/resources/js/common-script.js"></script>
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="/resources/css/common.css">
</head>
<body>
    <header>
        <nav>
            <h1><a id="logo" href="/"><span>B.B</span>ug</a></h1>
            <a href="#" id="trigger"><i class="bi bi-list"></i><i class="bi bi-x-lg"></i></a>

            <ul id="main-menu">
                <li><a href="/ebook">E-Service</a><div class="menu-bar"></div></li>
                <li><a href="/support">Support</a><div class="menu-bar"></div></li>
                <li><a href="/culture">Culture</a><div class="menu-bar"></div></li>
                <li><a href="#">Information</a><div class="menu-bar"></div></li>
            </ul>
			
          <c:if test="${member==null }">
            <ul class="top-menu">
                <li><a href="/admin/confirm/login"><span>login</span><i class="bi bi-person-fill"></i></a></li>
                <li><a href="/admin/member/register"><span>join</span><i class="bi bi-lock-fill"></i></a></li>
            </ul>
            </c:if>
            <c:if test="${member!=null }">
            <ul class="top-menu">
                <li><a href="#"><span>${member.member_name }님</span>안녕하세요!</a></li>
                <li><a href="/admin/confirm/logout"><span>logout</span></a></li>
                <li><a href="/admin/member/mypage?member_id=${member.member_id }"><span>mypage</span></a></li>
            </ul>
            </c:if>
        </nav>
    </header> 