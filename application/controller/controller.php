<?php
require_once ('model/db.php');
require_once ('model/config.php');


// Getting array from table product (all rows)
$stmt = $pdo->prepare("SELECT * FROM product");
$stmt->execute();
$results = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Getting array from table category (all rows)
$stmt_category = $pdo->prepare("SELECT * FROM category");
$stmt_category->execute();
$results_category = $stmt_category->fetchAll(PDO::FETCH_ASSOC);

// Counting rows from table product and category
$total_count = $stmt->rowCount();
$total_count_category = $stmt_category->rowCount();

// Definition count of rows
$num_pages = ceil($total_count / $page_count);

// Getting  page's number, id and category from URL
$page = (empty($_GET['page']) ? 1 : intval($_GET['page']));
$product_id = $_GET['id'];
$category_id = $_GET['category'];

// Definition start row for view products
$start = $page * $page_count - $page_count;

// Getting rows by id from table product (for view all information about one product)
$stmt2 = $pdo->prepare("SELECT * FROM product WHERE product_id= ?");
$stmt2->execute(array($product_id));
$results2 = $stmt2->fetch(PDO::FETCH_ASSOC);

// Getting category from table category by id
// (for view category)
$stmt3 = $pdo->prepare("SELECT * FROM product INNER JOIN category ON product.category_id = category.category_id WHERE product.product_id= ?");
$stmt3->execute(array($product_id));
$results3 = $stmt3->fetch(PDO::FETCH_ASSOC);

// Getting array from table product for view products on one page
$stmt4 = $pdo->prepare("SELECT * FROM product LIMIT $page_count OFFSET $start");
$stmt4->execute();
$results4 = $stmt4->fetchAll(PDO::FETCH_ASSOC);

// Getting array form table product by category_id
// (for view pagination)
$stmt5 = $pdo->prepare("SELECT * FROM product INNER JOIN category ON product.category_id = category.category_id WHERE category.category_id= ? ");
$stmt5->execute(array($category_id));
$results5 = $stmt5->fetchAll(PDO::FETCH_ASSOC);

// Counting rows from table product after filter
$count_after_filter = $stmt5->rowCount();

// Definition pages count after filter
$num_pages_after_filter = ceil($count_after_filter / $page_count);

// Getting array from table product by category_id)
// (for view products on one page with filter)
$stmt6 = $pdo->prepare("SELECT * FROM product INNER JOIN category ON product.category_id = category.category_id WHERE category.category_id= ? LIMIT $page_count OFFSET $start ");
$stmt6->execute(array($category_id));
$results6 = $stmt6->fetchAll(PDO::FETCH_ASSOC);

// Pagination with all products
function getNumPages($num_pages, $category_id)
{
    if (empty($category_id)) {
        for ($i = 1; $i <= $num_pages; $i++) {
            echo "<a href ='index.php?page=" . $i . "'>" . $i . " </a> ";
        }
    }
}

// Pagination with filter
function getNumPagesWithFilter($num_pages_after_filter, $category_id)
{
    if (!empty($category_id)) {
        for ($i = 1; $i <= $num_pages_after_filter; $i++) {
            echo "<a href ='index.php?category=" . $category_id . "&page=" . $i . "'>" . $i . "</a> ";
        }
    }
}

// View category
function getCategories($results_category)
{
    foreach ($results_category as $key => $value) {
        echo "<div id='category'><a href ='index.php?category=" . $value['category_id'] . "'>" . $value['category_name'] . "</a></div><br>";
    }
}

// View products list
function getProductList($results4, $category_id)
{
    if (empty($category_id)) {
        foreach ($results4 as $key => $value) {
            echo '<div id = "product"><a href ="index.php?action=product&id=' . $value['product_id'] . '">' . $value['name'] . ' ' .
                $value['model'] . '<br><img src=' . $value['picture'] . '><br><br>' . $value['price'] . '</a><br><br></div>';
        }
    }
}

// View products list with filter
function getProductListWithFilter($results6, $category_id)
{
    if (!empty($category_id)) {
        foreach ($results6 as $key => $value) {
            echo '<div id = "product"><a href ="index.php?action=product&id=' . $value['product_id'] . '">' . $value['name'] . ' ' .
                $value['model'] . '<br><img src=' . $value['picture'] . '><br><br>' . $value['price'] . '</a><br><br></div>';
        }
    }
}