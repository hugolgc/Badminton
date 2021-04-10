<?php

require '../genesis/autoload.php';

$app = new Router;

$app->get('/',                ['Main', 'home']);
$app->get('/administratif',   ['Main', 'info']);
$app->post('/administratif',  ['Main', 'refund']);
$app->get('/contact',         ['Main', 'contact']);

$app->get('/articles',        ['Post', 'list']);
$app->post('/articles',       ['Post', 'search']);
$app->get('/articles/:id',    ['Post', 'show']);

$app->get('/competition',     ['Game', 'list']);

$app->get('/ajax',            ['Ajax', 'get']);
$app->post('/ajax',           ['Ajax', 'post']);

// $app->server(function() { location('/'); });

$app->server();
