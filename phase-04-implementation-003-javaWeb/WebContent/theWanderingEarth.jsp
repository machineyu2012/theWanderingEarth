<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.background1 {
	background-image: url(/static/imgs/pic008.jpg);
	background-color: #000000;
}
   div{
                position:absolute;   //必不可少
                left:50%;
                top:50%;
                }
</style>
<script>
	function run(clickedObj) {
		$("#firstline").fadeOut('slow');
		$('#intr')[0].pause();
		$('#poem')[0].play();
		$('#poem-txt').fadeIn('slow');
		 $(function(){
			             
			              $("#poem-txt").animate({
			                top:"+=100px" ,
			                left:"+=100px"
			            },3000);
			            
			        })
		$(clickedObj).animate({
			width : '10px',
			opacity : '0.2',
			left : '1800px',
			top : '100px'
		}, 12000);
		//$('#waiting')[0].play();
		$("#moviebox").show('slow');
		$("#movie")[0].play();
	}
	function onVideoEnd(){
		
		$("#moviebox").fadeOut('slow');
		
		$('#poem-txt').animate({
			bottom : '100px',
			right : '100px'
		}, 18000);
		
		$('#waiting')[0].play();
	}
	function tomove(){
		             
		              $("#move").animate({
		                top:"-=100px" ,
		                left:"-=100px"
		            },3000);
		            
		        }
</script>
	
<meta charset="UTF-8">
<title>The Wandering Earth</title>
<script src="/static/jquery.min.js"></script>
</head>
<body class="background1">
<%@page language="java" import="java.sql.*"%>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
Connection conn= DriverManager.getConnection("jdbc:sqlserver://localhost ; DatabaseName=poemDB ;user=sa ; password=" );
Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
String sql="select * from poemGP"; ResultSet rs=stmt.executeQuery(sql);
while(rs.next())
             {
	String poem1=rs.getString(1);	
	request.setAttribute("poem11",rs.getString(2));
             }
%>


	<audio id="intr" controls="controls"
		src="/static/audio/introduction.mp3" autoplay="autoplay"></audio>
	<audio id="poem" src="/static/audio/wanderingEarch-poem.mp3"
		preload="auto"></audio>
	<span id="firstline" style="font-size: 26px; color: white">大家好，我准备设计和实现一个“<span
		style="font-size: 38px; color: red">流浪地球</span>”的漂亮网页！ 欢迎大家观赏,谢谢！
	</span>
	<audio id="waiting" src="/static/audio/waiting.mp3" preload="auto"></audio>
	<div id="poem-txt"
		style="display: none; font-size: 22px; color: orange; position:absolute; left :10px;top:50px" >
		
	${poem11}

	
	</div>
	
	<img src="/static/imgs/earth.png"
		style="position: absolute; left: 10px; bottom: 10px; width: 200px"
		onclick="run(this);return false" />
	<div id="moviebox" style="margin-top: 100px; display: none"
		align="center">
		<video id="movie" height="500px" controls="controls"
			src="http://vd.yinyuetai.com/sh.yinyuetai.com/uploads/videos/common/74B70168929FF3BC930BAD3647882B83.mp4" onended="onVideoEnd();" />
	</div>
</body>
</html>