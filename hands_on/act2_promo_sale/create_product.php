<?php
include('db.php');
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = $_POST['name'];
    $description = $_POST['description'];
    $price = $_POST['price'];

    $query = "INSERT INTO products (name, description, price) VALUES ('$name', '$description', $price)";
    $result = $connection->query($query);

    if ($result) {
        header('Location: products.php');
        exit;
    } else {
        echo "Error creating the product.";
    }
}
?>
