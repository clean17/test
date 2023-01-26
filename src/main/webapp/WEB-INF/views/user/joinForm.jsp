<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<fieldset>
    <legend> 회원가입 양식 </legend>
    <form action="/join" method="post">
    <table>
        <tr>
            <td>
                <input type="text" name="username" placeholder="아이디 입력" required>
            </td>
        </tr>
        <tr>
            <td>
                <input type="password" name="password" placeholder="패스워드 입력" required>
            </td>
        </tr>
        <tr>
            <td>
                <input type="email" name="email" placeholder="이메일 입력" required>
            </td>
        </tr>
    </table>
    <button > <a href="/loginForm">로그인하러 가기</a> </button>
    <button type="submit"> 회원가입 </button>
</form>
</fieldset>

<%@ include file="../layout/footer.jsp" %>