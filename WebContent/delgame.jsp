<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>G@meDRonE</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="nivo-slider.css" type="text/css" media="screen" />
</head>
<body>

<div id="main">
<div id ="header">
    <div id="buttons">
	     <a href="gallery.html"  title="" class="but but_t">Home</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		 <a href="logout.html"     title="" class="but but_t">Logout</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		 <a href="author.html"    title="" class="but but_t">Know more about me</a>
	</div>
		 <div id="logo">
	      <hr><h2></h2>
		 </div>
		 
		 
</div>
<!--header ends-->


<script type="text/javascript" src="lib/jquery-1.4.3.min.js"></script>
    <script type="text/javascript" src="lib/jquery.nivo.slider.pack.js"></script>

<div style="height: 47px"></div>
<br><br>
<a href = "admin.html">Click here to go the Administrator page</a>
<br><br>


<%@ page errorPage="errorpage.html" import="java.net.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
Connection con = null;
PreparedStatement pst = null;

Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","satyabrat35");

String s = request.getParameter("name");
String sql = "DELETE FROM Game_details WHERE GName=?";
pst=con.prepareStatement(sql);
pst.setString(1,s);
int id = pst.executeUpdate();
if(id==1){
	%>
	<br><font color="yellow">Successfully deleted</font></br>
<% 
}
else {
	%>
	<br><font color="yellow">Could not delete Check the name again</font> </br>
<% }
%>
<br><br>
 <br><br>
 
 <div id="bottom">
    <div id="b_col2">
         <h1>Share with me</h1>
         <div style="height:15px"></div>
            <ul>
                <li><img src="images/fu_i1.png" class=" fu_i"/><a href="author.html">Mail me</a></li>			
		        <li><img src="images/fu_i2.png" class=" fu_i"/><a href="author.html">Follow me on Facebook</a></li>
				<li><img src="images/fu_i4.png" class=" fu_i"/><a href="author.html">Follow me on Twitter</a></li>
			</ul>
        <div style="clear: both; height:20px;"></div>			
	</div>
</div>
</div>	
	
</body>
</html>
</body>
</html>
