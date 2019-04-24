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
    
    <title>My JSP 'showout.jsp' starting page</title>
    
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
		

			.tcolor tr:nth-child(even){
				    background-color: #fcf8e3;

			}
			.tcolor tr:nth-child(odd){
				    background-color: #d9edf7;

			}
			.tcolor a:hover{
				text-decoration: none;
				cursor: pointer;
			}
			#didi:hover{
				text-decoration: none;

			}
			#brother{
				 font-size: 17px;
			    line-height: 100%;
			    margin-top: 17px;
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
   
   			<c:choose>  
		       <c:when test="${edit==null}">  		  
		       </c:when>  
		       <c:otherwise>  		               
		           <td><a href="StuServlet?flag=geted&id=${nresult.id}"/>修改</td> 	         
		       </c:otherwise> 		          
     		</c:choose>	
     		
     		<c:choose>  
		       <c:when test="${del==null}">  		  
		       </c:when>  
		       <c:otherwise>  		               
		           <td><a href="StuServlet?flag=del&id=${nresult.id}"/>删除</td> 	         
		       </c:otherwise> 		          
     		</c:choose>	
   
    	   </tr>
       </c:forEach>  	       
     </table>
     <a href="index.jsp">退出</a>
      <div>  
                       第${currentPage}页/共${totalPage}页
         <a href="StuServlet?currentPage=1&totalPage=${totalPage}&flag=all&edit=${edit}&del=${del}">首页</a>          
         <c:choose>  
             <c:when test="${currentPage==1}">  
                                          上一页  
             </c:when>  
	         <c:otherwise>  		               
	               <a href="StuServlet?currentPage=${currentPage-1}&totalPage=${totalPage}&flag=all&edit=${edit}&del=${del}">上一页</a>   	         
	         </c:otherwise> 		          
         </c:choose> 
         
         <c:choose>  
             <c:when test="${currentPage==totalPage}">  
                                         下一页  
             </c:when>  
	         <c:otherwise>  
	             <a href="StuServlet?currentPage=${currentPage+1}&totalPage=${totalPage}&flag=all&edit=${edit}&del=${del}">下一页</a>  
	         </c:otherwise>  	         
         </c:choose> 
         <a href="StuServlet?currentPage=${totalPage}&totalPage=${totalPage}&flag=all&edit=${edit}&del=${del}">尾页</a>  
         <form action="StuServlet?flag=all&edit=${edit}&del=${del}" method="post">
                                跳转到<input type="text" name="currentPage"/>页  
            <input type="hidden" name="totalPage" value="${totalPage}"/>
             <input type="submit" value="go"/>               
         </form>
       </div>   -->
       
       <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			 <a href="index.jsp"><button type="button" class="btn btn-success "style="    margin-left: 90%;margin-bottom: 2%;margin-top: 2%;">退出</button></a>
			<nav class="navbar navbar-default navbar-static-top" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> 
				</div>
				
				
				
			</nav>
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
						<th>
							状态
						</th>

					</tr>
				</thead>
				<tbody class="tcolor">
				<c:forEach items="${nresult}" var="nresult"> 
					<tr>
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
						<td>
							
							<c:choose>  
		       <c:when test="${edit==null}">  		  
		       </c:when>  
		       <c:otherwise>  		               
		           <td><a href="StuServlet?flag=geted&id=${nresult.id}">修改</a></td> 	         
		       </c:otherwise> 		          
     		</c:choose>	
     		
     		<c:choose>  
		       <c:when test="${del==null}">  		  
		       </c:when>  
		       <c:otherwise>  		               
		           <td><a href="StuServlet?flag=del&id=${nresult.id}">删除</a></td> 	         
		       </c:otherwise> 		          
     		</c:choose>	
							
						</td>
					</tr>
					</c:forEach>  
				</tbody>
			</table>
			
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
					<form class="navbar-form navbar-left" role="search" action="StuServlet?flag=all&edit=${edit}&del=${del}" method="post">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="跳转到第几页" name="currentPage" />
							<input type="hidden" name="totalPage" value="${totalPage}"/>
						</div> <button type="submit" class="btn btn-default">go</button>
					</form>
				
				<div class="navbar-header" id="brother">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> 
					 <a class="navbar-link" href="#" id="didi">第${currentPage}页</a><span>/</span>
					 <a class="navbar-link disabled" href="#" id="didi">共${totalPage}页</a>
					 <a href="StuServlet?currentPage=1&totalPage=${totalPage}&flag=all&edit=${edit}&del=${del}" class="navbar-link disabled" href="#" style="margin-right: 21px">首页</a>
					 
					 <c:choose>  
			             <c:when test="${currentPage==1}">  
			                   <a class="navbar-link" style="margin-right: 21px">上一页</a>
			             </c:when>  
				         <c:otherwise>  		               
				               <a class="navbar-link" style="margin-right: 21px" href="StuServlet?currentPage=${currentPage-1}&totalPage=${totalPage}&flag=all&edit=${edit}&del=${del}">上一页</a>   	         
				         </c:otherwise> 		          
			         </c:choose> 
			         
			         
			         <c:choose>  
			             <c:when test="${currentPage==totalPage}">  
			                 <a class="navbar-link" style="margin-right: 21px">下一页</a>
			             </c:when>  
				         <c:otherwise>  
				             <a class="navbar-link" style="margin-right: 21px" href="StuServlet?currentPage=${currentPage+1}&totalPage=${totalPage}&flag=all&edit=${edit}&del=${del}">下一页</a>  
				         </c:otherwise>  	         
			         </c:choose> 
					 
					 
					 <a href="StuServlet?currentPage=${totalPage}&totalPage=${totalPage}&flag=all&edit=${edit}&del=${del}" class="navbar-link" style="margin-right: 21px">尾页</a>
				</div>
			</div>
			 <div class="row clearfix">
				<div class="col-md-2 column">
				</div>
				<div class="col-md-6 column">
				</div>
				<div class="col-md-4 column">
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-4 column">
				</div>
				<div class="col-md-4 column">
				</div>
				<div class="col-md-4 column">
				</div>
			</div>
		</div>
	</div>
</div>
       
  </body>
</html>
