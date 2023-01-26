<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>


    <h1>회원가입 페이지</h1>
        <div class="main_box">
            <div>
                <fieldset>
                    <legend> 회원가입 양식 </legend>
                    <form action="/join" method="post" class="login_btn_layout">
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
                        <div>
                        <button class="btn1"> <a href="/loginForm">로그인 하기</a> </button>
                        <button type="submit" class="btn1"> 회원가입 </button>
                    </div>
                    </form>
                </fieldset>
            </div>
        </div>

        <%@ include file="../layout/footer.jsp" %>