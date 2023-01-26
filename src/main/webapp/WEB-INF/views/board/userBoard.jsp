<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>

                <h1>내 게시글 목록 페이지</h1>
        <div class="main_box">
            <div>

                <div class="login_btn_layout">
                    <form action="/board/insert" method="get">
                        <button type="submit" class="btn1">글쓰기</button>
                    </form>
                </div>
                <table border="1">
                    <tr>
                        <th> 번호</th>
                        <th> 제목</th>
                        <th> 작성일</th>
                    </tr>
                    <c:forEach items="${boardList}" var="board">
                        <tr>
                            <td>${board.id}</td>
                            <td><a href="#">${board.title}</a></td>
                            <td>${board.createdAt}</td>
                        </tr>

                    </c:forEach>
                </table>


            </div>
        </div>

        <%@ include file="../layout/footer.jsp" %>