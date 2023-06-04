<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<body>



	<!-- Menu on Mobile device -->
	<div class="offcanvas offcanvas-start" tabindex="-1" id="MenuSlide" style="background-color: #171615;">
		<div class="offcanvas-header" data-bs-theme="dark">
			<h5 class="offcanvas-title text-light" id="MenuSlideLabel">Menu</h5>
			<button type="button" class="btn-close" data-bs-dismiss="offcanvas"></button>
		</div>
		<div class="offcanvas-body">
			<div class="col-auto"><a class="text-decoration-none text-light fs-5" href="${url}"><i class="bi bi-house me-2"></i>Home</a></div>
			<hr class="border border-secondary border-1 opacity-75">
			<div class="col-auto">
				<details>
					<summary class="text-light fs-5"><i class="bi bi-book mx-2"></i>Course</summary>
					<ul style="list-style-type: none;">
						<li class="d-flex justify-content-between align-items-center">
							<a class="text-decoration-none text-light fs-6" href="${url}Courses"><i class="bi bi-stack-overflow me-2"></i>Explore</a>
						</li>
						<c:forEach var="phanloai" items="${listPhanloai}" varStatus="loop">
						<li class="d-flex justify-content-between align-items-center">
							<a class="text-decoration-none text-light fs-6" href="${url}Courses?phanloai=${phanloai.idpl}">${phanloai.tenpl}</a>
						  	<span class="badge bg-primary rounded-pill">${phanloai.khoahocs.getSize()}</span>
						</li>
						</c:forEach>
					</ul>
				</details>
			</div>
			<hr class="border border-secondary border-1 opacity-75">
			<div class="col-auto">
				<div class="text-light fs-5"><i class="bi bi-person me-2"></i>
					<c:choose>
						<c:when test="${!empty sessionScope.userSV}">${sessionScope.userSV.ten}</c:when>
						<c:otherwise>Tài khoản</c:otherwise>
					</c:choose>
					<ul style="list-style-type: none;">
						<li><a class="text-decoration-none text-light fs-6" href="${url}SignIn"><i class="bi bi-person-check me-2"></i>Sign In</a></li>
						<li><a class="text-decoration-none text-light fs-6" href="${url}SignUp"><i class="bi bi-person-add me-2"></i>Sign Up</a></li>
						<li><a class="text-decoration-none text-light fs-6" href="${url}MyAcc"><i class="bi bi-person-gear me-2"></i>My Account</a></li>
						<li><a class="text-decoration-none text-light fs-6" href="${url}ResetPass"><i class="bi bi-person-lock me-2"></i>Change Password</a></li>
						<li><a class="text-decoration-none text-light fs-6" href="${url}SignOut"><i class="bi bi-person-exclamation me-2"></i>Sign Out</a></li>
						<li><a class="text-decoration-none text-light fs-6" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="bi bi-person-slash me-2"></i>Delete Account</a></li>
					</ul>
				</div>
			</div>
			<hr class="border border-secondary border-1 opacity-75">
			<div class="col-auto">
				<div class="text-light fs-5"><i class="bi bi-workspace me-2"></i>My Course
					<ul style="list-style-type: none;">
						<li><a class="text-decoration-none text-light fs-6" href="${url}Enrolled"><i class="bi bi-bookmark-check me-2"></i>Course Enrolled</a></li>
						<li><a class="text-decoration-none text-light fs-6" href="${url}Certificates"><i class="bi bi-bookmark-star me-2"></i>My Certificates</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	
	
	<!-- Header on Desktop/Laptop device -->
	<div class="row navbar navbar-expand-lg align-items-center m-0 py-3 text-center navbar-dark" style="font-size: 1vmax;">
		<a class="col-1 navbar-toggler border-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#MenuSlide"><span class="navbar-toggler-icon"></span></a>
		<div class="col-md-6 col-xl-6 collapse navbar-collapse p-0" id="NavMC">
			<div class="col-2 col-xl-1 mx-xl-2 m-0"><a class="text-decoration-none text-light link-info navitem" href="${url}"><img src="/Image/Text.png" class="img-fluid"></a></div>
			<div class="col-auto mx-xl-2 m-0">
				<div class="dropdown">
					<button class="btn dropdown-toggle text-light py-0 navitem" data-bs-toggle="dropdown"><i class="bi bi-book me-2"></i>Course</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="${url}Courses"><i class="bi bi-stack-overflow me-2"></i>Explore</a></li>
						<c:forEach var="phanloai" items="${listPhanloai}" varStatus="loop">
						<li><a class="dropdown-item" href="${url}Courses?phanloai=${phanloai.idpl}">${phanloai.tenpl} <span class="badge bg-primary rounded-pill">${phanloai.khoahocs.getSize()}</span></a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="col-auto mx-xl-2 m-0">
				<div class="dropdown">
					<button class="btn dropdown-toggle text-light py-0 navitem" data-bs-toggle="dropdown"><i class="bi bi-person me-2"></i>
						<c:choose>
							<c:when test="${!empty sessionScope.userSV}">${sessionScope.userSV.ten}</c:when>
							<c:otherwise>Tài khoản</c:otherwise>
						</c:choose>
					</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="${url}SignIn"><i class="bi bi-person-check me-2"></i>Sign In</a></li>
						<li><a class="dropdown-item" href="${url}SignUp"><i class="bi bi-person-add me-2"></i>Sign Up</a></li>
						<li><a class="dropdown-item" href="${url}MyAcc"><i class="bi bi-person-gear me-2"></i>My Account</a></li>
						<li><a class="dropdown-item" href="${url}ResetPass"><i class="bi bi-person-lock me-2"></i>Change Password</a></li>
						<li><a class="dropdown-item" href="${url}SignOut"><i class="bi bi-person-exclamation me-2"></i>Sign Out</a></li>
						<li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="bi bi-person-slash me-2"></i>Delete Account</a></li>
					</ul>
				</div>
			</div>
			<div class="col-auto mx-xl-2 m-0">
				<div class="dropdown">
					<button class="btn dropdown-toggle text-light py-0 navitem" data-bs-toggle="dropdown"><i class="bi bi-workspace me-2"></i>My Course</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="${url}Enrolled"><i class="bi bi-bookmark-check me-2"></i>Course Enrolled</a></li>
						<li><a class="dropdown-item" href="${url}Certificates"><i class="bi bi-bookmark-star me-2"></i>My Certificates</a></li>
					</ul>
				</div>
			</div>
		</div>
		<form class="col col-lg-6 col-xxl-4 d-flex p-0 dropstart needs-validation px-2" role="search" novalidate action="${url}Courses" method="get">
			<input class="form-control me-2" type="search" name="search" placeholder='Search' required>
			<button class="btn btn-outline-primary" type="submit">Search</button>
			<i class="bi bi-{{Theme=='dark'?'moon-stars':'sun'}} fs-4 text-light link-info mx-2" ng-click="ChangeTheme()" role="button"></i>
			<div class="dropdown">
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" role="button" onclick="window.location = window.location.href.split('?')[0] + '?lang=vi'">Tiếng Việt</a></li>
					<li><a class="dropdown-item" role="button" onclick="window.location = window.location.href.split('?')[0] + '?lang=en'">English</a></li>
				</ul>
			</div>
			<i class="bi bi-globe2 fs-4 text-light link-info" role="button" data-bs-toggle="dropdown"></i>
		</form>
	</div>
	
	
	
	
	
	
	

<!-- Modal Delete Account -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5">XÁC NHẬN XOÁ TÀI KHOẢN ???</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			</div>
			<form class="m-0 p-0 needs-validation" novalidate action="${url}DeleteAcc" method="post">
				<div class="modal-body">
					<p class="text-danger fw-bold">
						- Chúng tôi cảnh báo rằng nếu bạn tiếp tục xoá tài khoản, toàn bộ thông tin cá nhân, dữ liệu và quyền truy cập vào các dịch vụ của chúng tôi sẽ bị mất VĨNH VIỄN.<br>
						- Xác nhận tài khoản để đảm bảo quyết định này chính xác. <br>
						- Trong trường hợp thông tin xác nhận không đúng, tài khoản sẽ tự động đăng xuất để bảo vệ an toàn thông tin của bạn.
					</p>
					<p>Vì vậy, hãy cân nhắc kỹ trước khi tiến hành hành động này và đảm bảo rằng đây là quyết định cuối cùng mà bạn muốn thực hiện.</p>
					<div class="form-floating mb-4">
						<input type="text" class="form-control form-control-lg" id="txtUsernameSI" name="username" placeholder="Username" required>
						<label for="txtUsernameSI" class="form-label">Username</label>
						<div class="invalid-feedback">Username invalid</div>
					</div>
			        <div class="form-floating mb-4" ng-init="showPassSI">
						<input type="{{showPassSI?'text':'password'}}" class="form-control form-control-lg" id="txtPass" name="matkhau" placeholder="Password" required>
						<label for="txtPass" class="form-label">Confirm password</label>
						<div class="invalid-feedback">Confirm password invalid</div>
						<div class="form-check is-valid">
							<input type="checkbox" class="form-check-input" id="rdoShowPassSI" ng-model="showPassSI">
							<label class="form-check-label" for="rdoShowPassSI">Show password</label>
						</div>
					</div>
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huỷ</button>
					<button type="submit" class="btn btn-danger">XOÁ TÀI KHOẢN</button>
				</div>
			</form>
		</div>
	</div>
</div>




</body>
</html>