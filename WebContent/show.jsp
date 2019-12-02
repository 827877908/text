<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>展示</title>  
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String name=request.getParameter("uname");
	int age=Integer.parseInt( request.getParameter("uage")) ; 
	String psw=request.getParameter("upsw");
	String[] hobbies = request.getParameterValues("uhobbies");
	%>
	注册成功</br>
	姓名：<%=name %>
	年龄：<%=age %>
	密码：<%=psw %>
	爱好：</br>
		<%
			if(hobbies!=null){
				for (String hobby : hobbies) {
					out.print(hobby + "&nbsp;");
				}
			}
		%>
</body>
</html>