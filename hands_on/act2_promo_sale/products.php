<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
        <h1>Products</h1>
        <div class="row mt-4">

            <?php
            // Include the database connection script (db.php)
            include('db.php');

            // Query the database to retrieve products
            $query = "SELECT * FROM products";
            $result = mysqli_query($connection, $query);

            // Check if there are products in the database
            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                    // Display each product as a Bootstrap card
                    echo '<div class="col-md-4">';
                    echo '<div class="card mb-4">';
                    echo '<img src="img/product1.jpg"' . $row['image'] . '" class="card-img-top" alt="' . $row['name'] . '">';
                    echo '<div class="card-body">';
                    echo '<h5 class="card-title">' . $row['name'] . '</h5>';
                    echo '<p class="card-text">' . $row['description'] . '</p>';
                    echo '<p class="card-text">₱' . $row['price'] . '</p>';
                    echo '</div>';
                    echo '</div>';
                    echo '</div>';
                }
            } else {
                echo "No products found.";
            }

            // Close the database connection
            mysqli_close($connection);
            ?>

        </div>
    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</html>