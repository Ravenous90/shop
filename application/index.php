<?php require_once('C:/OSPanel/domains/localhost/internet_shop/application/controller/controller.php');

?>

<html>
<head>
    <meta charset="utf-8">
    <title>Shop</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">

</head>

<body>
    <div id="category_main">
        <h2>Categories: </h2><br>
        <?
        getCategories($results_category);
        ?>
        <form action="index.php">
            <button type="submit">Clear filter</button>
        </form>
    </div>

<br>

<div id="products">
    <?
    getProductList($results4, $category_id);
    getProductListWithFilter($results6, $category_id);
    ?>
</div>

<div id="pagination">
    <?
    getNumPages($num_pages, $category_id);
    getNumPagesWithFilter($num_pages_after_filter, $category_id)
    ?>
</div>

</body>
</html>