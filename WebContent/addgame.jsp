

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

<center>
<h1>Add Game</h1>
</center>
<%@ page errorPage="errorpage.html" import="java.net.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
Connection con = null;
PreparedStatement stat = null;

Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","satyabrat35");
 ResultSet rs1=null;
 
 int id;
 String gname = request.getParameter("name");
 String sql1 = "SELECT * FROM Game_details WHERE GName = ?";
 PreparedStatement stat2 = con.prepareStatement(sql1);
 stat2.setString(1,gname);
 ResultSet rs = stat2.executeQuery();
 if(rs.next()){
	 %>
	 <script language="Javascript">
	 alert("game already exists");
	 location.href="insertgame.jsp";
	 </script>
	 <%
 }
 else {
	 String sname,spub,seng,sos,sser,sgen,spro,sdesc,smem,sgc,sspace;
	 int irat,idx;
	 sname=request.getParameter("name");
	 spub=request.getParameter("pub");
	 seng=request.getParameter("engine");
	 sos=request.getParameter("os");
	 sgen=request.getParameter("gen");
	 sser=request.getParameter("series");
	 spro=request.getParameter("pro");
	 smem=request.getParameter("mem");
	 sgc=request.getParameter("gc");
	 sspace=request.getParameter("hdd");
	 sdesc=request.getParameter("desc");
	 irat=Integer.parseInt(request.getParameter("rat"));
	 idx=Integer.parseInt(request.getParameter("dx"));

      String sql2 = "INSERT INTO Game_details VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
      PreparedStatement stat1 = con.prepareStatement(sql2);
      stat1.setString(1,sname);
      stat1.setString(2,spub);
      stat1.setString(3,seng);
      stat1.setString(4,sser);
      stat1.setString(5,sos);
      stat1.setString(6,sgen);
      stat1.setString(7,spro);
      stat1.setString(8,smem);
      stat1.setString(9,sgc);
      stat1.setInt(10,idx);
      stat1.setString(11,sspace);
      stat1.setInt(12,irat);
      stat1.setString(13,sdesc);
 
      id=stat1.executeUpdate();
      if(id==1){
    	  %>
    	  <h1>Successfully Updated</h1>
      <%
      }
      else{
    	  %>
    	  <h4>Could not update</h4>
    	  <%
      }
 }%>
 
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