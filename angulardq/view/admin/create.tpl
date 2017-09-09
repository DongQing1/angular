<div class="app-inner createteacher">
	<h1>添加管理员</h1>
	<form name="admin" class="form-horizontal container-fluid">
		<div class="form-group">
			<label class="col-lg-2 control-label text-right">用户名：</label>
			<div class="col-lg-5"><input type="text" class="form-control" placeholder="请输入管理员姓名" ng-model="data.username" name="username" ng-required="true" ng-pattern="/^\w{4,10}$/"></div>
			<div class="col-lg-5 control-label text-danger text-left" ng-show="admin.username.$invalid && admin.username.$dirty">4-10位字母数字下划线</div>
		</div>
		<div class="form-group">
			<label for="" class="control-label col-lg-2">密&emsp;码：</label>
			<div class="col-lg-5"><input type="text" class="form-control" placeholder="请输入密码" ng-model="data.password" name="password" ng-pattern="/[a-zA-Z]+.*\d+|\d+.*[a-zA-Z]+/" ng-required="true"></div>
			<div class="col-lg-5"><span class="text-danger control-label" ng-show="regist.password.$invalid && admin.password.$dirty">包含数字和字母</span></div>
		</div>
		<div class="form-group">
			<label class="col-lg-2 control-label text-right">性&emsp;别：</label>
			<div class="col-lg-6">
				<label>男 <input type="radio" ng-model="data.sex" value="man"></label>&emsp;
				<label>女 <input type="radio" ng-model="data.sex" value="woman"></label>
			</div>
		</div>
		<div class="form-group">
			<label class="col-lg-2 control-label text-right">手机号：</label>
			<div class="col-lg-5"><input type="text" class="form-control" placeholder="请输入手机号码" ng-model="data.tel" name="tel" ng-required="true" ng-pattern="/^1\d{10}$/"></div>
			<div class="col-lg-5 control-label text-danger text-left" ng-show="admin.tel.$invalid && admin.tel.$dirty">11位数字，且必须以1开头</div>
		</div>
		<div class="form-group">
			<label class="col-lg-2 control-label text-right">邮&emsp;箱：</label>
			<div class="col-lg-5"><input type="text" class="form-control" ng-model="email" name="email" ng-required="true" ng-pattern="/^[\w\.]+@\w+\.\w+$/"></div>
			<div class="col-lg-5 control-label text-danger text-left" ng-show="admin.email.$invalid && admin.email.$dirty">例如:demo@example.com</div>
		</div>
		<div class="form-group">
			<div class="col-lg-5 col-lg-offset-4"><button class="btn btn-primary active btn-lg" ng-disabled="admin.$invalid">提交</button></div>
		</div>
	</form>
</div>