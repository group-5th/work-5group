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
    
    <title>My JSP 'edit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<meta charset="UTF-8">
	<title>edit</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/add.css">
	<script type="text/javascript" src="js/MyCustomDatePicker/Calendar.js"> </script> 

  </head>
  
  <body>
     <!-- <form action="StuServlet?flag=edit" method="post">
    	<table>
    	   <tr>
    	   	 <td>学号</td>
    	   	 <td><input type="text" name="id" value="${id}"/></td>
    	   </tr>
    	   <tr>
    	   	 <td>姓名</td>
    	   	 <td><input type="text" name="name" value="${name}"/></td>
    	   </tr>
    	   <tr>
    	   	 <td>出生日期</td>
    	   	 <td><input type="text" name="birDate" value="${birDate}"/></td>
    	   </tr>
    	   <tr>
    	   	 <td>性别</td>
    	   	 <td><input type="text" name="gender" value="${gender}"/></td>
    	   </tr>
    	   <tr>
    	   	 <td><input type="submit" value="修改"/></td>
    	   </tr>
    	</table>
    </form>
    <a href="index.jsp">退出</a>
    <a href="StuServlet?flag=all&edit=y">返回</a>  -->
    <div class="mainbac">
		<h1>Welcome To Management System</h1>
		<div class="lii">Operation For Edit Imformation</div>
	    <div class="duzii">
	        <form class="form-inline" action="StuServlet?flag=edit" method="post">
	    	    <div class="the-top-div">
				    <label class="control-label">学&nbsp;&nbsp;&nbsp;&nbsp;号&nbsp;&nbsp;:</label>
				    <input type="text" name="id" value="${id}" class="form-control" style="margin-left:20px;">
			    </div>
			    <div class="same-div">
				    <label class="control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;:</label>
				    <input type="text" name="name" value="${name}" class="form-control" style="margin-left:20px;">
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
				    <input type="text" name="birDate" class="form-control" style="margin-left:20px;" onclick="fPopCalendar(event,this,this)" readonly="readonly">
			    </div>
			    <div class="the-bottom-div">
			        <button type="submit" class="btn btn-default">修&nbsp;&nbsp;&nbsp;&nbsp;改</button>
			    </div>
			    <a href="index.jsp"><button type="button" class="btn btn-link" style="margin-left:30px;">退出</button></a>
			    <a href="StuServlet?flag=all&edit=y"><button type="button" class="btn btn-link">返回</button></a>
		    </form>
	    </div>
    </div>
  </body>
</html>
