<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<style type="text/css">
.container1 {
	background: transparent;
	border: 1px solid #b4f7b5;
	border-radius: 5px;
	margin: 5px;
}
#f1_container1 {
	position: relative;
	width: 200px;
	margin-bottom: 5px;
	margin-left: 5px;
	height: 200px;
	z-index: 1;
}
#f1_container1 {
	perspective: 1000;
}
#f1_card1 {
	width: 100%;
	height: 100%;
	transform-style: preserve-3d;
	transition: all 1.0s linear;
}
#f1_container1:hover #f1_card1 {
	transform: rotateY(180deg);
	box-shadow: -5px 5px 5px white;
}
.face {
	position: absolute;
	width: 100%;
	height: 100%;
	backface-visibility: hidden;
}
.face.back {
	display: block;
	transform: rotateY(180deg);
	box-sizing: border-box;
	padding: 10px;
	color: white;
	text-align: center;
	background-color:transparent;
}
.proname{
	background-color: white;
	font-size: 20px;
	margin-top: 25px;
	color: black;
}
.proprice{
	font-size: 30px;
	margin-top: 40px;
}
.pro{
height: 200px;
width: 200px;
}
.Latest{
padding-top: 5px;
padding-bottom: 5px;
}
</style>
</head>
<body>
	<br>
 </body>
