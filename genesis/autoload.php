<?php

require '../genesis/vendor/autoload.php';
require '../public/api/wp-load.php';

$app = ['Database', 'Router', 'Server', 'Upload', 'View'];
foreach ($app as $class) require_once "../genesis/app/$class.php";

function startSession(): void
{ session_start();
  if (!isset($_SESSION['logged'])) $_SESSION['logged'] = false;
}

function stopSession(): void
{ $_SESSION = [];
  if (ini_get('session.use_cookies'))
  {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000, $params['path'],
    $params['domain'], $params['secure'], $params['httponly']);
  } session_destroy();
}

function trash($name, $path = '../public/assets/src/') { unlink($path . $name); }
function secure(string $slug): string { return trim(stripslashes(htmlspecialchars($slug))); }
function location(string $path = '/'): void { header("location: $path"); }
function api(string $endpoint = '/', string $base = 'http://badminton.lan/api/wp-json') { return json_decode(file_get_contents($base . $endpoint)); }
function debug($code) { echo '<pre>'; var_dump($code); echo '<pre>'; die; }
