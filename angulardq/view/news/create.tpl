<div class="app-inner create-news">
	<h1>创建新闻</h1>
	<form name="news" ng-submit="createNews()" class="form-horizontal container-fluid">
		<div class="form-group">
			<label class="col-lg-2 control-label">新闻标题</label>
			<div class="col-lg-5"><input type="text" class="form-control" placeholder="请填写新闻标题" ng-required="true" ng-model="data.title" name="title"></div>
			<div class="col-lg-5 control-label text-danger text-left" ng-show="news.title.$invalid">必填</div>
		</div>
		<div class="form-group">
			<label class="col-lg-2 control-label">新闻作者</label>
			<div class="col-lg-5"><input type="text" class="form-control" placeholder="请填写新闻作者" ng-required="true" ng-model="data.author" name="author"></div>
			<div class="col-lg-5 control-label text-danger text-left" ng-show="news.author.$invalid">必填</div>
		</div>
		<div id="editor"></div>
		<div class="form-group">
			<div class="col-lg-5 col-lg-offset-4"><button class="btn btn-primary active btn-lg" ng-disabled="news.$invalid">提交</button></div>
		</div>
	</form>
</div>