<?php
    require_once 'vendor/autoload.php';

    // init configuration
    $clientID = '626641599606-60dds9mgg3374epvbgb6sj2ui19mgd98.apps.googleusercontent.com';
    $clientSecret = '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';
    $redirectUri = 'http://localhost:8080/burninghotel/logged/home.php';

    // create Client Request to access Google API
    $client = new Google_Client();
    $client->setClientId($clientID);
    $client->setClientSecret($clientSecret);
    $client->setRedirectUri($redirectUri);
    $client->addScope("email");
    $client->addScope("profile");

    // Connect to database
    $hostname = "localhost";
    $username = "root";
    $password = "";
    $database = "BurningHotel";

    $conn = mysqli_connect($hostname, $username, "", $database);