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
    
    <title>My JSP 'add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta charset="UTF-8">
	<title>add</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/add.css">
	<script type="text/javascript" src="js/MyCustomDatePicker/Calendar.js"> </script> 

  </head>
  
  <body>
    <!-- <form action="StuServlet?flag=add" method="post">
    	<table>
    	   <tr>
    	   	 <td>学号</td>
    	   	 <td><input type="text" name="id"/></td>
    	   </tr>
    	   <tr>
    	   	 <td>姓名</td>
    	   	 <td><input type="text" name="name"/></td>
    	   </tr>
    	   <tr>
    	   	 <td>出生日期</td>
    	   	 <td><input type="text" name="birDate"/></td>
    	   </tr>
    	   <tr>
    	   	 <td>性别</td>
    	   	 <td><input type="text" name="gender"/></td>
    	   </tr>
    	   <tr>
    	   	 <td><input type="submit" value="增加"/></td>
    	   </tr>
    	</table>
    </form>
    <a href="index.jsp">退出</a> -->
    
    <div class="mainbac">
		<h1>Welcome To Management System</h1>
		<div class="lii">Operation For Add Imformation</div>
	    <div class="duzii">
	        <form class="form-inline" action="StuServlet?flag=add" method="post">
	    	    <div class="the-top-div">
				    <label class="control-label">学&nbsp;&nbsp;&nbsp;&nbsp;号&nbsp;&nbsp;:</label>
				    <input type="text" class="form-control" style="margin-left:20px;" name="id">
			    </div>
			    <div class="same-div">
				    <label class="control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;:</label>
				    <input type="text" class="form-control" style="margin-left:20px;" name="name">
			    </div>
			    <div class="same-div">
				    <label class="control-label" style="margin-left:-140px;">性&nbsp;&nbsp;&nbsp;&nbsp;别&nbsp;&nbsp;:</label>
				    <select name="gender">
                        <option value ="男">男</option>
                        <option value ="女">女</option>
                    </select>
			    </div>
			    <div class="the-different-div">
				    <label class="control-label">出&nbsp;生&nbsp;日&nbsp;期&nbsp;&nbsp;:</label>
				    <input type="text" class="form-control" style="margin-left:20px;" name="birDate" onclick="fPopCalendar(event,this,this)" readonly="readonly">
			    </div>
			    <div class="the-bottom-div">
			        <button type="submit" class="btn btn-default">添&nbsp;&nbsp;&nbsp;&nbsp;加</button>
			        <a href="index.jsp"><button type="button" class="btn btn-link">退出</button></a>
			    </div>
		    </form>
	    </div>
    </div>
    
  </body>
</html>
