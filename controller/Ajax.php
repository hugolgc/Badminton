<?php

class Ajax extends View
{
  public function get()
  {
    $this->send('get');
  }
  
  public function post()
  {
    $this->send('post');
  }
}
