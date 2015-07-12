<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<%
  String d = "com.mysql.jdbc.Driver";
  String url = "jdbc:mysql://localhost:3306/cpms";
  String id = "root";
  String pwd = "root";
  
  try{
   Class.forName(d);
  }catch(ClassNotFoundException e){
   out.println("DB연결실패");
   e.printStackTrace();
   return;
  }
  out.print("mysql  등록");
  
  Connection conn = DriverManager.getConnection(url,id, pwd);
  out.println("DB연결성공");
  conn.close();
   
 %>
<input type='button' value='로그인' id='loginBtn'>
<script>
 $(function(){
	$('#loginBtn').click(function(){
		location.href='login.do';
	}); 
 });
 
 </script>
