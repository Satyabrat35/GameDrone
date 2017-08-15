<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>G@meDRonE</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles1.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="nivo-slider.css" type="text/css" media="screen" />
</head>
<body>


<body>
<!---------header------------>
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


<div style="height: 47px"></div>

<br><br>
<a href = "admin.html">Click here to go the Administrator page</a>
<br><br>


<%@ page errorPage="errorpage.html" import="java.net.*" %>
	<%@ page import="java.io.*" %>
	<%@ page import="java.sql.*" %>
	<%
	Connection con = null;
	
	int id=0;
	try{
	
		Class.forName("oracle.jdbc.driver.OracleDriver");
 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","satyabrat35"); 
	
	String sql1="SELECT * FROM Game_details";
    PreparedStatement pst=con.prepareStatement(sql1);
	ResultSet rs=pst.executeQuery();
	%>
	<br><h2>List of available games</h2>
	<table border=1>
	<tr>
	<td><font color="red">Serial No.</font></td>
	<td><font color="red">Name</font></td>
	<td><font color="red">Publisher</font></td>
	<td><font color="red">Engine</font></td>
	<td><font color="red">Series</font></td>
	<td><font color="red">OS</font></td>
	<td><font color="red">Genre</font></td>
	<td><font color="red">Processor</font></td>
	<td><font color="red">Memory</font></td>
	<td><font color="red">Graphics Card</font></td>
	<td><font color="red">DirectX</font></td>
	<td><font color="red">Space Requirements</font></td>
	<td><font color="red">Ratings</font></td>
	<td><font color="red">Description</font></td>
	</tr>
	<% 
	String sname,spub,seng,sos,sser,sgen,spro,sdesc,smem,sgc,sspace;
	 int irat,idx;
	 while(rs.next()){
		 id++;
		 out.println("<tr><td>" + id);
		 
		 
		 sname = rs.getString(1);
		 out.println("<td>");
		 out.println(sname);
		 
		 spub=rs.getString(2);
		 out.println("<td>");
		 out.println(spub);
		 
		 seng=rs.getString(3);
		 out.println("<td>");
		 out.println(seng);
		 
		 sser=rs.getString(4);
		 out.println("<td>");
		 out.println(sser);
		 
		 sos=rs.getString(5);
		 out.println("<td>");
		 out.println(sos);
		 
		 sgen=rs.getString(6);
		 out.println("<td>");
		 out.println(sgen);
		 
		 spro=rs.getString(7);
		 out.println("<td>");
		 out.println(spro);
		 
		 smem=rs.getString(8);
		 out.println("<td>");
		 out.println(smem);
		 
		 sgc=rs.getString(9);
		 out.println("<td>");
		 out.println(sgc);
		 
		 idx=rs.getInt(10);
		 out.println("<td>");
		 out.println(idx);
		 
		 sspace=rs.getString(11);
		 out.println("<td>");
		 out.println(sspace);
		 
		 irat=rs.getInt(12);
		 out.println("<td>");
		 out.println(irat);
		 
		 sdesc=rs.getString(13);
		 out.println("<td>");
		 out.println(sdesc);
		 
		 out.println("</tr>");
	 }
	 out.println("</table>");
	 %>
		<br>
		<hr>
	<%
	}
	catch(Exception e)
	{
		out.print("Error = " + e + "<HR>");
	}
	%>
	
	
	<br>
<br>
<br>
<br>


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