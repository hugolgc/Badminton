<?php

require '../genesis/autoload.php';

$domain = $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['SERVER_NAME'];
$GLOBALS['logout'] = "$domain/api/wp-login.php?action=logout";
$GLOBALS['calendar'] = api('/wp/v2/content/95')->acf->lien;
$GLOBALS['admin'] = "$domain/api/wp-admin/";
$GLOBALS['site'] = api();

$app = new Router;

$app->get('/',                ['Main', 'home']);
$app->get('/administratif',   ['Main', 'info']);
$app->post('/administratif',  ['Main', 'refund']);
$app->get('/contact',         ['Main', 'contact']);

$app->get('/articles',        ['Post', 'list']);
$app->post('/articles',       ['Post', 'list']);
$app->get('/articles/:id',    ['Post', 'show']);

$app->get('/competition',     ['Game', 'list']);

$app->get('/ajax',            ['Ajax', 'get']);
$app->post('/ajax',           ['Ajax', 'post']);

$app->server();
