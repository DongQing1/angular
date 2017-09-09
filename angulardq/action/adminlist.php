<?php
$data = array(
	array(
		"id" => 1,
		"username" => "小刚",
		"password"=>123,
		"telephone" => "12345678901",
		"sex" => '男',
		"email" => "123.@sina.com"
	),
	array(
		"id" => 2,
		"username" => "小刚",
		"password"=>123,
		"telephone" => "12345678901",
		"sex" => '男',
		"email" => "123.@sina.com"
	),
	array(
		"id" => 3,
		"username" => "小刚",
		"password"=>123,
		"telephone" => "12345678901",
		"sex" => '男',
		"email" => "123.@sina.com"
	),
	array(
		"id" => 4,
		"username" => "小刚",
		"password"=>123,
		"telephone" => "12345678901",
		"sex" => '男',
		"email" => "123.@sina.com"
	),
	array(
		"id" => 5,
		"username" => "小刚",
		"password"=>123,
		"telephone" => "12345678901",
		"sex" => '男',
		"email" => "123.@sina.com"
	)
);
$result = array(
	"errno" => 0,
	"data" => $data
);
echo json_encode($result);