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
    $per_page = 12;
    $url = '/articles';
    $base = '/wp/v2/news?_embed';

    $page = (!empty($_GET['page']) && $_GET['page'] > 0) ? $_GET['page'] : 0;
    if (!empty($_POST['search'])) $base .= '&search=' . secure($_POST['search']);
    elseif (!empty($_GET['cat']))
    {
      $url .= '&cat=' . $_GET['cat'];
      $base .= '&categories=' . $_GET['cat'];
    }

    $base .= '&offset=' . ($page * $per_page);
    $pagination = $base . '&per_page=' . ($per_page + 1);
    $base .= "&per_page=$per_page";
    
    $posts = api($base);
    if (count($posts) === 0) location('/');

    $all_categories = api('/wp/v2/categories');
    $categories = [];
    foreach ($all_categories as $categorie)
    {
      if ($categorie->parent == 7) $categories[] = $categorie;
    }

    $this->render('list', [
      'articles' => $posts,
      'categories' => $categories,
      'search' => $_POST['search'] ?? false,
      'previous' => ($page > 0) ? $url . '&page=' . ($page - 1) : false,
      'next' => (count(api($pagination)) === ($per_page + 1)) ? $url . '&page=' . ($page + 1) : false
    ]);
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
