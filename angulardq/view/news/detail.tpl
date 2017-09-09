<div class="app-inner app-news-detail">
	<h1>新闻详情</h1>
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-4 text-right">新闻ID&emsp;:</div>
			<div class="col-lg-8">{{data.id}}</div>
		</div>
		<div class="row">
			<div class="col-lg-4 text-right">新闻标题:</div>
			<div class="col-lg-8">{{data.title}}</div>
		</div>
		<div class="row">
			<div class="col-lg-4 text-right">新闻作者:</div>
			<div class="col-lg-8">{{data.writer}}</div>
		</div>
		<div class="row">
			<div class="col-lg-4 text-right">发布时间:</div>
			<div class="col-lg-8">{{data.date | date : 'yyyy-MM-dd HH:mm:ss'}}</div>
		</div>
		<div class="row">
			<div class="col-lg-4 text-right">新闻内容:</div>
			<div class="col-lg-8">{{data.content}}</div>
		</div>
	</div>
</div>