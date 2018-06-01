<?php require_once('C:/OSPanel/domains/localhost/internet_shop/application/controller/controller.php');
?>
<html>
<head>
    <meta charset="utf-8">
    <title>Product</title>
</head>
<body>
<div id="one_product"><img src=" <?= '../' . $results3['picture'] ?>"></div>

<table border="1">

    <tr>
        <td>Category</td>
        <td><?= $results3['category_name']?></td>
    </tr>
    <tr>
        <td>Name</td>
        <td><?= $results2['name']?></td>
    </tr>
    <tr>
        <td>Model</td>
        <td><?= $results2['model']?></td>
    </tr>
    <tr>
        <td>Price</td>
        <td><?= $results2['price']?></td>
    </tr>
    <tr>
        <td>Size</td>
        <td><?= $results2['size']?></td>
    </tr>
    <tr>
        <td>Colour</td>
        <td><?= $results2['colour']?></td>
    </tr>
    <tr>
        <td>Description</td>
        <td><?= $results2['description']?></td>
    </tr>
</table><br>
<form action="../index.php">
    <input type='button' onclick='history.back(); 'value='Go back'/>
</form>
<?php
?>
</body>
</html>