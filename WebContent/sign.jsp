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
	      
		 </div>
		 
		 
</div>
<!--header ends-->


<script type="text/javascript" src="lib/jquery-1.4.3.min.js"></script>
 <script type="text/javascript" src="lib/jquery.nivo.slider.pack.js"></script>

<div style="height: 47px"></div>
<%@ page errorPage="errorpage.html" language="java" import="java.sql.*"  %>
<%
Connection con=null;
String user = request.getParameter("UserName");
String pass = request.getParameter("Password");
String name = request.getParameter("name");
int hos = Integer.parseInt(request.getParameter("hostel"));
String dept = request.getParameter("dept");
String roll =request.getParameter("roll");
String mob = request.getParameter("phone");
String mail = request.getParameter("emailid");

ResultSet rs = null;

int flag=0;
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","satyabrat35");

String sql1 = "SELECT * FROM Gamer_details WHERE UserName=?";
PreparedStatement stat = con.prepareStatement(sql1);
stat.setString(1,user);
 rs = stat.executeQuery();
if(rs.next()){
flag=1;
%>
<script language="Javascript">
alert("Username already exits");
location.href="register.html";
</script>
<%
}
else{
flag=0;
}
}catch(Exception e){
System.err.println(e.getMessage() + "Error");
}
if(flag==0)
{
try{
PreparedStatement pst1 = con.prepareStatement("INSERT INTO Gamer_auth VALUES(?,?)");
pst1.setString(1,user);
pst1.setString(2,pass);
	
	
PreparedStatement pst = con.prepareStatement("INSERT INTO Gamer_details VALUES(?,?,?,?,?,?,?,?)");
pst.setString(1,user);
pst.setString(2,pass);
pst.setString(3,name);
pst.setInt(4,hos);
pst.setString(5,dept);
pst.setString(6,roll);
pst.setString(7,mail);
pst.setString(8,mob);

pst1.executeUpdate();
pst.executeUpdate();

flag=0;
response.sendRedirect("login.html");
}catch(Exception e){
System.err.println(e.getMessage() + "Error inserting values");
}
finally{
rs.close();
con.close();
}
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


