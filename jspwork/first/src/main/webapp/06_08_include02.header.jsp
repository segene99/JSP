<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int pageCount = 0;
	void addCount() {
		pageCount++;
	}
	
	void resetCount(){
	pageCount = 0;
	System.out.println("출력");
	}
	
%>
<%
	addCount();
%>
<p> you have visited this website <%=pageCount%>th times.</p>