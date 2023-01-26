<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>


    <h1>회원정보 수정 페이지 </h1>
        <div class="main_box">
            <div>
                <fieldset >
                    <legend> 회원정보 수정양식 </legend>
                    <form action="/user/update" method="post" class="login_btn_layout">
                        <table>
                            <tr>
                                <td>
                                    <input type="text" value="${principal.username}" readonly>
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
                        <div class="bottom_btn1">
                            <input type="hidden" name="updateId" value="${principal.id}">
                            <button type="submit" class="btn1"> 수정하기 </button>
                        </div>
                    </form>
                </fieldset>
            </div>
        </div>

        <%@ include file="../layout/footer.jsp" %>