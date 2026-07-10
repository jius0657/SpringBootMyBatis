<%--
  Created by IntelliJ IDEA.
  User: data8320-20
  Date: 26. 7. 10.
  Time: 오후 3:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="kopo.poly.dto.UserInfoDTO" %>
<%@ page import="kopo.poly.util.CmmUtil" %>
<%
    String ssUserName = CmmUtil.nvl((String)session.getAttribute("SS_USER_NAME"));
    String ssUserId = CmmUtil.nvl((String) session.getAttribute("SS_USER_ID"));
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>로그인 성공</title>
    <link rel="stylesheet" href="/css/table/css"/>
    <script type="text/javascript" src="/js/jquery-3.6.0.min.js"></script>
    <script type = "text/javascript">

        $(document).ready(function () {

            $("#btnSend").on("click", function () {
                location.href = "/html/index.lhtml";

            })
        })
    </script>
</head>
<body>
<div class="divTable minimalistBlack">
    <div class="divTableBody">
        <div class="divTableRow">
            <div class="divTableCell">로그인된 사용자이름
            </div>
            <div class="divTableCell"><%=ssUserName%> 님이 로그인하였습니다."></div>
        </div>
        <div class="divTableRow">
            <div class="divTableCell">로그인된 사용자 아이디
            </div>
            <div class="divTableCell"><%=ssUserId%> 입니다. "></div>
        </div>

    </div>
</div>
<div></div>
<br/><br/>
<button id="btnSend" type="button">메인 화면 이동</button>
</body>
</html>
