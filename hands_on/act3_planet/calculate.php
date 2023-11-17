<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $data = json_decode(file_get_contents("php://input"));

    // Constants for planet distances (in km) and the speed of light (in km/s)
    $planetDistances = [
        "Mercury" => 57910000,
        "Venus" => 108200000,
        "Earth" => 149600000,
        "Mars" => 227940000,
        "Jupiter" => 778330000,
        "Saturn" => 1424600000,
        "Uranus" => 2873550000,
        "Neptune" => 4501000000,
    ];
    $speedOfLight = 299792;

    $planetA = $data->planetA;
    $planetB = $data->planetB;

    if (isset($planetDistances[$planetA]) && isset($planetDistances[$planetB])) {
        $distance = abs($planetDistances[$planetA] - $planetDistances[$planetB]);
        $travelTime = $distance / $speedOfLight;

        // Send the results back to JavaScript
        echo json_encode(["distance" => $distance, "travelTime" => $travelTime]);
    } else {
        echo json_encode(["error" => "Invalid planet names."]);
    }
}
?>
