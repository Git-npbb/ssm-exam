<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
	
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/materialize.min.css">
    <link rel="stylesheet" href="css/tooplate.css">
</head>

<body id="login">
    <div class="container">
        <div class="row tm-register-row tm-mb-35">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 tm-login-l">
                <form action="login.do" method="post" class="tm-bg-black p-5 h-100">
                    <div class="input-field">
                        <input placeholder="请输入账号" id="username" name="eno" type="text" class="validate">
                    </div>
                    <div class="input-field mb-5">
                        <input placeholder="请输入密码" id="password" name="epassword" type="password" class="validate">
                    </div><br>
                    ${msg}<br>
                    
                    <div class="tm-flex-lr">
                        <!-- <a href="#" class="white-text small">Forgot Password?</a> -->
                        <button type="submit" class="waves-effect btn-large btn-large-white px-6 black-text rounded-0">Login</button>
                    </div>
                </form>
            </div>
             <div class="d-none d-sm-block col-xl-6 col-lg-6 col-md-6 col-sm-12 tm-login-r ">
                <header class="font-weight-light tm-bg-black p-5 h-100">
                    <h3 class="mt-0 text-white font-weight-light">登录</h3>
                    <p>欢迎光临本网站</p>
                    <p class="mb-0">请在左侧输入您的账号密码</p>
                </header>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 ml-auto mr-0 text-center">
                <a href="toRegister.do" class="waves-effect btn-large btn-large-white px-4 black-text rounded-0">点击注册</a>
            </div>
        </div>
        <footer class="row tm-mt-big mb-3">
            <div class="col-xl-12 text-center">
                <p class="d-inline-block tm-bg-black white-text py-2 tm-px-5">
                    Copyright &copy;<a href="#" target="_blank" title="login"></a> 
                    <a href="#" title="login" target="_blank">点击登录</a></p>
            </div>
        </footer>
    </div>

    <script src="js/jquery-3.2.1.slim.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <script>
        $(document).ready(function () {
            $('select').formSelect();
        });
    </script>
</body>

</html>