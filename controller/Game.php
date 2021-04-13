<?php

class Game extends View
{
  public function list()
  {
    $interclubs = api('/wp/v2/interclubs');
    usort($interclubs, ['Game', 'orderByDate']);

    $this->render('games', [
      'interclubs' => $interclubs
    ]);
  }

  private static function orderByDate($first, $second)
  {
    return strtotime($first->acf->date) - strtotime($second->acf->date);
  }
}
