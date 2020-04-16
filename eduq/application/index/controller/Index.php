<?php
namespace app\index\controller;
use app\index\controller\Base;
class Index extends Base
{
    public function index()
    {
        $this->islogin();
        $this->view->assign('title','大学问后台管理系统');
        return $this->view->fetch();
        }
}
