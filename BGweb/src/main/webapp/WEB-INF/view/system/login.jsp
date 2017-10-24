<%--
  Created by IntelliJ IDEA.
  User: binggoling
  Date: 2017/9/24
  Time: 15:27
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>

<html>
<head>
    <title>BG系统登录</title>

    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/login/style.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/login/style_log.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/login/pagination.css">
</head>

<body class="login" mycollectionplug="bind">

<div class="login_m">
    <div class="login_logo"><img src="<%=basePath%>/image/login/logo_BG.png" width="196" height="46"></div>
    <div class="login_boder">

        <div class="login_padding" id="login_model">

            <h2>用户名</h2>
            <label>
                <input type="text" id="username" class="txt_input txt_input2" value="用户名/邮箱/手机号码" onfocus="this.value=''" onblur="if(this.value==''){this.value='用户名/邮箱/手机号码'}">
            </label>
            <h2>密码</h2>
            <label>
                <input type="password" name="textfield2" id="userpwd" class="txt_input" onfocus="">
            </label>


            <p class="forgot"><a id="iforget" href="<%=basePath%>/sys/register">没有账号，点击此注册账号</a></p>
            <div class="rem_sub">
                <%--<div class="rem_sub_l">
                    <input type="checkbox" name="checkbox" id="save_me">
                    <label for="checkbox">记住我</label>
                </div>--%>
                <label>
                    <input type="submit" class="sub_button" name="button" id="button" value="登录" style="opacity: 0.7;">
                </label>
            </div>
        </div>

    </div>
</div>

</body>
</html>
