<?php

class Main extends View
{
  private $db;

  public function __construct()
  {
    $this->db = new Database;
  }

  public function home()
  {
    $posts = api('/wp/v2/news?_embed&per_page=3');
    $groups = $this->db->get("SELECT ID FROM wp_posts WHERE post_status = 'publish' AND post_type = 'news' ORDER BY comment_count DESC LIMIT 3");

    $ask = '/wp/v2/news?_embed&include=';
    foreach ($groups as $group) $ask .= "$group->ID,";
    $responses = api($ask); $populars = [];

    foreach ($groups as $group)
    {
      foreach ($responses as $response) if ($group->ID == $response->id) $populars[] = $response;
    }

    $this->render('home', [
      'dynamic' => $posts,
      'lastest' => array_slice($posts, 1, 3),
      'lastest_first' => $posts[0],
      'populars' => $populars
    ]);
  }

  public function info()
  {
    $offices = api('/wp/v2/member?_embed&categories=9');
    $directors = api('/wp/v2/member?_embed&categories=10');
    $managers = api('/wp/v2/member?_embed&categories=11');
    
    $infos = api('/wp/v2/content/95');
    $files = api('/wp/v2/documents?_embed&per_page=16');
    
    $categories = [];
    foreach (api('/wp/v2/categories') as $category)
      if ($category->parent === 12) $categories[] = $category;

    $this->render('admin', [
      'office' => $offices,
      'directors' => $directors,
      'managers' => $managers,
      'files' => $files,
      'infos' => $infos,
      'categories' => $categories,
      'success' => !empty($_GET['success']),
      'error' => !empty($_GET['error'])
    ]);
  }

  public function refund()
  {

    // location('/administratif#5?refund=1');
  }

  public function contact()
  {
    $infos = api('/wp/v2/content/95');

    $this->render('contact', [
      'infos' => $infos
    ]);
  }
}
