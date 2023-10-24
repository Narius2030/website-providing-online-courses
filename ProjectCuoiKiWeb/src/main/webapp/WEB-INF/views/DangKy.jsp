<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <link rel="stylesheet" href="./templates/CSS/styledn.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <%String loidangnhap=request.getAttribute("thongbaoloi") +"";
	loidangnhap=(loidangnhap.equals("null"))?"":loidangnhap;%>
</head>
<body>
    <div class="container">
        <div id="form-login" style="margin-top: 20px;">
            <form action="#" method="get">
                <div class="form-list">
                    <div class="form-item">
                        <div class="form-item-login">
                            <div class="form-login-header"><h1>Signup</h1></div>
                            
                            <div class="form-login-input">
                                <label for="username">Tên của bạn?</label>
                                <input type="text" id="username" placeholder="Họ và Tên của bạn"/>
                            </div>
                            <div class="form-login-input">
                                <label for="email">Email</label>
                                <input type="text" id="email" placeholder="Email"/>
                            </div>
                            <div class="form-login-input">
                                <label for="password">Password</label>
                                <input type="password" id="password" placeholder="Create password"/>
                            </div>
                            <div class="form-login-input">
                                <label for="confirmpassword">Confirm Password</label>
                                <input type="password" id="confirmpassword" placeholder="Confirm password"/>
                            </div>

                            <div class="form-login-input">
                                <label for="diachi">Quốc Gia</label>
                                <input type="text" id="diachi" placeholder="Quốc gia"/>
                            </div>
                            <button class="btn" type="submit">Signup</button>
                            <div class="form-login-policy">
                                <p>Already have an account? </p>
                                <a href="./signin.html">Login</a>
                            </div>
                            <div class="form-login-or">
                                <h1>
                                    <span>Or</span>
                                </h1>
                            </div>
                            <div class="header_login-nav">
                                <a href="#">
                                    <i class="fa-brands fa-facebook-f"></i>
                                    <div class="header_login-info">
                                        <span>Login with FaceBook</span>
                                    </div>
                                </a>
                            </div>

                            <div class="header_login-nav logo_google">
                                <a href="#">
                                    <i class="fa-brands fa-google"></i>
                                    <div class="header_login-info">
                                        <span>Login with Google</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>