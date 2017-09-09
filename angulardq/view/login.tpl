<div class="app-inner login-container">
	<div class="login-content">
		<h1 class="text-center">登录</h1>
		<form name="login" class="form-horizontal container-fluid" ng-submit="goToLogin()">
			<div class="form-group">
				<label class="col-lg-3 control-label">用户名:</label>
				<div class="col-lg-9"><input type="text" class="form-control" placeholder="请输入用户名" ng-model="data.username" name="username" ng-required="true" ng-partten="/^[A-Za-z]{3,10}$/"></div>
			</div>
			<div class="form-group">
				<label class="col-lg-3 control-label">密&emsp;码:</label>
				<div class="col-lg-9"><input type="text" class="form-control" placeholder="请输入密码" ng-model="data.password" name="password" ng-required="true" ng-partten="/\d+.*[a-zA-Z]+|[a-zA-Z]+.*\d+/"></div>
			</div>
			<div class="form-group text-center text-danger">
				<p ng-show="login.username.$dirty && login.username.$invalid">用户名以字母开头，4-10位</p>
				<p ng-show="login.password.$dirty && login.password.$invalid">密码包含字母和数字</p>
			</div>
			<div class="form-group">
				<button class="btn btn-primary active btn-lg" ng-disabled="login.$invalid">登录</button>
			</div>
		</form>	
	</div>
</div>
