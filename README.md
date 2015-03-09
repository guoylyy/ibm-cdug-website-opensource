CDUG-Website(大中华区主机大会官网)
===========

这是为了同济大学软件学院主办的 [CDUG](http://cdug.tongji.edu.cn)
（主机用户大会）开发的会议网站，主要用做会议的基本信息展示、会议新闻发布和会议资料下载。麻雀虽小，五脏俱全，希望对做类似网站的同学起到帮助。

## 技术架构和功能

采用了 J2EE 框架 Jfinal 开发后台，几乎都是 Java 语言进行开发，Jfinal
框架带来了开发上的便利，对这种小型网站来说非常适合。

### 功能
* 网站首页
* 会议介绍
* 会议新闻和通知发布
* 会议资料下载
* 后台用户管理
* 后台新闻管理
* 后台资料管理

## 复用步骤

1. 导入项目到 eclipse
2. 配置数据库到本地(新建的数据库名字要和config.properties中配置的数据库名字相同)，SQL 文件在 git 中
3. 配置 WEB-INF 下的 config.properties 文件中的数据库账号密码IP等信息
4. run com.cdug.config.JfinalConfiguration.java 
5. 访问 localhost:8084 就可以看到主页了
6. 访问 localhost:8084/private 进入后台
	* 管理员账号：admin  密码：test
	* 非管理员账号：test  密码：test
	
（注明：详细的文档和配置上线步骤可以查看 document 文件夹下的 markdown 文档，建议下载 repo 后用 MOU 查看。）
