<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>


                <h1>로그인 페이지</h1>
        <div class="main_box">
            <div >
                <fieldset>
                    <legend> 로그인 양식 </legend>
                    <form action="/login" method="post" class="login_btn_layout">
                        <table>
                            <tr>
                                <td>
                                    <input type="text" name="username" value="${cookie.remember.value}"
                                        placeholder="아이디 입력" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="password" name="password" placeholder="패스워드 입력" required>
                                </td>
                            </tr>
                        </table>
                            <div class="login_btn_layout">
                            <div>
                                <input type="checkbox" name="remember" ">아아디 기억
                                <button type=" submit" class="btn1"> 로그인 </button>
                            </div>
                            <div>
                                <button class="btn1"> <a href="/joinForm">회원가입 하러 가기</a> </button>
                            </div>
                        </div>
                    </form>
                </fieldset>
            </div>
        </div>

        <%@ include file="../layout/footer.jsp" %>