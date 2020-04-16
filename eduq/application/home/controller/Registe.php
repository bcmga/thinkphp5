<?php
namespace app\home\controller;


use app\home\model\User as UserModel;
use think\Controller;
use think\Request;
use think\Model;
class Registe extends Controller
{

//注册页面
    public function registe()
    {

        return view();
    }

    //验证界面
    public function checkRegiste(Request $request)
    {
        //初始返回参数
        $status = 0; //验证失败标志
        $result = ''; //失败提示信息
        $data = $request->param();
        //创建验证规则
        $rule = [
            'email' => 'require',//用户名必填
            'password' => 'require',

            'verify' => 'require|captcha',
        ];
        //自定义验证错误信息
        $msg = [
            'email' => ['require' => '邮箱不能为空，请检查'],
            'password' => ['require' => '密码不能为空，请检查'],
            'verify' => [
                'require' => '验证码不能为空，请检查',
                'captcha' => '验证码错误'
            ],
        ];

        //进行验证
        $result = $this->validate($data, $rule,$msg);
        //如果验证通过
        if (true === $result) {

            //获取数据

            $data = input('post.');

            //插入
            $useri = new UserForm;
            $useri->email = $data['email'];
            $useri->password = ma5($data['password']);
            $useri->registe_time = data("Y-m-d H-i-s", time());
            $res = $useri->save();
            //参数返回
            if ($res) {
                return ['url'=>Url(login/login)];
            } else {
                return ['message'=>'注册失败'];
            }


        }


    }



}
