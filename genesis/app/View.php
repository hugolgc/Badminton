<?php

class View
{
  private $options = ['extension' => '.html'];

  public function send(string $view, array $data = [])
  {
    echo (new Mustache_Engine)->render($view, $data);
  }

  public function render(string $view, array $data = [])
  {
    $mustache = new Mustache_Engine([
      'pragmas' => [Mustache_Engine::PRAGMA_BLOCKS],
      'loader' => new Mustache_Loader_FilesystemLoader(dirname(dirname(__DIR__)) . '/views', $this->options),
      'partials_loader' => new Mustache_Loader_FilesystemLoader(dirname(dirname(__DIR__)) . '/views/layouts', $this->options),
      'helpers' => ['_globals' => $GLOBALS ?? [], '_session' => $_SESSION ?? []]
    ]);

    $mustache->addHelper('check', function($data) { return !empty($data); });
    $mustache->addHelper('json', function($data) { return json_encode($data); });
    $mustache->addHelper('showDate', function($date) { return (new DateTime($date))->format('d M Y'); });
    $mustache->addHelper('showPicture', function($media) { return $media->{'wp:featuredmedia'}[0]->media_details->sizes->full->source_url; });
    $mustache->addHelper('showCategorie', function($media) { return $media->{'wp:term'}[0][0]->name; });
    $mustache->addHelper('resume', function($content) { return (strlen($content) <= 108) ? $content : substr($content, 0, 108) . '...'; });
    $mustache->addHelper('space', function($string) { return nl2br($string); });
    $mustache->addHelper('page', function($int) { return $int - 21; });

    echo $mustache->render($view, $data);
  }

  public function json($data)
  {
    header('Content-Type: application/json');
    echo json_encode($data);
  }

  public function xml($data, string $tag = 'root')
  {
    header('Content-Type: application/xml');
    $xml = new SimpleXMLElement("<$tag/>");
    array_walk_recursive($data, array ($xml, 'addChild'));
    print $xml->asXML();
  }
}
