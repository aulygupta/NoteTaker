<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
 <%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
   <%@include file="navbar.jsp" %>
   <br>
   <h1>Please fill your note details</h1>
   <br>
   <!-- Form -->
   <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note title</label>
    <input type="text" class="form-control" id="title" name="title" placeholder="Enter Title" required="required" />
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea required="required" id="content" name="content" placeholder="Enter Your Content" style="height: 300px" class="form-control"></textarea>  </div>
 <div class="container text-center">
 
  <button type="submit" class="btn btn-primary">Add</button>
 </div> 
</form>
   </div>

</body>
</html>