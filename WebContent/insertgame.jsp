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
<h2> Insert New Game Details</h2>
<script language="Javascript">
function add(){
	var ctr=0;
	if(document.addgame.name.value==""){
		alert("please enter the name");
		return ;
	}
	if(document.addgame.pub.value==""){
		alert("please enter the name of the publisher");
		return ;
	}
	if(document.addgame.engine.value==""){
		alert("specify the engine");
		return ;
	}
	if(document.addgame.series.value==""){
		alert("specify the series");
		return ;
	}
	if(document.addgame.os.value==""){
		alert("specify the OS");
		return ;
	}
	if(document.addgame.gen.value==""){
		alert("please enter the Genre");
		return ;
	}
	if(document.addgame.pro.value==""){
		alert("specify the processor");
		return ;
	}
	if(document.addgame.mem.value==""){
		alert("specify the Memory");
		return ;
	}
	if(document.addgame.gc.value==""){
		alert("specify the Graphics Card");
		return ;
	}
	if(isNaN(document.addgame.dx.value)){
		alert("please enter the Sound Card");
		ctr=1;
	}
	if(document.addgame.hdd.value==""){
		alert("specify the Space Requirements");
		return ;
	}
	if(isNaN(document.addgame.rat.value)){
		alert("please enter the rating");
		ctr=1;
	}
	if(document.addgame.desc.value==""){
		alert("please enter the description about the game");
		return ;
	}
	if(ctr==0){
	document.addgame.action="addgame.jsp";
	document.addgame.submit();
	}
	else{
		return true;
	};
}

</script>

<br>
<br>

<form name="addgame">
<table border=1>
    <tr><td><font color="yellow">Name</font></td><td><input type="text" name="name"></td>
	<tr><td><font color="yellow">Publisher(s)</font></td><td><input type="text" name="pub"></td>
	<tr><td><font color="yellow">Engine(s)</font></td><td><input type="text" name="engine"></td>
	<tr><td><font color="yellow">Series</font></td><td><input type="text" name="series"></td>
	<tr><td><font color="yellow">OS</font></td><td><input type="text" name="os"></td>
	<tr><td><font color="yellow">Genre</font></td><td><input type="text" name="gen"></td>
	<tr><td><font color="yellow">Processor</font></td><td><input type="text" name="pro"></td>
	<tr><td><font color="yellow">Memory</font></td><td><input type="text" name="mem"></td>
	<tr><td><font color="yellow">Graphics Card</font></td><td><input type="text" name="gc"></td>
	<tr><td><font color="yellow">DirectX</font></td><td><input type="text" name="dx"></td>
	<tr><td><font color="yellow">Space Requirements</font></td><td><input type="text" name="hdd"></td>
	<tr><td><font color="yellow">Ratings (Out of 100)</font></td><td><input type="text" name="rat"></td>
	<tr><td><font color="yellow">Description</font></td><td><input type="text" name="desc"></td> 
    </tr>
  
    <tr><td><input type="submit"  value=" Add " onClick="add();"></td>
    <td><input type="reset" value=" Clear "></td>
</table></form>


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