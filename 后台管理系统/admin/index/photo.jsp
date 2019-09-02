<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.inputfile {
    width: 0.1px; 
    height: 0.1px; 
    opacity: 0; 
    overflow: hidden; 
    position: absolute; 
    z-index: -1;
}
.inputfile + label {
    height:200px;
    width:700px;
    color: white;
    background-color: black;
    display: inline-block;
}
.inputfile:focus + label,
.inputfile + label:hover {
    background-color: red;
}
.inputfile:focus + label {
    outline: 1px dotted #000; 
    outline: -webkit-focus-ring-color auto 5px;
}
</style>
</head>
<body>
<form action="../../../Photography_Course/uptodb.jsp" method="post"
                        enctype="multipart/form-data">

        <input type="file" name="file" id="file" class="inputfile" accept="image/*"
onchange="imgChange(this);" action="UploadServlet"/>
		<label for="file"></label>
<br />
<input type="submit" value="pload File" />
</form>

<script>

</script>
 <script src="js/jquery-3.2.1.min.js"></script>
</body>
</html>