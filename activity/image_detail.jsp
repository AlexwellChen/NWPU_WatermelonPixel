<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>招新报名</title>
<meta name="description" content="Your Image page description"/>
<link href="https://fonts.googleapis.com/css?family=Arimo:400,600,700" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link rel="shortcut icon" type="image/png" href="images/logo/camera.png">
<link href="styles/main.css" rel="stylesheet">
</head>
<!-- 该页面为首页活动的详情页面 
	 使用servlet上传报名信息，在后台
	 同样使用servlet查询报名信息。
	 
-->

<body id="top">
<div class="page">
    <header>
        <div style="background-color:#F8F3F3">
        </div>
        <div class="pp-header">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container"><a href="index.html" class="navbar-brand"><img src="../images/logo/PA@small.png" class="navbar-brand">西瓜像素</a>   
                </div>
            </nav>
        </div>
    </header>
    <div class="page-content">
        <div class="container">
            <div class="container pp-section">
                <div class="h3 font-weight-normal">摄影学会2019迎新报名</div>
                <img class="img-fluid mt-4" src="../images/contents/display/poster.jpg"/>
                <div class="row mt-5">
                    <div class="col-md-3">
                        <div class="h5">Tags</div>
                        <a class="mr-1 badge badge-primary" href="#">招新</a>
                        <div class="h5 pt-4">Year</div>
                        <p>2019</p>
                    </div>
                    <div class="col-md-9">
                        <h1>你想来吗？</h1>
                        <h2>你想来吗？</h2>
                        <h3>你想来吗？</h3>
                        <h4>你想来吗？</h4>
						<br>
						<br>
						<!-- getRegister为上传报名信息的servlet -->
					<div >
						<form action="../getRegister" method="post" onsubmit="return check()">
							姓名：<input id="name" type="text" name="name"/><br><br>
							学号：<input id="number" type="text" name="number" /><br><br>
							大类：<input id="department" type="text" name="department"><br><br>
							电话：<input id="email" type="text" name="email"><br><br>
							 QQ ：<input id="qqNumber" type="text" name="qqNumber"><br><br>
							<input type="submit" value="提交" class="btn btn-primary" style="margin-left: 10%"/>
						</form>
					</div>
                    </div>
                </div>
            </div>
            <div class="pp-section"></div>
        </div>
    </div>
    <footer class="pp-footer">
        <div class="container py-5">
            <div class="row text-center">    
                <div class="col-md-12">
                    <p class="mt-3">Copyright &copy; 2019 NWPU Photography Association. All rights reserved.</p>
                </div>
		  <div style="width:300px;margin:0 auto; padding:20px 0;">
		  <p> 陕ICP备19016691号-1 </p>
		  <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=61011602000298" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><img src="../images/contents/home/beian.png" style="float:left;"/><p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">陕公网安备 61011602000298号</p></a>
		  </div>                
            </div>
        </div>
    </footer>
</div>
<script src="js/jquery-3.2.1.min.js"></script> 
<script src="js/popper.min.js"></script> 
<script src="js/bootstrap.js"></script> 
<script src="scripts/main.js"></script>
<script type="text/javascript">
	
	function check(){
		if($("#name").val() == ""){
			alert('输入姓名');
			return false;
		}
		if($("#number").val() == ""){
			alert('学号有误');
			return false;
		}
		if($("#department").val() == ""){
			alert('输入大类');
			return false;
		}
		if($("#email").val() == ""){
			alert('输入电话');
			return false;
		}
		if($("qqNumber").val() == ""){
			alert('输入qq');
			return false;
		}
		alert('提交成功');
		return true;
	}
</script>
</body>
</html>