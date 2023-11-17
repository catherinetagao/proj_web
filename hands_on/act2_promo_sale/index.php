<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Promo Sale</title>

    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5 text-center">
        <h1>Welcome to Our Promo Sale</h1>
        <a href="products.php" class="btn btn-primary">View Products</a>
    </div>
    <br>

<?php
include('db.php');
$query = "SELECT * FROM products";
$result = $connection->query($query);
?>
    <div class="container bg-light p-3">
    <a href="" class="btn btn-primary mb-3">Add</a>

    <table class="table">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Image</th>
            <th>Action</th>
        </tr>
        <?php
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row['id'] . "</td>";
            echo "<td>" . $row['name'] . "</td>";
            echo "<td>" . $row['description'] . "</td>";
            echo "<td>₱" . $row['price'] . "</td>";
            echo "<td>" . $row['image'] . "</td>";
            echo "<td><a class='btn btn-success' href='edit_product.php?id=" . $row['id'] . "'>Edit</a> | <a class='btn btn-danger' href='delete_product.php?id=" . $row['id'] . "'>Delete</a></td>";
            echo "</tr>";
        }
        ?>
    </table>
    </div>

    <div>
        <form class="p-3">
            <input type="button" value="Go back!" onclick="history.back()">
        </form>
    </div>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</html>