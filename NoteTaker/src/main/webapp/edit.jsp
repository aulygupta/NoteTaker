<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <%@include file="all_js_css.jsp" %>
  </head>
  <body>
   <div class="container">
   <%@include file="navbar.jsp" %>
    <h1>Edit Your Note</h1>
    <br>
    <%
    int noteid=Integer.parseInt(request.getParameter("note_id").trim());
    Session s=FactoryProvider.getFactory().openSession();
    Note note=s.get(Note.class,noteid);
    %>
     <form action="UpdateServlet" method="post">
     <input name="note_ID" value="<%=note.getId()%>" type="hidden"/>
  <div class="form-group">
    <label for="title">Note title</label>
    <input type="text" class="form-control" id="title" name="title" placeholder="Enter Title" required="required" value="<%=note.getTitle() %>" />
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea required="required" id="content" name="content" placeholder="Enter Your Content" style="height: 300px" class="form-control" ><%=note.getContent() %></textarea>  </div>
 <div class="container text-center">
 
  <button type="submit" class="btn btn-success">Save</button>
 </div> 
</form>
   </div>
</body>
</html>