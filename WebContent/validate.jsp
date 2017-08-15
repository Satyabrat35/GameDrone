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

<!---------header------------>
<div id="main">
<div id ="header">
    <div id="buttons">
	     <a href="gallery.html"  title="" class="but but_t">Home</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		 <a href="logout.html"     title="" class="but but_t">Logout</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		 <a href="author.html"    title="" class="but but_t">Know more about me</a>
	</div>
		 <div id="logo">
	      <hr><font color="white" family="Terminal"> LOADING... </font>
		 </div>
		 
		 
</div>
<!--header ends-->


<script type="text/javascript" src="lib/jquery-1.4.3.min.js"></script>
 <script type="text/javascript" src="lib/jquery.nivo.slider.pack.js"></script>

<div style="height: 47px"></div>


<%@ page errorPage="errorpage.html" language="java" import="java.sql.*"  %>
<%
Connection con=null;
ResultSet rs=null;
try{
	String sname=request.getParameter("Username");
	String spass=request.getParameter("Password");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","satyabrat35"); 
			PreparedStatement stat= con.prepareStatement("SELECT * FROM Gamer_details where UserName=? and Password =?");
			stat.setString(1,sname);
			stat.setString(2,spass);
			rs=stat.executeQuery();
			if(rs.next())
			{
				String s1,s2;
				s1=rs.getString(1).trim();
				s2=rs.getString(2).trim();
				session.putValue("user",sname);
				if(s1.equals("Admin") && s2.equals("Admin")){
					response.sendRedirect("admin.html");
				}
				else{
					out.println("Logged in...");
					response.sendRedirect("display1.jsp");
				}
				
			}
			else
			{
				response.sendRedirect("invaliduser.html");
			}
			
}catch(Exception e){
	System.err.println(e.getMessage());
}finally{
	rs.close();
	con.close();
}

%>

<!-- content ends --> 
    <div style="height:40px"></div>
    <!-- bottom begin -->

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