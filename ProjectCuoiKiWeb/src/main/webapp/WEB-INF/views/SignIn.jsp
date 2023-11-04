<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang Đăng Nhập</title>
<link rel="stylesheet" href="./templates/CSS/styledn.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script type="text/javascript" src=./templates/JavaScript/script.js></script>
</head>


<body>
	<div class="container">
		<div id="form-login">
			<form action="login" method="post" onsubmit="return validateForm()">
				<div class="form-list">
					<div class="form-item">
						<div class="form-item-login">
							<div class="form-login-header">
								<h1>Login</h1>
							</div>
							<br />
							<p></p>
							<div class="form-login-input">
								<input type="text" placeholder="Email" name="Email" required />
							</div>
							<div class="form-login-input">
								<input type="password" placeholder="Password" name="Password"
									required />
							</div>
							<div class="form-login-input">
								<label for="loaitk">Loại Tài Khoản </label>
							</div>
							<label for="tkgiaovien">Giáo Viên</label> <input type="checkbox"
								name="tkgiaovien" id="tkgiaovien" name="tkgiaovien"
								onchange="handleCheckboxChange(this)"> <label
								for="Tkhocvien">Học Viên</label> <input type="checkbox"
								name="tkhocvien" id="tkhocvien" name="tkhocvien"
								onchange="handleCheckboxChange(this)">
							<div class="form-notice">
								<a href="forgetpassword">Forgot Password?</a>
							</div>
							<input class="btn" type="submit" value="Login">
							<div class="form-login-policy">
								<p>Don't have an account?</p>
								<a href="dang-ky">Signup</a>
							</div>
							<div class="form-login-or">
								<h1>
									<span>Or</span>
								</h1>
							</div>
							<div class="header_login-nav">
								<a href="#"> <i class="fa-brands fa-facebook-f"></i>
									<div class="header_login-info">
										<span>Login with FaceBook</span>
									</div>
								</a>
							</div>

							<div class="header_login-nav logo_google">
								<a href="#"> <i class="fa-brands fa-google"></i>
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
	<script>
		window.onload = function() {
			ReloadAlert("${thongbaodung}");
			ReloadAlert("${loidangnhap}")
		}
	</script>

</body>
</html>