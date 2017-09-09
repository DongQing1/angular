<div class="app-inner createclass">
	<div class="create-inner">
		<h1>添加栏目</h1>
		<form name="class" class="form-horizontal container-fluid" ng-submit="createClass()">
			<div class="form-group">
				<label class="control-label col-lg-2 text-right">栏目标题:</label>
				<div class="col-lg-6"><input type="text" class="form-control" placeholder="请输入栏目标题" ng-required="true" ng-model="data.title" name="title"></div>
				<div class="col-lg-4 control-label text-danger text-left" ng-show="class.title.$invalid">必填</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-2 text-right">备&emsp;&emsp;注:</label>
				<div class="col-lg-6"><textarea type="text" class="form-control" rows="3" ng-model="data.content" name="content"></textarea></div>
			</div>
			<div class="form-group">
				<div class="col-lg-5 col-lg-offset-4"><button class="btn btn-primary active btn-lg" ng-disabled="class.$invalid">提交</button></div>
			</div>
		</form>
	</div>
</div>