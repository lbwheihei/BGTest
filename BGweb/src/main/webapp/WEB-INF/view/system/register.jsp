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
    <div class="login_boder" style="height:550px;">
        <div class="login_padding" id="login_model">
            <h2>注册账号</h2>
            <h2>用户名</h2>
            <label>
                <input type="text" id="username" class="txt_input txt_input2" value="用户名/邮箱/手机号码" onfocus="this.value=''" onblur="if(this.value==''){this.value='用户名/邮箱/手机号码'}">
            </label>
            <h2>邮箱账号</h2>
            <label>
                <input type="text" name="email" id="email" class="txt_input" value="***@email" onfocus="this.value=''" onblur="if(this.value==''){this.value='***@email'}">
            </label>
            <h2>手机号码</h2>
            <label>
                <input type="text" name="contactphone" id="contactphone" class="txt_input" value="输入手机号码" onfocus="this.value=''" onblur="if(this.value==''){this.value='输入手机号码'}">
            </label>
            <h2>密码</h2>
            <label>
                <input type="password" name="textfield2" id="userpwd" class="txt_input">
            </label>
            <h2>确认密码</h2>
            <label>
                <input type="password" name="textfield2" id="userpwdagain" class="txt_input">
            </label>

            <p class="forgot"><a id="iforget" href="<%=basePath%>/sys/login">已有账号，返回登录</a></p>
            <div class="rem_sub" style="float: left;">
                <label>
                    <input type="submit" class="sub_button" name="button" id="button" value="注册" style="opacity: 0.7;">
                </label>
            </div>
        </div>
    </div>
</div>

</body>
</html>
