<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<fieldset>
    <legend> 로그인 양식 </legend>
    <form action="/login" method="post">
    <table>
        <tr>
            <td>
                <input type="text" name="username" value="${cookie.remember.value}" placeholder="아이디 입력" required>
            </td>
        </tr>
        <tr>
            <td>
                <input type="password" name="password" placeholder="패스워드 입력" required>
            </td>
        </tr>
    </table>
    <div>
        <input type="checkbox" name="remember" ">아아디 기억하기
    <button type="submit"> 로그인 </button>
</div>
    <div>
    <button > <a href="/joinForm">회원가입 하러 가기</a> </button>
</div>
</form>
</fieldset>

<%@ include file="../layout/footer.jsp" %>