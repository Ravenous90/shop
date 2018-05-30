<?php
$dsn = "mysql:host=localhost;port=3306;dbname=shop;charset=utf8";

$options = [
PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
];

$pdo = new PDO($dsn,'root', '', $options);