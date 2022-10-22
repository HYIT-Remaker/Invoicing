<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
    <base href="<%=basePath%>" />
        <meta charset="UTF-8" />
        <title>登录</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
		<script type="text/javascript" src="js/login.js"></script>
    </head>
    <body>
        <div class="container">
            <!-- Codrops top bar -->
<%--            <div class="codrops-top">--%>
<%--                <a href="">--%>
<%--                    <strong>&laquo; Previous Demo: </strong>Responsive Content Navigator--%>
<%--                </a>--%>
<%--                <span class="right">--%>
<%--                    <a href=" https://shop114778678.taobao.com">--%>
<%--                        <strong>Recommended</strong>--%>
<%--                    </a>--%>
<%--                </span>--%>
<%--                <div class="clr"></div>--%>
<%--            </div><!--/ Codrops top bar -->--%>
            <header>
                <h1>建材销售管理系统登录页</h1>
				</header>
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="/managerlogin" method="post"> 
                                <h1>登录</h1>
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > 用户名 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: red">${msg}</span></label>
                                    <input id="username" name="username" required="required" type="text" />
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> 密码 </label>
                                    <input id="password" name="password" required="required" type="password"  /> 
                                </p>
                                <p >
									<%--<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> --%>
									<%--Keep me logged in--%>
									<input type="radio" name="user" id="loginkeeping" value="manager" />
									经理
									<input type="radio" name="user" id="loginkeeping" value="employee" />
									员工
					
								</p>
                                <p class="login button"> 
                                    <input type="submit" value="登录" />
                                   <!-- 	<input type="button" class="login-btn" id="submit" value="Login"/> -->
                                   <!-- 	<a class="login-btn" id="submit" style="text-decoration: none;">登录</a>  -->
								</p>
                                <p class="change_link">
									没有注册?
									<a href="register.html" class="to_register">注册</a>
								</p>
                            </form>
                        </div>
                    </div>
                </div>  
            </section>
        </div>
        <div class="loading">
<%--	<div class="mask">--%>
<%--		<div class="loading-img">--%>
<%--		<img src="images/loading.gif" width="31" height="31">--%>
<%--		</div>--%>
	</div>
</div>
    </body>
<%--<input type="checkbox" name="user" id="loginkeeping" value="manager" />--%>
<%--manager--%>
<%--<input type="checkbox" name="user" id="loginkeeping" value="employee" />--%>
<%--employee--%>
</html>