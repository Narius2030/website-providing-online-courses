<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang Chủ</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="./templates/CSS/descride.css">
<link rel="stylesheet" type="text/css" href="./templates/CSS/cart.css">
<link href="./templates/CSS/main.css" type="text/css" rel="stylesheet">
<link href="./templates/CSS/style.css" type="text/css" rel="stylesheet">
<link href="./templates/CSS/course.css" type="text/css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link href="./templates/CSS/submitprac.css" type="text/css"
	rel="stylesheet">
<script src="./templates/JavaScript/script.js"></script>
</head>
<body>
	<div class="" id="app">
		<header class="header">
			<div class="top_bar">
				<div class="drawer-toggle">
					<button style="border: none;" class="btn btn-toggle">
						<span class="fa-solid fa-bars"></span>
					</button>
				</div>

				<div class="flex-wrapper">
					<div class="intro">
						<div class="intro_item">
							<a href="#" class="intro_toggle"> <span> <img
									src="https://utex.hcmute.edu.vn/theme/image.php/maker/theme/1692144561/grid-icon-inverse"
									alt="#">
							</span> <span>
									<div class="intro-text">Hướng dẫn (dành cho Giảng viên)</div>
									<div class="border_bottom"></div>
							</span>
							</a>
							<ul class="menu_list">
								<!-- <div ></div> -->
								<li class="menu_list_item"><a href="#">Hướng dẫn Backup
										và Restore khóa học</a></li>
								<li class="menu_list_item"><a href="#">Hướng dẫn Backup
										và Restore khóa học</a></li>
								<li class="menu_list_item"><a href="#">Hướng dẫn Backup
										và Restore khóa học</a></li>
								<li class="menu_list_item"><a href="#">Hướng dẫn Backup
										và Restore khóa học</a></li>
							</ul>
						</div>
						<ul class="social-media-list list-inline">
							<li class="list-inline-item"><a href="#"> <i
									class="fa-solid fa-earth-americas"></i>
							</a></li>
							<li class="list-inline-item"><a href="#"> <i
									class="fa-brands fa-facebook-f"></i>
							</a></li>
						</ul>
					</div>

					<div class="utilities">
						<div class="utilities-inner">
							<ul class="d-flex usernav p-0 ml-2 mb-0 align-items-center">
								<c:if test="${not empty hocvien.manguoidung}">
									<li class="mr-3">
										<div class="show_info">
											<i class="fa-solid fa-cart-shopping"></i>
											<div class="show_info__figure">${countkhoahoc.numberofcourse}</div>
											<div class="my_course">
												<div class="pseudo_class"></div>
												<div class="my_course__header">
													<h5>Giỏ hàng của tôi</h5>
													<a href="ShowInforCart?Id=${hocvien.manguoidung}">Xem
														tất cả</a>
												</div>
												<ul class="my_course__list">
													<c:forEach var="giohangcuatoi" items="${dsgiohang}">
														<div class="my_course__detail">
															<div class="my_sourse__item">
																<a href="#"> <img
																	src="https://files.fullstack.edu.vn/f8-prod/courses/13/13.png"
																	alt="react">
																</a>
															</div>
															<div class="my_course__info">
																<span> <a href="#">${giohangcuatoi.getKhoahoc().getTenkhoahoc()}</a>
																</span> <span class="info_time"> Xuất bản
																	:${giohangcuatoi.getKhoahoc().getNgayphathanh()}</span>
															</div>
															<div class="my_course__action">
																<div class="my_course__buy">
																	<a
																		href="paycourseinfo?makhoahoc=${giohangcuatoi.getKhoahoc().getMakhoahoc()}">Buy</a>
																</div>

																<div class="my_course__delete">
																	<a
																		href="DeleteCourse?makhoahoc=${giohangcuatoi.getKhoahoc().getMakhoahoc()} &id=${hocvien.manguoidung}">Xoá</a>
																</div>
															</div>
														</div>
													</c:forEach>
												</ul>
											</div>
										</div>
									</li>
									<li class="mr-3">
										<div class="">
											<i class="fa-solid fa-bell"></i>
										</div>
									</li>
								</c:if>

								<li class="d-flex"><c:choose>
										<c:when test="${ not empty hocvien.manguoidung}">
											<div class="usermenu">
												<c:choose>
													<c:when test="${not empty thongtin}">
														<span>${thongtin.hoten}</span>
														<div class="icon_name">
															<span>${fn:substring(thongtin.hoten,0,1)}</span>
														</div>
													</c:when>
													<c:otherwise>
														<span>${hocvien.hoten}</span>
														<div class="icon_name">
															<span>${fn:substring(hocvien.hoten,0,1)}</span>
														</div>
													</c:otherwise>
												</c:choose>
												<div class="border_bottom"></div>
												<ul class="setting my_course">
													<div style="right: -20px; top: -10px;" class="pseudo_class"></div>
													<li class="setting__item"><a href="myprofiles"> <span>Hồ
																sơ cá nhân</span> <i class="fa-solid fa-id-card"></i>
													</a></li>
													<li class="setting__item"><a href="myprofiles"> <span>Chứng
																chỉ</span> <i class="fa-solid fa-award"></i>
													</a></li>

													<li class="setting__item"><a href="myprofiles"> <span>Cần
																trợ giúp</span> <i class="fa-solid fa-circle-question"></i>
													</a></li>
													<li class="setting__item"><a href="myprofiles"
														onclick="scrollToElement('.personal_email')"> <span>Đổi
																mật khẩu</span> <i class="fa-solid fa-lock"></i>
													</a></li>
													<li class="setting__item"><a href="#"
														onclick="testConfirmDialog()"> <span>Đăng xuất</span>
															<i class="fa-solid fa-right-to-bracket"></i>
													</a></li>
												</ul>
											</div>
										</c:when>
										<c:when test="${ not empty giangvien.manguoidung}">
											<div class="usermenu">
												<c:choose>
													<c:when test="${not empty thongtin}">
														<span>${thongtin.hoten}</span>
														<div class="icon_name">
															<span>${fn:substring(thongtin.hoten,0,1)}</span>
														</div>
													</c:when>
													<c:otherwise>
														<span>${giangvien.hoten}</span>
														<div class="icon_name">
															<span>${fn:substring(giangvien.hoten,0,1)}</span>
														</div>
													</c:otherwise>
												</c:choose>
												<div class="border_bottom"></div>
												<ul class="setting my_course">
													<div style="right: -20px; top: -10px;" class="pseudo_class"></div>
													<li class="setting__item"><a href="myprofiles"> <span>Hồ
																sơ cá nhân</span> <i class="fa-solid fa-id-card"></i>
													</a></li>
													<li class="setting__item"><a href="myprofiles"> <span>Chứng
																chỉ</span> <i class="fa-solid fa-award"></i>
													</a></li>

													<li class="setting__item"><a href="myprofiles"> <span>Cần
																trợ giúp</span> <i class="fa-solid fa-circle-question"></i>
													</a></li>
													<li class="setting__item"><a href="myprofiles"
														onclick="scrollToElement('.personal_email')"> <span>Đổi
																mật khẩu</span> <i class="fa-solid fa-lock"></i>
													</a></li>
													<li class="setting__item"><a href="#"
														onclick="testConfirmDialog()"> <span>Đăng xuất</span>
															<i class="fa-solid fa-right-to-bracket"></i>
													</a></li>
												</ul>
											</div>
										</c:when>
										<c:otherwise>
											<a href="login"><button style="display: block;"
													class="btn btn-success login_taikhoan">Đăng Nhập</button></a>
										</c:otherwise>
									</c:choose></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</header>
		<section class="main">
			<div class="row">
				<nav class="col-2">
					<div class="sidebar sidebar_study">
						<div style="justify-content: center;" class="branding-inner">
							<a style="margin-top: 0;" href="homepages" class="site-name">
								<img class="site-logo" src="./templates/Images/logo.png"
								alt="UTEX-HCMUTE">
							</a>
						</div>

						<div class="nav_drawer home_system">
							<div>React Basic</div>
						</div>
						<div class="nav_drawer calendar nav_drawer__course">
							<button class="btn btn_course">
								<i class="fa-solid fa-chevron-down"></i>
								<div style="margin: 0;" class="btn_course__content">Course
									Material</div>
							</button>
							<ul class="list_timer">
								<c:forEach var="baihoc" items="${dsbaihoc}">
									<li class="my-lesson__detail"><a
										href="Find-Lesson?mabaihoc=${baihoc.mabaihoc}"
										onclick="ShowOption('page_study','page-forum', 'page-message', 'page-note')"
										> <span>${baihoc.tenbaihoc}</span></a>
										<!-- Các nút chức năng -->
										<div class="my-lesson-action">
											<c:if test="${not empty giangvien.manguoidung}">
												<div class="my-lesson__buy">
													<a href="edit-lesson-info?mabaihoc=${baihoc.mabaihoc}"
														style="padding: 0 4px;" class="link-buy">Edit</a>
												</div>
												<div class="my-lesson__delete" style="margin-left: 0;">
													<a href="remove-lesson?mabaihoc=${baihoc.mabaihoc}"
														style="padding: 0 4px;">Delete</a>
												</div>
											</c:if>
										</div></li>
								</c:forEach>
							</ul>
						</div>
						
						<c:if test="${not empty giangvien.manguoidung}">
							<div class="nav_drawer home_file">
								<a href="create-lesson-info?makhoahoc=${makhoahoc}" 
								> <i
									class="fa-regular fa-file"></i> <span>Create Lesson</span>
								</a>
							</div>
						</c:if>
						<div class="nav_drawer home_file">
							<a href="#" onclick="ShowOption('page-note','page_study', 'page-message', 'page-forum')"> <i class="fa-regular fa-file"></i> <span>Notes</span>
							</a>
						</div>
						<div class="nav_drawer home_file">
							<a href="#" onclick="ShowOption('page-forum','page_study', 'page-message', 'page-note')"> <i class="fa-regular fa-file"></i> <span>Discussion
									Forums</span>
							</a>
						</div>
						<div class="nav_drawer home_file">
							<a href="#" onclick="ShowOption('page-message','page_study', 'page-note', 'page-forum')"> <i class="fa-regular fa-file"></i> <span>Messages</span>
							</a>
						</div>
						<div class="nav_drawer home_file">
							<a href="#"> <i class="fa-regular fa-file"></i> <span>Resourses</span>
							</a>
						</div>
					</div>
				</nav>
				<c:choose>
					<c:when test="${not empty lesson}">
						<article class="col-10">
							<div class="page_study">
								<div class="branding-inner">
									<div class="course_name">${lesson.tenbaihoc}</div>
									<div class="date_course">
										<span>Đã đăng vào :</span> <span> ${lesson.ngaydang} *
										</span> <span>Thời lượng :</span> <span>
											${lesson.thoigianhoanthanh} phút</span>
									</div>
								</div>
								<div class="content-course">
									<div class="content_text">
										<div class="content_item">
											<div class="content_header">
												<div>Nội dung bài học</div>
												<div class="content_progress">
													<i class="fa-solid fa-graduation-cap"></i>
													<c:choose>
														<c:when test="${not empty trangthai}">
															<span>${trangthai.trangthai}</span>
														</c:when>
														<c:otherwise>
															<span>Pending</span>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
											<div class="content_main">
												<div class="container_content">${lesson.noidungbaihoc}</div>
												<div class="container_content">
													<c:if test="${not empty dstailieu}">
														<c:forEach var="tailieu" items="${dstailieu}">
															<label>File:</label>
															<a
																href="./templates/Resource/ResourceDocument/${tailieu.duongdanluutru}">
																${tailieu.duongdanluutru}</a>
															<c:if test="${not empty giangvien.manguoidung}">
																<a href="find-document?matailieu=${tailieu.matailieu}">
																	Edit</a>
															</c:if>
														</c:forEach>
													</c:if>
												</div>
												<c:if test="${not empty giangvien.manguoidung}">
													<div class="container_content">
														<a href="create-document?mabaihoc=${lesson.mabaihoc}">
															Create</a>
													</div>
												</c:if>
											</div>
											<button class="btn btn-primary btn-mask"
												onclick="MaskDone(${lesson.mabaihoc})">Mask as
												complete</button>
										</div>
									</div>
								</div>

								<!-- Đang làm chỗ này -->
								<form id="upload-form" action="Submit-Practice" method="post"
									enctype="multipart/form-data">
									<div id="drop-area">
										<h1>Kéo và Thả File</h1>
										<p>Thả file vào đây hoặc nhấn vào để chọn file.</p>
										<input type="file" id="file-input" name="file" multiple />
										<ul id="file-list"></ul>
										<input type="submit" id="submit-button" value="Submit"
											onclick="uploadFile()" />
									</div>
								</form>

								<script>
									$(document)
											.ready(
													function() {
														var dropArea = $('#drop-area');
														var fileList = $('#file-list');
														var submitButton = $('#submit-button');

														dropArea
																.on(
																		'dragover',
																		function(
																				e) {
																			e
																					.preventDefault();
																			dropArea
																					.addClass('drag-over');
																		});

														dropArea
																.on(
																		'dragleave',
																		function(
																				e) {
																			e
																					.preventDefault();
																			dropArea
																					.removeClass('drag-over');
																		});

														dropArea
																.on(
																		'drop',
																		function(
																				e) {
																			e
																					.preventDefault();
																			dropArea
																					.removeClass('drag-over');

																			var files = e.originalEvent.dataTransfer.files;
																			handleFiles(files);
																		});

														$('#file-input')
																.on(
																		'change',
																		function() {
																			var files = $(this)[0].files;
																			handleFiles(files);
																		});

														submitButton
																.on(
																		'click',
																		function() {
																			// Thực hiện xử lý khi nhấn nút Submit
																			saveFiles();
																		});

														function handleFiles(
																files) {
															for (var i = 0; i < files.length; i++) {
																var file = files[i];
																var listItem = $('<li class="file-item">'
																		+ file.name
																		+ '<button class="delete-button" data-index="' + i + '">Xóa</button></li>');
																fileList
																		.append(listItem);

																// Đăng ký sự kiện xóa file khi nhấn nút Xóa
																listItem
																		.find(
																				'.delete-button')
																		.on(
																				'click',
																				function() {
																					var index = $(
																							this)
																							.data(
																									'index');
																					removeFile(index);
																				});
															}
														}

														function removeFile(
																index) {
															// Xóa file khỏi danh sách
															$('#file-list li')
																	.eq(index)
																	.remove();
														}

														function saveFiles() {
															var files = $('#file-list li');
															var formData = new FormData(
																	$('#upload-form')[0]);

															$
																	.ajax({
																		type : 'POST',
																		url : '/upload/files',
																		data : formData,
																		contentType : false,
																		processData : false,
																		success : function(
																				response) {
																			alert(response);
																			// Thêm code xử lý sau khi lưu thành công
																		},
																		error : function(
																				error) {
																			console
																					.error(error);
																			alert('Error occurred while saving files.');
																		}
																	});
														}
													});
								</script>
								<!-- Tới đây nè -->
							</div>
							<!-- NOTES -->
							<div class="page-note page-common active">
								<div class="page-content">
									<h2>Notes</h2>
									<div class="page-content-filter">
										<h5>Filter</h5>
										<select class="form-select"
											aria-label="Default select example">
											<option selected>All notes</option>
											<option value="1">Introduction to Image and Video
												Processing</option>
											<option value="2">Signals and Systems</option>
											<option value="3">Fourier Transform and Sampling</option>
											<option value="4">Introduction to Image and Video
												Processing</option>
											<option value="5">Signals and Systems</option>
											<option value="6">Fourier Transform and Sampling</option>
										</select>
									</div>

									<div class="page-note-icon">
										<img
											src="	https://coursera_assets.s3.amazonaws.com/learner/icon_note.svg"
											alt="book"> <img
											src="	https://coursera_assets.s3.amazonaws.com/learner/icon_highlight.svg"
											alt="book">
									</div>

									<div class="page-notice">You have not added any notes
										yet. Notes can be created from video pages.</div>
								</div>
							</div>
							
							<!-- Forum -->
							<div class="page-forum page-common active">
								<div class="page-content">
									<h2>Forum</h2>
									<div class="page-content-form">
										<input class="form-control" type="text"
											placeholder="Search Forum" />
										<button class="btn btn-primary">Search</button>
										<button class="btn btn-outline-primary">Create Post</button>
									</div>
									<div class="page-title">
										<div class="page-title-item">
											<h6>Posts for you</h6>
											<ul class="page-title-list">
												<li class="title-item">
													<div class="title-hook">Week2</div>
													<h5 class="title-item-content">
														<a href="#">Why the rational number condition for
															discrete complex periodic signals?</a>
													</h5>
													<div>
														<span>In the "Complex Exponential Signals" video,
															it was mentioned that 2*pi/omega has to be a rational
															number for the complex exponential to be periodic. Why
															does it h...</span>
													</div>
													<div class="page-title-action">
														<div class="page-active">
															<i class="fa-solid fa-thumbs-up"></i>
															<div>Like 5</div>
														</div>
														<div class="page-active">
															<i class="fa-solid fa-reply"></i>
															<div>Reply 2</div>
														</div>
													</div>
												</li>
												<li class="title-item">
													<div class="title-hook">Week2</div>
													<h5 class="title-item-content">
														<a href="#">Why the rational number condition for
															discrete complex periodic signals?</a>
													</h5>
													<div>
														<span>In the "Complex Exponential Signals" video,
															it was mentioned that 2*pi/omega has to be a rational
															number for the complex exponential to be periodic. Why
															does it h...</span>
													</div>
													<div class="page-title-action">
														<div class="page-active">
															<i class="fa-solid fa-thumbs-up"></i>
															<div>Like 5</div>
														</div>
														<div class="page-active">
															<i class="fa-solid fa-reply"></i>
															<div>Reply 2</div>
														</div>
													</div>
												</li>
											</ul>
										</div>
									</div>
									<div class="page-note-icon">
										<img
											src="	https://coursera_assets.s3.amazonaws.com/learner/icon_note.svg"
											alt="book"> <img
											src="	https://coursera_assets.s3.amazonaws.com/learner/icon_highlight.svg"
											alt="book">
									</div>

									<div class="page-notice">You have not added any notes
										yet. Notes can be created from video pages.</div>
								</div>
							</div>
							<!-- Messages-->
							<div class="page-message page-common active">
								<div class="page-content">
									<h2>Messages</h2>

									<div class="page-title">
										<div class="page-title-item">
											<ul class="page-title-list">
												<li class="title-item">
													<div class="title-message">
														<i class="fa-solid fa-comment-dots"></i>
													</div>
													<h5 class="title-item-content">
														<a href="#">Why the rational number condition for
															discrete complex periodic signals?</a>
													</h5>
													<div>
														<span>In the "Complex Exponential Signals" video,
															it was mentioned that 2*pi/omega has to be a rational
															number for the complex exponential to be periodic. Why
															does it h...</span>
													</div>
													<div class="page-title-action">
														<div class="page-active">
															<i class="fa-solid fa-thumbs-up"></i>
															<div>Like 5</div>
														</div>
														<div class="page-active">
															<i class="fa-solid fa-reply"></i>
															<div>Reply 2</div>
														</div>
													</div>
												</li>
												<li class="title-item">
													<div class="title-hook">Week2</div>
													<h5 class="title-item-content">
														<a href="#">Why the rational number condition for
															discrete complex periodic signals?</a>
													</h5>
													<div>
														<span>In the "Complex Exponential Signals" video,
															it was mentioned that 2*pi/omega has to be a rational
															number for the complex exponential to be periodic. Why
															does it h...</span>
													</div>
													<div class="page-title-action">
														<div class="page-active">
															<i class="fa-solid fa-thumbs-up"></i>
															<div>Like 5</div>
														</div>
														<div class="page-active">
															<i class="fa-solid fa-reply"></i>
															<div>Reply 2</div>
														</div>
													</div>
												</li>
											</ul>
										</div>
									</div>
									<div class="page-note-icon">
										<img
											src="	https://coursera_assets.s3.amazonaws.com/learner/icon_note.svg"
											alt="book"> <img
											src="	https://coursera_assets.s3.amazonaws.com/learner/icon_highlight.svg"
											alt="book">
									</div>

									<div class="page-notice">You have not added any notes
										yet. Notes can be created from video pages.</div>
								</div>
							</div>
							<footer class="footer">
								<section class="footer_list">
									<section class="footer_item">
										<div class="footer_column">
											<div class="footer_header">
												<a class="nav_item_link" href="#">
													<div>OnCourse</div>
												</a>
												<h5>Dạy lập trình</h5>
											</div>
											<p class="footer_contact">Điện thoại: 0246.329.1102
												Email: contact@fullstack.edu.vn Số 11D, lô A10, khu đô thị
												Nam Trung Yên, Phường Yên Hòa, Quận Cầu Giấy, TP. Hà Nội</p>
										</div>
									</section>
									<section class="footer_item">
										<div class="footer_column">
											<div class="footer_header">
												<h5>Về Oncourse</h5>
											</div>
											<ul class="footer_info">
												<li><a href="#">Giới thiệu</a></li>
												<li><a href="#">Liên hệ</a></li>
												<li><a href="#">Điều khoản</a></li>
												<li><a href="#">Bảo mật</a></li>
												<li><a href="#">Cơ hội việc làm</a></li>
											</ul>
										</div>
									</section>
									<section class="footer_item">
										<div class="footer_column">
											<div class="footer_header">
												<h5>Sản phẩm</h5>
											</div>
											<ul class="footer_info">
												<li><a href="#">Trang dạy học số</a></li>
												<li><a href="#">Trang đăng ký tài khoản</a></li>
												<li><a href="#">Trang giới thiệu khóa học</a></li>
												<li><a href="#">Trang thanh toán</a></li>

											</ul>
										</div>
									</section>
									<section class="footer_item">
										<div class="footer_column">
											<div class="footer_header">
												<h5>Công cụ</h5>
											</div>
											<ul class="footer_info">
												<li><a href="#">Github</a></li>
												<li><a href="#">VSCODE</a></li>
												<li><a href="#">Tomcat</a></li>
												<li><a href="#">Eclipse</a></li>
												<li><a href="#">Libary</a></li>
											</ul>
										</div>
									</section>
									<section class="footer_item">
										<div class="footer_column">
											<div class="footer_header">
												<h5>Công ty cổ phần công nghệ giáo dục Oncourse</h5>
											</div>
											<ul class="footer_info">
												<li><a href="#">Mã số thuế: 0109922901</a></li>
												<li><a href="#">Ngày thành lập: 04/03/2022</a></li>
												<li>
													<p>Lĩnh vực: Công nghệ, giáo dục, lập trình. Oncourse
														xây dựng và phát triển những sản phẩm mang lại giá trị cho
														cộng đồng.</p>
												</li>

											</ul>
										</div>
									</section>

								</section>
								<section class="footer_nav">
									<div class="footer_nav__info">© 2018 - 2023 Oncourse. Nền
										tảng học lập trình hàng đầu Việt Nam</div>
									<div class="footer_nav__icon">
										<i class="fa-brands fa-square-youtube"></i> <i
											class="fa-brands fa-square-facebook"></i> <i
											class="fa-brands fa-tiktok"></i>
									</div>
								</section>
							</footer>
						</article>
					</c:when>
				</c:choose>
			</div>
		</section>
		
	</div>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	<script type="text/javascript">
		window.onload = function() {
			ReloadAlert("${warning}");
			ReloadAlert("${uptailieu}")
		}
	</script>
	<c:set var="warning" value="${null}"></c:set>
	<c:set var="uptailieu" value="${null}"></c:set>
</body>
</html>