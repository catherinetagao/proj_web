<?php
// Include the database connection script (db.php)
include('db.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve user input from the form
    $name = $_POST['name'];
    $email = $_POST['email'];
    $product = $_POST['product'];
    $quantity = (int)$_POST['quantity'];

    // Perform basic input validation
    if (empty($name) || empty($email) || empty($product) || $quantity < 1) {
        // Handle validation errors (you can redirect to the form with an error message)
        header('Location: checkout.php?error=1');
        exit;
    }

    // Fetch product price from the database
    $query = "SELECT price FROM products WHERE name = '$product'";
    $result = mysqli_query($connection, $query);

    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $price = $row['price'];

        // Calculate the total price
        $totalPrice = $price * $quantity;

        // Insert the order into the database (assuming you have an 'orders' table)
        $insertQuery = "INSERT INTO orders (name, email, product, quantity, total_price) VALUES ('$name', '$email', '$product', $quantity, $totalPrice)";
        if (mysqli_query($connection, $insertQuery)) {
            // Order successfully inserted into the database
            // You can perform additional actions like sending a confirmation email here

            // Redirect to a thank you page
            header('Location: thank_you.php');
            exit;
        } else {
            // Handle database insertion error
            header('Location: checkout.php?error=2');
            exit;
        }
    } else {
        // Handle product not found error
        header('Location: checkout.php?error=3');
        exit;
    }
} else {
    // Handle invalid request method
    header('Location: checkout.php?error=4');
    exit;
}
?>
