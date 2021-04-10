<?php

class Post extends View
{
  private $db;

  public function __construct()
  {
    $this->db = new Database;
  }

  public function list()
  {
    $ask = '/wp/v2/news?_embed';
    if (!empty($_GET['cat'])) $ask .= '&categories=' . $_GET['cat'];

    $posts = api($ask);
    if (count($posts) === 0) location('/');
    $all_categories = api('/wp/v2/categories');
    $categories = [];

    foreach ($all_categories as $categorie)
    {
      if ($categorie->parent == 7) $categories[] = $categorie;
    }

    $this->render('list', [
      'articles' => $posts,
      'categories' => $categories
    ]);
  }

  public function search()
  {
    $this->send('search');
  }

  public function show($id)
  {
    $post = api("/wp/v2/news/$id?_embed");
    if (!$post->id) location('/');
    $lastest = api('/wp/v2/news?_embed&per_page=10');

    $this->render('show', [
      'article' => $post,
      'lastest' => $lastest,
    ]);

    $this->db->set("UPDATE wp_posts SET comment_count = comment_count + 1 WHERE ID = $id");
  }
}
