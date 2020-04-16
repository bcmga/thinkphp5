-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2019-12-29 20:39:52
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `smy`
--

-- --------------------------------------------------------

--
-- 表的结构 `grade`
--

CREATE TABLE `grade` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '班级主键',
  `name` varchar(100) DEFAULT NULL COMMENT '班级名称',
  `length` varchar(20) DEFAULT NULL COMMENT '学制',
  `price` int(11) DEFAULT NULL COMMENT '学费',
  `status` int(11) DEFAULT NULL COMMENT '是否启用',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  `is_delete` int(11) DEFAULT NULL COMMENT '允许删除',
  `student_id` int(11) DEFAULT NULL COMMENT '关联外键'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `grade`
--

INSERT INTO `grade` (`id`, `name`, `length`, `price`, `status`, `create_time`, `update_time`, `delete_time`, `is_delete`, `student_id`) VALUES
(1, '等级1', '1个月', 400, 1, 1502242191, 1502335837, NULL, 1, NULL),
(2, '等级2', '2个月', 700, 1, 1502242191, 1502335837, NULL, 1, NULL),
(3, '等级3', '6个月', 1000, 1, 1502242191, 1502336083, NULL, 1, NULL),
(4, '等级4', '1年', 1200, 1, 1502257693, 1502335837, NULL, 1, NULL),
(5, '等级5', '2年', 1500, 1, 1502334559, 1502335837, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `student`
--

CREATE TABLE `student` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  `age` tinyint(4) UNSIGNED DEFAULT NULL COMMENT '年龄',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `status` int(11) DEFAULT NULL COMMENT '当前状态',
  `start_time` int(11) DEFAULT NULL COMMENT '入学时间',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  `is_delete` int(11) DEFAULT NULL COMMENT '允许删除',
  `grade_id` int(11) DEFAULT NULL COMMENT '关联外键'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `student`
--

INSERT INTO `student` (`id`, `name`, `sex`, `age`, `mobile`, `email`, `status`, `start_time`, `create_time`, `update_time`, `delete_time`, `is_delete`, `grade_id`) VALUES
(1, '杨过', 1, 40, '18966557788', 'yangguo@qq.com', 1, 1494345600, 1502326725, 1577327441, NULL, 1, 5),
(2, '小龙女', 0, 33, '13509897765', 'xiaolongnv@qq.com', 1, 1502326725, 1502326725, 1577327441, NULL, 1, 1),
(3, '尹志平', 1, 38, '17765336278', 'yizhiping@qq.com', 1, 1502326725, 1502326725, 1577327441, NULL, 1, 3),
(4, '老顽童', 1, 89, '15677281923', 'laowantong@qq.com', 1, 1502326725, 1502326725, 1577327441, NULL, 1, 2),
(5, '洪七公', 1, 78, '13389776234', 'hongqigong@qq.com', 1, 1502326725, 1502326725, 1577327441, NULL, 1, 2),
(6, '郭靖', 0, 26, '15766338726', 'guojin@qq.com', 1, 1502294400, 1502326725, 1577327441, NULL, 1, 1),
(7, '黄蓉', 0, 46, '18976227182', 'huangrong@qq.com', 1, 1502294400, 1502326725, 1577327441, NULL, 1, 5),
(8, '杨康', 1, 45, '13287009834', 'yangkang@qq.com', 0, 1502326725, 1502326725, 1577327441, NULL, 1, 3),
(9, '欧阳克', 1, 37, '13908772343', 'ouyangke@qq.com', 0, 1502326725, 1502326725, 1577327441, NULL, 1, 2),
(10, '张无忌', 1, 28, '15387298273', 'zhangwuji@qq.com', 1, 1502326725, 1502326725, 1577327441, NULL, 1, 2),
(11, '赵敏', 0, 26, '13987372937', 'zhaoming@qq.com', 1, 1502326725, 1502326725, 1577327441, NULL, 1, 3),
(12, '宋青书', 0, 22, '15806554328', 'songqinshu@qq.com', 1, 1494864000, 1502327784, 1577327441, NULL, 1, 2),
(13, '周芷若', 1, 20, '18977665544', 'zhouzhiruo@qq.com', 1, 1501948800, 1502343910, 1502343931, NULL, NULL, 5);

-- --------------------------------------------------------

--
-- 表的结构 `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `degree` varchar(30) DEFAULT NULL COMMENT '学历',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `school` varchar(50) DEFAULT NULL COMMENT '毕业学校',
  `hiredate` int(11) DEFAULT NULL COMMENT '入职时间',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除标志',
  `is_delete` int(11) DEFAULT '1' COMMENT '允许删除',
  `status` int(11) DEFAULT NULL COMMENT '1启用0禁用',
  `grade_id` int(11) DEFAULT NULL COMMENT '外键'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `degree`, `mobile`, `school`, `hiredate`, `create_time`, `update_time`, `delete_time`, `is_delete`, `status`, `grade_id`) VALUES
(1, '朱小明', '2', '15705517878', '中国科技大学', 1420041600, 1970, 1502342345, NULL, 1, 1, 5),
(2, '李小红', '1', '13988995566', '合肥工业大学', 1466006400, 2017, 1502342345, NULL, 1, 1, 2),
(3, '洪小白', '1', '18955139988', '安徽大学', 1486310400, 2017, 1502342345, NULL, 1, 1, 1),
(5, '张三', '1', '15805512377', '安徽师范大学', 1461254400, 2017, 1502342345, NULL, 1, 1, 5),
(6, '范四', '1', '18976765533', '安徽理工大学', 1501948800, 2018, 1502342345, NULL, 1, 1, 4);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '用户ID',
  `name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(32) DEFAULT NULL COMMENT '用户密码',
  `email` varchar(255) DEFAULT NULL COMMENT '用户邮箱',
  `role` tinyint(2) UNSIGNED DEFAULT '1' COMMENT '角色',
  `status` int(2) UNSIGNED DEFAULT '1' COMMENT '状态:1启用0禁用',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  `login_time` int(11) UNSIGNED DEFAULT NULL COMMENT '登录时间',
  `login_count` int(11) UNSIGNED DEFAULT '0' COMMENT '登录次数',
  `is_delete` int(2) UNSIGNED DEFAULT '0' COMMENT '是否删除1是0否'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`, `role`, `status`, `create_time`, `update_time`, `delete_time`, `login_time`, `login_count`, `is_delete`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@qq.com', 0, 1, 1501493848, 1502340075, NULL, 1502339370, 20, 1),
(3, 'smy', '14e1b600b1fd579f47433b88e8d85291', 'smy@qq.com', 1, 1, 1501582576, 1577174634, NULL, 1502168741, 15, 1),
(6, 'jack', 'e10adc3949ba59abbe56e057f20f883e', 'jack@qq.com', 0, 1, 1502064844, 1502260457, NULL, 1502082773, 1, 1),
(8, 'php', 'e10adc3949ba59abbe56e057f20f883e', 'php@qq.com', 0, 1, 1502091384, 1502260457, NULL, NULL, 0, 1),
(9, 'html', 'e10adc3949ba59abbe56e057f20f883e', 'html@qq.com', 0, 1, 1502091961, 1502260457, NULL, NULL, 0, 1),
(10, 'css', 'e10adc3949ba59abbe56e057f20f883e', 'css@qq.com', 0, 1, 1502092407, 1502260457, NULL, NULL, 0, 1);

--
-- 转储表的索引
--

--
-- 表的索引 `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '班级主键', AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID', AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
