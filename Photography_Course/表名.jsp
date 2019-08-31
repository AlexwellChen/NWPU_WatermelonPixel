<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>用户反馈页面</title>
<style>
body{
	background-image:url(images/1-nature.jpg);
	background-size:cover;}
	</style>
</head>
<body>
<h1 align=center>用户反馈表单</h1>
<form method="post">
<p>姓&nbsp;&nbsp;&nbsp;&nbsp;名:
<input type="text" class="txt" size="12"
maxlengh="20" name="usename" /></p>
<p>性&nbsp;&nbsp;&nbsp;&nbsp;别:
<input type="radio" value="male" />男
<input type="radio" value="female" />女</p>
<p>年&nbsp;&nbsp;&nbsp;&nbsp;龄：
<input type="text" class=txt name="age" /></p>
<p>联系电话:
<input type="text" class=txt name="tel" /></p>
<p>电子邮件:
<input type="text" class=txt name="email" /></p>
<p>联系地址:
<input type="text" class=txt name="address" /></p>
<p>
请选择你喜欢的花朵:<br>
<input type="radio" name="flower" value="flower1">梅花<br>
<input type="radio" name="flower" value="flower2">兰花<br>
<input type="radio" name="flower" value="flower3">菊花<br>
<input type="radio" name="flower" value="flower4">牡丹<br>
<input type="radio" name="flower" value="flower5">月季<br>
<input type="radio" name="flower" value="flower6">荷花<br>
请选出你喜欢的网页:<br>
<select name="fruit" size="3" multiple>
<option value="web1">360
<option value="web2">百度
<option value="web3">leetcode
<option value="web4">批改网
</select>
请选择你喜欢的购物APP:<br>
<input type="checkbox" name="APP1">淘宝<br>
<input type="checkbox" name="APP2">天猫<br>
<input type="checkbox" name="APP3">京东<br>
<input type="checkbox" name="APP4">苏宁易购<br>
<input type="checkbox" name="APP5">拼多多<br>
<input type="checkbox" name="APP6">唯品会<br> 
请输入您对网站的建议<br>
<textarea name="yourworks" cols="50" rows= "5"></textarea>
<br>
<input type="submit" name="submit" value="提交" />
<input type="reset" name="reset" value="重置" /></p>
</form>
<form action="reg" method="get">
用户名：
<input type="text" name="yourname">
<br>
密码:
<input type="password" name="yourpw">
<br>
<input type="submit" value="登陆">
</form>
</body>
</html>
