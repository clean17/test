<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="/css/style.css">
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
        </head>

        <body>
            <ul>
                <div class="nav">
                    <div class="nav_flex">
                    <c:choose>
                        <c:when test="${principal == null}">
                            
                            <li><a href="/">홈</a></li>
                            <li><a href="/loginForm">로그인</a></li>
                            <li><a href="/joinForm">회원가입</a></li>
                            <div></div>
                            <div></div>
                            
                       
                        </c:when>
                
                        <c:otherwise>
                            <li><a href="/">홈</a></li>
                            <li><a href="/user/update">회원정보 수정</a></li>
                            <li><a href="/logout">로그아웃</a></li>
                            <li><a href="/user/board">내 게시글 보기</a></li>
                        </c:otherwise>
                    </c:choose>
                </div>
                <div></div>
                </div>
            </ul>
            <hr>