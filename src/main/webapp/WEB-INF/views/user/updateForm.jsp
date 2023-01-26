<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<fieldset>
    <legend> 회원정보 수정양식 </legend>
    <form action="/user/update" method="post">
    <table>
        <tr>
            <td>
                <input type="text" name="username" value="${principal.username}" readonly>
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
    
        
    <button type="submit"> 수정하기 </button>

    
</form>
</fieldset>

<%@ include file="../layout/footer.jsp" %>