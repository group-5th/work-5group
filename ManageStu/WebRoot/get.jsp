<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'get.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<meta charset="UTF-8">
	<title>get</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/index.css">

  </head>
  
  <body>
    <!-- <form action="StuServlet?flag=get" method="post">
    	<table>
    	   <tr>
    	   	 <td>姓名</td>
    	   	 <td><input type="text" name="name"/></td>
    	   </tr>
    	   <tr>
    	   	 <td><input type="submit" value="提交"/></td>
    	   </tr>
    	</table>
    </form>
    <a href="index.jsp">退出</a>  -->
    
    <div class="mainbac">
		<h1>Welcome To Management System</h1>
		<div class="lii">Operation For Get Imformation</div>
	    <div class="duzii">
	      <form class="form-inline" action="StuServlet?flag=get" method="post">
	    	 <div class="form-group has-success has-feedback">
				<label class="control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;:</label>
				<input type="text" name="name" class="form-control" style="margin-left: 20px;">
				<button type="submit" class="btn btn-default">提&nbsp;&nbsp;&nbsp;&nbsp;交</button>
				<a href="index.jsp"><button type="button" class="btn btn-link">退出</button></a>

			 </div>
		  </form>
	    </div>
    </div>
    
  </body>
</html>
