<?php
require_once('C:/OSPanel/domains/localhost/internet_shop/application/model/model.php');

//Получение массива из выборки с таблицы product(все строки)
$stmt = $pdo->prepare("SELECT * FROM product");
$stmt->execute();
$results = $stmt->fetchAll(PDO::FETCH_ASSOC);

//Получение массива из выборки с таблицы category(все строки)
$stmt_category = $pdo->prepare("SELECT * FROM category");
$stmt_category->execute();
$results_category = $stmt_category->fetchAll(PDO::FETCH_ASSOC);

//Подсчет количества строк в таблицах product и category
$total_count = $stmt->rowCount();
$total_count_category = $stmt_category->rowCount();

//Определение количества страниц
$num_pages = ceil($total_count / $page_count);

//Получение номера страницы, id и категории из URL
$page = (empty($_GET['page']) ? 1 : intval($_GET['page']));
$product_id = $_GET['id'];
$category_id = $_GET['category'];

//Определение строки, с которой будет начинаться отображение товаров
$start = $page * $page_count - $page_count;

//Получение строки по id из таблицы product (для отображения полной характеристики одного товара)
$stmt2 = $pdo->prepare("SELECT * FROM product WHERE product_id= ?");
$stmt2->execute(array($product_id));
$results2 = $stmt2->fetch(PDO::FETCH_ASSOC);

//Получение категории из таблицы category по совпадению id товара
//(для отображения категории одного товара(в характеристиках))
$stmt3 = $pdo->prepare("SELECT * FROM product INNER JOIN category ON product.category_id = category.category_id WHERE product.product_id= ?");
$stmt3->execute(array($product_id));
$results3 = $stmt3->fetch(PDO::FETCH_ASSOC);

//Получение массива из выборки с таблицы product для отображения товаров на одной странице (3шт)
$stmt4 = $pdo->prepare("SELECT * FROM product LIMIT $page_count OFFSET $start");
$stmt4->execute();
$results4 = $stmt4->fetchAll(PDO::FETCH_ASSOC);

//Получение массива из выборки с таблицы product при совпадении category_id
//(для отображения пагинации)
$stmt5 = $pdo->prepare("SELECT * FROM product INNER JOIN category ON product.category_id = category.category_id WHERE category.category_id= ? ");
$stmt5->execute(array($category_id));
$results5 = $stmt5->fetchAll(PDO::FETCH_ASSOC);

//Подсчет количества строк в таблице product после фильтра
$count_after_filter = $stmt5->rowCount();

//Определение количества страниц после фильтра
$num_pages_after_filter = ceil($count_after_filter / $page_count);

//Получение массива из выборки с таблицы product при совпадении category_id
//(для отображения товаров на одной странице (3шт) при фильтре)
$stmt6 = $pdo->prepare("SELECT * FROM product INNER JOIN category ON product.category_id = category.category_id WHERE category.category_id= ? LIMIT $page_count OFFSET $start ");
$stmt6->execute(array($category_id));
$results6 = $stmt6->fetchAll(PDO::FETCH_ASSOC);

//Пагинация при всех товарах
function getNumPages($num_pages, $category_id)
{
    if (empty($category_id)) {
        for ($i = 1; $i <= $num_pages; $i++) {
            echo "<a href ='index.php?page=" . $i . "'>" . $i . " </a> ";
        }
    }
}

//Пагинация при фильтре
function getNumPagesWithFilter($num_pages_after_filter, $category_id)
{
    if (!empty($category_id)) {
        for ($i = 1; $i <= $num_pages_after_filter; $i++) {
            echo "<a href ='index.php?category=" . $category_id . "&page=" . $i . "'>" . $i . "</a> ";
        }
    }
}

//Отображение категорий
function getCategories($results_category)
{
    foreach ($results_category as $key => $value) {
        echo "<div id='category'><a href ='index.php?category=" . $value['category_id'] . "'>" . $value['category_name'] . "</a></div><br>";
    }
}

//Отображение списка товаров
function getProductList($results4, $category_id)
{
    if (empty($category_id)) {
        foreach ($results4 as $key => $value) {
            echo '<div id = "product"><a href ="view/product.php?id=' . $value['product_id'] . '">' . $value['name'] . ' ' .
                $value['model'] . '<br><img src=' . $value['picture'] . '><br><br>' . $value['price'] . '</a><br><br></div>';
        }
    }
}

//Отображение списка товаров при фильтре
function getProductListWithFilter($results6, $category_id)
{
    if (!empty($category_id)) {
        foreach ($results6 as $key => $value) {
            echo '<div id = "product"><a href ="view/product.php?id=' . $value['product_id'] . '">' . $value['name'] . ' ' .
                $value['model'] . '<br><img src=' . $value['picture'] . '><br><br>' . $value['price'] . '</a><br><br></div>';
        }
    }
}