<?php
/*namespace app\home\controller;


use think\Controller;
class Login extends Controller
{
    public function login()
    {
        return view();
    }


}*/

namespace app\home\controller;

use think\Request;
use think\Controller;
use app\home\model\User as UserModel;
use think\Model;

class Login extends Controller
{
    //登录界面
    public function login()
    {

        return $this->view->fetch();

    }

    //验证界面
    public function checkLogin(Request $request)
    {
        //初始返回参数
        $status = 0; //验证失败标志
        $result = ''; //失败提示信息
        $data = $request->param();
        //创建验证规则
        $rule = [
            'name' => 'require',//用户名必填
            'password' => 'require',

        ];
       /* //自定义验证错误信息
        $msg = [
            'name' => ['require' => '用户名不能为空，请检查'],
            'password' => ['require' => '密码不能为空，请检查'],

        ];*/

        //进行验证
        $result = $this->vlidate($data,$rule);
        //如果验证通过
        if (true === $result) {
            //构造查询条件
            $map = [
                'name' => $data['name'],
                'password' => md5($data['password']),

            ];
            //数据表查询,返回模型对象
            $user = UserModel::get($map);
            if (null === $user) {
                $result = '没有该用户,请检查';
            } else {
                $status = 1;
                $result = '验证通过,点击[确定]后进入';
                //创建2个session,用来检测用户登陆状态和防止重复登陆
                //Session::set('userin_id', $userin->id);
                //Session::set('userin_info', $userin->getData());

                //更新用户登录次数:自增1
                //$user -> setInc('login_count');

            }

        }


        return ['status' => $status, 'message' => $result, 'data' => $data];
    }


    //退出界面
    public function logout()
    {
        //退出前先更新登录时间字段,下次登录时就知道上次登录时间了
        //UserModel::update(['login_time'=>time()],['id'=> Session::get('user_id')]);
        //Session::delete('userin_id');
        //Session::delete('userin_info');

        $this->success('注销登陆,正在返回', url('login/login'));


    }
}
