<?php
$dsn = "mysql:host=localhost;port=3306;dbname=shop;charset=utf8";
$options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
];
$username = 'root';
$password = '';
$url_main = "https://www.citrus.ua";
$url_category = [
    "1" => "/shop/goods/mobile/189/?sfield=price&sorder=desc",
    "2" => "/shop/goods/tabletpc/262/?sfield=price&sorder=desc",
    "3" => "/shop/goods/notebooks/188/?sfield=price&sorder=desc"
];
$page_count = 9;