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
    
    <title>index.jsp</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta charset="UTF-8">
	<title>index</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/index.css">
	
  </head>
  
  <body>
    <!-- <table>   	   
		<tr> 
	      <td ><a href ="add.jsp">插入</a></td>   	   	  	    	 
	    </tr>
	    <tr> 
	      <td ><a href ="get.jsp">查找</a></td>   	   	  	    	 
	    </tr>
	    <tr> 
	      <td ><a href ="StuServlet?flag=all&del=y">删除</a></td>   	   	  	    	 
	    </tr>
	    <tr> 
	      <td ><a href ="StuServlet?flag=all&edit=y">修改</a></td>   	   	  	    	 
	    </tr>
	    <tr> 
	      <td ><a href ="StuServlet?flag=all">输出</a></td>   	   	  	    	 
	    </tr>
	    <tr> 
	      <td ><a href ="index.jsp">退出</a></td>   	   	  	    	 
	    </tr>	        	       
  	</table>-->
  	
  	<div class="mainbac">
		<h1>Welcome To Management System</h1>
		<div class="lii">Please Choose Your Operation</div>
	    <div class="duzi">
	    	 <a href ="add.jsp"><button type="button" class="btn btn-default">插&nbsp;&nbsp;&nbsp;&nbsp;入</button></a>
	    	 <a href ="get.jsp"><button type="button" class="btn btn-default">查&nbsp;&nbsp;&nbsp;&nbsp;找</button></a>
	    	 <a href ="StuServlet?flag=all&del=y"><button type="button" class="btn btn-default">删&nbsp;&nbsp;&nbsp;&nbsp;除</button></a>
	    	 <a href ="StuServlet?flag=all&edit=y"><button type="button" class="btn btn-default">修&nbsp;&nbsp;&nbsp;&nbsp;改</button></a>
	    	 <a href ="StuServlet?flag=all"><button type="button" class="btn btn-default">输&nbsp;&nbsp;&nbsp;&nbsp;出</button></a>
	    	 <a href ="index.jsp"><button type="button" class="btn btn-default">退&nbsp;&nbsp;&nbsp;&nbsp;出</button></a>
	    </div>
    </div>
  	
  </body>
</html>
