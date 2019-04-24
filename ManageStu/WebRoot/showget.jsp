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
    
    <title>My JSP 'showget.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<style type="text/css" media="screen">
		#mycon{
	    margin-top: 6%;
        font-size: 20px;
		}
	</style>

  </head>
  
  <body>
     <!-- <table>
   	    <c:forEach items="${nresult}" var="nresult">  
    	   <tr>    	   	  	    	 
    	   	 <td>${nresult.id}</td>
    	   	 <td>${nresult.name}</td>
    	   	 <td>${nresult.birDate}</td>
    	   	 <td>${nresult.gender}</td>
    	   </tr>
       </c:forEach>  	       
     </table>
     <a href="index.jsp">退出</a>
     <a href="get.jsp">返回</a>   -->
     
     <div class="container" id="mycon">
	<div class="row clearfix">
		<div class="col-md-12 column">
			 <a href="index.jsp"><button type="button" class="btn btn-default btn-info">退出</button></a>
			 <a href="get.jsp"><button type="button" class="btn btn-default btn-info">返回</button></a>
			<table class="table">
				<thead>
					<tr>
						<th>
							编号
						</th>
						<th>
							姓名
						</th>
						<th>
							出生日期
						</th>
						<th>
							性别
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${nresult}" var="nresult"> 
					<tr class="success">
						<td>
							${nresult.id}
						</td>
						<td>
							${nresult.name}
						</td>
						<td>
							${nresult.birDate}
						</td>
						<td>
							${nresult.gender}
						</td>
					</tr>
					 </c:forEach>  
				</tbody>
			</table>
		</div>
	</div>
</div>
     
  </body>
</html>
