/*
Navicat MySQL Data Transfer

Source Server         : MySql-本机
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : sdll-blog

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2017-11-06 11:19:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog_leave_words
-- ----------------------------
DROP TABLE IF EXISTS `blog_leave_words`;
CREATE TABLE `blog_leave_words` (
  `id` char(32) NOT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `msg_status` char(2) DEFAULT NULL,
  `note_id` char(32) DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  `user_email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_leave_words
-- ----------------------------

-- ----------------------------
-- Table structure for blog_note
-- ----------------------------
DROP TABLE IF EXISTS `blog_note`;
CREATE TABLE `blog_note` (
  `id` char(32) NOT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `second_title` varchar(255) DEFAULT NULL COMMENT '副标题',
  `blog_content` text COMMENT '博客内容',
  `status` char(1) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `type` char(2) DEFAULT NULL,
  `blog_eye` int(255) DEFAULT NULL COMMENT '浏览量',
  `blog_star` int(255) DEFAULT NULL,
  `blog_thumbs` int(255) DEFAULT NULL,
  `blog_download` int(255) DEFAULT NULL,
  `blog_comment` int(255) DEFAULT NULL COMMENT '评论数',
  PRIMARY KEY (`id`),
  KEY `index_title` (`title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_note
-- ----------------------------
INSERT INTO `blog_note` VALUES ('05cc6083a6aa4926b2c580c8c1058a16', '毕业真的很快', '时间一转眼就过去了，为什么不等等呢？', '<p><b>试一下图片自定义大小</b></p><p><img src=\"/../upload/Save-Rock-And-Roll.jpg\" style=\"max-width:50%;\" class=\"w-e-selected\"></p><p></p>', null, '2017-07-24 16:22:42', '2017-07-24 16:22:42', '3', '16', '0', '0', '0', '0');
INSERT INTO `blog_note` VALUES ('11486b835150457597e9db9eb4c37d5f', 'c测试富文本功能', '测试好多功能啦', '<p><br></p><p style=\"text-align: center;\"><b>随心所欲</b>  记录无处不在发送到发送到<img src=\"/../upload/Save-Rock-And-Roll.jpg\" style=\"max-width: 100%;\" class=\"\"></p><blockquote>其实地上本没有路，走的人多了，也就成了路</blockquote><ul><li>第一点</li></ul><h2>第二点，</h2><p><i><b>第三点</b></i></p><p><u>发多少</u></p><table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><th>&nbsp;大幅度</th><th>&nbsp;第三方</th><th>第三方&nbsp;</th><th>水电费&nbsp;</th><th>水电费&nbsp;</th></tr><tr><td>&nbsp;闪电</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;水电费</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;水电费</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;水电费</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table><p>来一段代码，</p><pre><code>@RequestMapping(\"ajax/upLoad\")\n	@ResponseBody\n	public Map&lt;String,Object&gt; upLoad(HttpServletRequest request, HttpServletResponse response) {\n		//创建一个通用的多部分解析器  \n        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());  \n        Map&lt;String,Object&gt; map = new HashMap&lt;String,Object&gt;();\n        //判断 request 是否有文件上传,即多部分请求  \n        if(multipartResolver.isMultipart(request)){  \n            //转换成多部分request    \n            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;  \n            //取得request中的所有文件名  \n            Iterator&lt;String&gt; iter = multiRequest.getFileNames();  \n            List&lt;String&gt; data = new ArrayList&lt;String&gt;();\n            while(iter.hasNext()){ \n                //取得上传文件  \n                MultipartFile file = multiRequest.getFile(iter.next());  \n                if(file != null){  \n                    //取得当前上传文件的文件名称  \n                    String myFileName = file.getOriginalFilename();  \n                    //如果名称不为“”,说明该文件存在，否则说明该文件不存在  \n                    if(myFileName.trim() !=\"\"){  \n                        System.out.println(myFileName);  \n                        //重命名上传后的文件名  \n                        String fileName = \"/../upload/\" + file.getOriginalFilename();  \n                        //定义上传路径  \n                        String appRoot = request.getSession().getServletContext().getRealPath(\"\") + File.separator;\n                        String path =  appRoot + fileName;  \n                        File localFile = new File(path);\n                        if(!localFile.exists()) {\n                        	localFile.mkdirs();\n                        }\n                        try {\n							file.transferTo(localFile);\n							data.add(fileName);\n						} catch (Exception e) {\n							e.printStackTrace();\n							map.put(\"errno\", 1);\n							map.put(\"data\", data);\n							return map;\n						}  \n                    }  \n                }  \n            }  \n            map.put(\"data\", data);\n            map.put(\"errno\", 0);\n        }  \n		return map;\n	}</code></pre><p><br></p>', null, '2017-07-25 10:45:04', '2017-07-25 10:45:04', '6', '19', '0', '0', '0', '0');
INSERT INTO `blog_note` VALUES ('13b0c612e95345259072a8178687a59b', 'java开发的艺术', '好多人多认为java开发就是复制粘贴，真的是这样吗？', '<p><b>在很多人程序员看开，java开发需要的技术不是很高，但真的是这样吗？</b>&nbsp;<img src=\"/../upload/Save-Rock-And-Roll.jpg\" style=\"max-width: 100%;\" class=\"\"></p><p>每一次远行，都是为了更好的进步。</p><p><br></p>', null, '2017-07-14 20:50:27', '2017-07-14 20:50:27', '1', '13', '0', '0', '0', '0');
INSERT INTO `blog_note` VALUES ('24e6a75bad534f2a8d3afc660b2b334a', '生活还有远方', '其实路上本没有路，走的人多了，也就成了路', '<p><b>随心所欲</b> <img src=\"/../upload/Save-Rock-And-Roll.jpg\" style=\"max-width: 100%;\" class=\"\"></p><p>每一次远行，都是为了更好的进步。</p><p><br></p>', null, '2017-07-15 20:48:09', '2017-07-14 20:48:09', '3', '58', '2256', '66', '72', '34');
INSERT INTO `blog_note` VALUES ('2a0d8f0cdbcd442da896aaa442073496', 'java编程思想', 'thinking in java', '<p>thinking in java,java的&nbsp;</p>', null, '2017-07-12 21:11:23', '2017-07-14 21:11:23', '1', '15', '0', '0', '0', '0');
INSERT INTO `blog_note` VALUES ('399545ac39474466a82e51131fd5b85d', '深入理解虚拟机', 'java 虚拟机的魅力是，', '<p>thinking in java,java的&nbsp;</p>', null, '2017-07-11 21:12:09', '2017-07-14 21:12:09', '1', '18', '0', '0', '0', '0');
INSERT INTO `blog_note` VALUES ('540e58c92cff4289ba0a79a44d68695c', '你应该知道的JAVA面试题', '如果你感到迷茫，请看看这些你都会吗？', '<p>经常面试一些候选人，整理了下我面试使用的题目，陆陆续续整理出来的题目很多，所以每次会抽一部分来问。答案会在后面的文章中逐渐发布出来。<br></p><p><b>基础题目</b></p><p><ol><li>Java线程的状态</li><li>进程和线程的区别，进程间如何通讯，线程间如何通讯</li><li>HashMap的数据结构是什么？如何实现的。和HashTable，ConcurrentHashMap的区别</li><li>Cookie和Session的区别</li><li>索引有什么用？如何建索引？</li><li>ArrayList是如何实现的，ArrayList和LinkedList的区别？ArrayList如何实现扩容。</li><li>equals方法实现</li><li>面向对象</li><li>线程状态，BLOCKED和WAITING有什么区别</li><li>JVM如何加载字节码文件</li><li>JVM GC，GC算法。</li><li>什么情况会出现Full GC，什么情况会出现yong GC。</li><li>JVM内存模型</li><li>Java运行时数据区</li><li>事务的实现原理</li></ol></p><p><b>技术深度</b></p><p><ol><li>有没有看过JDK源码，看过的类实现原理是什么。</li><li>HTTP协议</li><li>TCP协议</li><li>一致性Hash算法</li><li>JVM如何加载字节码文件</li><li>类加载器如何卸载字节码</li><li>IO和NIO的区别，NIO优点</li><li>Java线程池的实现原理，keepAliveTime等参数的作用。</li><li>HTTP连接池实现原理</li><li>数据库连接池实现原理</li><li>数据库的实现原理</li></ol></p><p><b>技术框架</b></p><p><ol><li>看过哪些开源框架的源码</li><li>为什么要用Redis，Redis有哪些优缺点？Redis如何实现扩容？</li><li>Netty是如何使用线程池的，为什么这么使用</li><li>为什么要使用Spring，Spring的优缺点有哪些</li><li>Spring的IOC容器初始化流程</li><li>Spring的IOC容器实现原理，为什么可以通过byName和ByType找到Bean</li><li>Spring AOP实现原理</li><li>消息中间件是如何实现的，技术难点有哪些</li></ol></p><p><b>系统架构</b></p><p><ol><li>如何搭建一个高可用系统</li><li>哪些设计模式可以增加系统的可扩展性</li><li>介绍设计模式，如模板模式，命令模式，策略模式，适配器模式、桥接模式、装饰模式，观察者模式，状态模式，访问者模式。</li><li>抽象能力，怎么提高研发效率。</li><li>什么是高内聚低耦合，请举例子如何实现</li><li>什么情况用接口，什么情况用消息</li><li>如果AB两个系统互相依赖，如何解除依赖</li><li>如何写一篇设计文档，目录是什么</li><li>什么场景应该拆分系统，什么场景应该合并系统</li><li>系统和模块的区别，分别在什么场景下使用</li></ol></p><p><b>分布式系统</b></p><p><ol><li>分布式事务，两阶段提交。</li><li>如何实现分布式锁</li><li>如何实现分布式Session</li><li>如何保证消息的一致性</li><li>负载均衡</li><li>正向代理（客户端代理）和反向代理（服务器端代理）</li><li>CDN实现原理</li><li>怎么提升系统的QPS和吞吐量</li></ol></p><p><b>实战能力</b></p><p><ol><li>有没有处理过线上问题？出现内存泄露，CPU利用率标高，应用无响应时如何处理的。</li><li>开发中有没有遇到什么技术问题？如何解决的</li><li>如果有几十亿的白名单，每天白天需要高并发查询，晚上需要更新一次，如何设计这个功能。</li><li>新浪微博是如何实现把微博推给订阅者</li><li>Google是如何在一秒内把搜索结果返回给用户的。</li><li>12306网站的订票系统如何实现，如何保证不会票不被超卖。</li><li>如何实现一个秒杀系统，保证只有几位用户能买到某件商品。</li></ol></p><p><b>软能力</b></p><ol><li>如何学习一项新技术，比如如何学习Java的，重点学习什么</li><li>有关注哪些新的技术</li><li>工作任务非常多非常杂时如何处理</li><li>项目出现延迟如何处理</li><li>和同事的设计思路不一样怎么处理</li><li>如何保证开发质量</li><li>职业规划是什么？短期，长期目标是什么</li><li>团队的规划是什么</li><li>能介绍下从工作到现在自己的成长在那里</li></ol><p><!--StartFragment--><!--EndFragment--></p>', null, '2017-08-23 09:55:50', '2017-08-23 09:55:50', '1', '13', '0', '0', '0', '0');
INSERT INTO `blog_note` VALUES ('581af5486cff40c286c9eeaf9d3c64bd', '试一下动图', '动图可以用吗？', '<p><img src=\"/../upload/201722721324284375.gif\" style=\"max-width:100%;\"></p>', null, '2017-07-18 14:00:58', '2017-07-18 14:00:58', '7', '35', '0', '0', '0', '0');
INSERT INTO `blog_note` VALUES ('877c080f23cb42a5af6c8701e0e4eea5', '发送到发送到', '阿斯顿发生的', '<p><b>随心所欲</b>  记录无处不在发送到发送到<img src=\"/../upload/Save-Rock-And-Roll.jpg\" style=\"max-width: 100%;\"></p><p><br></p>', null, '2017-07-10 18:46:04', '2017-07-14 18:46:10', '3', '15', '0', '0', '0', '0');
INSERT INTO `blog_note` VALUES ('9d4ed0e6d62d49c9be188fa6fc80c0ae', 'map取值的问题详解', 'map，你真的了解它吗？', '<p>发的发送到发送到凡啊沙发斯蒂芬</p><p>如下代码：</p><pre><code>                        for (int i = 0; i &lt; list.size(); i++) {\n				Map&lt;String, Object&gt; map = (Map&lt;String, Object&gt;) list.get(i);\n				String laid = map.get(\"id\").toString();\n				String restSql = \"select * from wsr_vacation_time_record;\n				List restList = super.iSQLQuery.query(restSql);\n				map.put(\"restList\", restList);\n			}</code></pre><p><img src=\"/../upload/Jellyfish.jpg\" style=\"max-width:100%;\"></p><p><br></p><p><b><i>哈哈哈，图片代码都可以啦！</i></b></p><p><br></p>', null, '2017-07-18 11:30:54', '2017-07-18 11:30:54', '1', '74', '0', '0', '0', '0');
INSERT INTO `blog_note` VALUES ('a16ef19ef5d54a77ad6c1a0641bb67a7', '在人间，', '在人间，表达的到底是什么', '<p><b>​</b></p><p>阿斯蒂芬每一个大山噶是的个</p>', null, '2017-06-14 21:10:00', '2017-07-14 21:10:00', '3', '5', '0', '0', '0', '0');
INSERT INTO `blog_note` VALUES ('bb3f0058e2924681a06c13012f81aebb', '我的日志1', '哈哈哈，你为什么叫做鲁迅', '<p><b>随心所欲</b>  记录无处不在</p><p><br></p>', null, '2017-06-13 21:08:26', '2017-07-14 21:08:26', '3', '4', '0', '0', '0', '0');
INSERT INTO `blog_note` VALUES ('c6c082c171f84f1488e24d7f2ec74e42', '童年', '童年这本书的创作背景是？', '<p><b>​</b></p><p>阿斯蒂芬每一个大山噶是的个</p>', null, '2017-05-23 21:09:38', '2017-07-14 21:09:38', '3', '3', '0', '0', '0', '0');
INSERT INTO `blog_note` VALUES ('caa68deb4a984782ae997548e96ef8cc', '我的大学', '高尔基大学期间是怎么度过的', '<p><b>​</b></p><p>阿斯蒂芬每一个大山噶是的个</p>', null, '2017-04-10 21:09:10', '2017-07-14 21:09:10', '3', '3', '0', '0', '0', '0');
INSERT INTO `blog_note` VALUES ('df95569b4af54a6cbfa53117d9256c48', '故乡，对于我意味着什么？', '总是在梦里，梦到你无助的身影！', '<p><b>随心所欲</b> <img src=\"/../upload/Save-Rock-And-Roll.jpg\" style=\"max-width: 100%;\" class=\"\"></p><p>每一次远行，都是为了更好的进步。</p><p><br></p>', null, '2017-07-17 13:35:54', '2017-07-17 13:35:54', '3', '24', '0', '0', '0', '0');
INSERT INTO `blog_note` VALUES ('e388796af0d14b43abe69fa451f1095b', '朝花夕拾', '为什么这本书叫做朝花夕拾', '<p><b>​</b></p><p>阿斯蒂芬每一个大山噶是的个</p>', null, '2017-03-11 21:10:32', '2017-07-14 21:10:32', '3', '2', '0', '0', '0', '0');
INSERT INTO `blog_note` VALUES ('e69fa', 'dfdfd', 'fdsfd', 'dfd', null, '2017-06-01 15:09:51', '2017-07-17 15:09:57', '2', '2', '0', '0', '0', '0');
INSERT INTO `blog_note` VALUES ('eac32b99f850448b8bde708edac64389', '由求最长回文数的引发的思考', '动态规划算法，你可真的懂？', '<h3>最长公共<b>子序列</b>和最长公共<b>子串</b>区别：</h3><p><!--StartFragment--><!--EndFragment--></p><p><strong>&nbsp; &nbsp; &nbsp; &nbsp;最长公共<span>子串</span>（Longest Common Substring）</strong>与<strong>最长公共<span>子序列</span>（Longest Common Subsequence）</strong>的区别： 子串要求在原字符串中是连续的，而子序列则只需保持相对顺序一致，并不要求连续。</p><ol><li>一、最长公共子序列</li></ol><div style=\"text-align: center;\"><img src=\"/../upload/动态规划表.jpg\" style=\"max-width:100%;\" class=\"\"></div><p><!--StartFragment--><!--EndFragment--></p><h2>只求最长子序列长度</h2><p style=\"text-align: center;\"><img src=\"/../upload/最长子序列方程.jpg\" style=\"max-width:100%;\" class=\"\"></p><p style=\"text-align: left;\">最长回文数的代码实现：</p><pre><code>public static int testMaxLongPlalindrome(String str) {\n	int length = str.length();\n	String[] charstr = str.split(\"\");\n	int[][] dp = new int[length + 1][length + 1];\n	for (int i = 0; i &lt; length; i++) {\n		for (int j = 0; j &lt; length; j++) {\n			if(charstr[i].equals(charstr[length - j - 1])) {\n				dp[i + 1][j + 1] = dp[i][j] + 1;\n			}else {\n				dp[i + 1][j + 1] = Math.max(dp[i][j + 1], dp[i + 1][j]);\n			}\n		}\n	}\n	System.out.println(length - dp[length][length]);	\n	return length - dp[length][length];\n}</code></pre><p>算法是一个程序员的灵魂！！！</p>', null, '2017-08-11 17:14:55', '2017-08-11 17:14:55', '2', '15', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for blog_param
-- ----------------------------
DROP TABLE IF EXISTS `blog_param`;
CREATE TABLE `blog_param` (
  `id` char(32) NOT NULL,
  `dict_group` char(50) DEFAULT NULL,
  `dict_name` varchar(255) DEFAULT NULL,
  `dict_value` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `seq` char(30) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_param
-- ----------------------------
INSERT INTO `blog_param` VALUES ('a1', 'blog_type', 'java', '1', null, null, '2017-07-16 18:05:48', '2017-07-16 18:05:50');
INSERT INTO `blog_param` VALUES ('a2', 'blog_type', '数据结构与算法', '2', null, null, '2017-07-16 18:05:53', '2017-07-16 18:05:55');
INSERT INTO `blog_param` VALUES ('a3', 'blog_type', '观点与感想', '3', null, null, '2017-07-17 08:43:12', '2017-07-17 08:43:14');
INSERT INTO `blog_param` VALUES ('a4', 'blog_type', 'JavaScript', '4', null, null, '2017-07-17 08:43:17', '2017-07-17 08:43:19');
INSERT INTO `blog_param` VALUES ('a5', 'blog_type', 'Hibernate', '5', null, null, '2017-07-17 08:43:20', '2017-07-17 08:43:26');
INSERT INTO `blog_param` VALUES ('a6', 'blog_type', 'SpringMVC', '6', null, null, '2017-07-17 08:43:22', '2017-07-17 08:43:27');
INSERT INTO `blog_param` VALUES ('a7', 'blog_type', 'Mybatis', '7', null, null, '2017-07-17 08:43:24', '2017-07-17 08:43:29');
INSERT INTO `blog_param` VALUES ('a8', 'blog_type', 'dubbo', '8', '', '', '2017-09-01 00:00:00', '2017-09-14 08:43:29');
INSERT INTO `blog_param` VALUES ('a9', null, 'asdfasdfas', null, null, null, null, null);

-- ----------------------------
-- Table structure for blog_type
-- ----------------------------
DROP TABLE IF EXISTS `blog_type`;
CREATE TABLE `blog_type` (
  `id` char(32) NOT NULL,
  `code` char(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `dic_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_type
-- ----------------------------

-- ----------------------------
-- Table structure for blog_user
-- ----------------------------
DROP TABLE IF EXISTS `blog_user`;
CREATE TABLE `blog_user` (
  `user_id` char(32) NOT NULL,
  `user_account` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(20) DEFAULT NULL,
  `user_phone` varchar(11) DEFAULT NULL,
  `user_email` varchar(30) DEFAULT NULL,
  `user_status` char(1) DEFAULT NULL COMMENT '0 用户注销，1 普通用户  , 2后台管理员  ，',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `index_status` (`user_phone`,`user_status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_user
-- ----------------------------
INSERT INTO `blog_user` VALUES ('37464bbff74e11e6802fe03f493116b5', 'sdll', 'Daywan', '111111', '15697136169', 'chengxwang0622@163.com', '1');
INSERT INTO `blog_user` VALUES ('374e11e6802fe03f493116b5', 'admin', 'administrator', '111111', '18771636169', '97420622@163.com', '2');
INSERT INTO `blog_user` VALUES ('a1', 'chengxiao', '程潇', '123123', null, null, null);

-- ----------------------------
-- Procedure structure for auto_blog
-- ----------------------------
DROP PROCEDURE IF EXISTS `auto_blog`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `auto_blog`()
BEGIN

#	DECLARE thisMonthFirstDay VARCHAR(10) ;
#	SET thisMonthFirstDay = 99;
	#SELECT thisMonthFirstDay;
/*	SELECT DATE_FORMAT(NOW(), '%Y-%m-01') INTO thisMonthFirstDay ; 
	SELECT thisMonthFirstDay;*/
#	SELECT @thisMonthFirstDay;
/*  DECLARE thisMonthNow varchar ;
	SELECT NOW() INTO thisMonthNow; 
	SELECT thisMonthFirstDay,thisMonthNow;*/
	DECLARE thisMonthFirstDay varchar(12) ;	
	DECLARE thisMonthNow varchar(19) ;
	SELECT DATE_FORMAT(NOW(), '%Y-%m-01') INTO thisMonthFirstDay; 
	SELECT NOW() INTO thisMonthNow; 
	SELECT thisMonthFirstDay,thisMonthNow;
	#SELECT * from blog_param bp WHERE bp.create_time>=@thisMonthFirstDay AND bp.create_time<NOW(); 
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for game
-- ----------------------------
DROP PROCEDURE IF EXISTS `game`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `game`(
	OUT msg VARCHAR (255),
	IN number INT
)
BEGIN
IF number = 1 THEN
	SET msg = "number = 1";
ELSEIF number = 2 THEN
	SET msg = "number = 2";

ELSE
	SET msg = "不知道number了";
END IF;
SELECT msg;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for PROC_ADD_USER
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_ADD_USER`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_ADD_USER`(in userId char(32),
	in userName VARCHAR(255),
	in userAccount VARCHAR(255))
BEGIN
	INSERT INTO blog_user(user_id,user_name,user_account,user_password) VALUES(userId,userName,userAccount,'123123');
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for test_cursor
-- ----------------------------
DROP PROCEDURE IF EXISTS `test_cursor`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_cursor`()
BEGIN
	DECLARE done INT DEFAULT 0; 
	DECLARE param_id VARCHAR(255);
	DECLARE param_name VARCHAR(255);
	#DECLARE result CURSOR FOR SELECT bp.id,bp.dict_name FROM blog_param bp;
	DECLARE result CURSOR FOR SELECT bp.type,b.dict_name FROM blog_note bp JOIN blog_param b WHERE bp.type=b.dict_value GROUP BY bp.type,b.dict_value; 
	/*FETCH result INTO param_id,param_name;*/
	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
	OPEN result;
		REPEAT
			FETCH result INTO param_id,param_name;
			IF done !=1 THEN
				/* SELECT * FROM blog_param b WHERE b.id = param_id; */
				SELECT param_id,param_name;
			END IF;
		UNTIL done END REPEAT;
	CLOSE result;
END
;;
DELIMITER ;
