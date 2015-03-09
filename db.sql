# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.20)
# Database: cdug_zh
# Generation Time: 2015-03-09 15:47:25 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_path` varchar(200) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `file_type` varchar(40) DEFAULT NULL,
  `file_size` varchar(45) DEFAULT 'unknown',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;

INSERT INTO `files` (`id`, `file_path`, `file_name`, `file_type`, `file_size`)
VALUES
	(83,'2014-05-04/1399190140595/What is zOSMF Why zOSMF.pdf','What is zOSMF Why zOSMF.pdf','txt','3.14 MB'),
	(84,'2014-05-04/1399190159425/IBM Wave for zVM.pdf','IBM Wave for zVM.pdf','txt','3.80 MB'),
	(85,'2014-05-04/1399190170430/zBA Overview.ppt','zBA Overview.ppt','txt','814.16 KB'),
	(86,'2014-05-04/1399190191236/IOC on zEnterprise.pdf','IOC on zEnterprise.pdf','txt','5.43 MB'),
	(87,'2014-05-04/1399209805897/zBA Overview.pdf','zBA Overview.pdf','txt','1.24 MB'),
	(88,'2014-05-04/1399221084045/IBM Wave for zVM.pdf','IBM Wave for zVM.pdf','txt','3.80 MB'),
	(89,'2014-05-04/1399221103174/What is zOSMF Why zOSMF.pdf','What is zOSMF Why zOSMF.pdf','txt','3.14 MB'),
	(90,'2014-05-04/1399221120798/IOC on zEnterprise.pdf','IOC on zEnterprise.pdf','txt','5.43 MB'),
	(91,'2014-05-04/1399221134075/zBA Overview.ppt','zBA Overview.ppt','txt','814.16 KB'),
	(92,'2014-05-04/1399254365603/zBA Overview.pdf','zBA Overview.pdf','txt','1.24 MB'),
	(93,'2014-06-02/1401711443802/out.tar.gz','out.tar.gz','txt','471.07 KB'),
	(94,'2014-06-02/1401712009910/c.csv','c.csv','txt','14.06 KB'),
	(95,'2014-06-02/1401712083960/history_tv_data.txt','history_tv_data.txt','txt','0.45 KB'),
	(96,'2014-06-02/1401712216742/CIP mid-term report.ppt','CIP mid-term report.ppt','txt','378.37 KB'),
	(97,'2014-06-02/1401712330509/aaa.pptx','aaa.pptx','txt','174.70 KB'),
	(98,'2014-07-23/1406103288908/modeling.py','modeling.py','txt','8.71 KB'),
	(99,'2014-07-23/1406103298547/controller.py','controller.py','txt','20.21 KB'),
	(100,'2014-07-23/1406103306849/model.py','model.py','txt','10.02 KB'),
	(101,'2014-07-23/1406103314789/service.py','service.py','txt','47.13 KB'),
	(102,'2014-07-30/1406770480491/index.html','index.html','txt','2.11 KB'),
	(103,'2014-08-05/1407287478299/算计来算计去却是算计了自己.md','算计来算计去却是算计了自己.md','txt','2.41 KB'),
	(104,'2014-08-05/1407287515476/presentation(gmt part).pptx','presentation(gmt part).pptx','txt','198.47 KB'),
	(105,'2014-08-05/1407287736339/7月IOC项目任务安排文档.pdf','7月IOC项目任务安排文档.pdf','txt','150.60 KB'),
	(106,'2014-08-05/1407287748334/JustGo API 文档v1 (2).xlsx','JustGo API 文档v1 (2).xlsx','txt','11.63 KB'),
	(107,'2014-09-10/1410406229497/a-b-testing-siroker-en-20409.pdf','a-b-testing-siroker-en-20409.pdf','txt','561.28 KB'),
	(108,'2014-09-10/1410418267341/44.pic_hd.jpg','44.pic_hd.jpg','txt','413.62 KB'),
	(109,'2014-10-10/1413009642308/4.pic_hd.jpg','4.pic_hd.jpg','txt','24.10 KB'),
	(110,'2014-10-10/1413009698998/38.pic.jpg','38.pic.jpg','txt','55.68 KB'),
	(111,'2014-12-21/1419163564478/undefined','undefined','txt','6.64 KB'),
	(112,'2014-12-21/1419163749418/undefined','undefined','txt','15.29 KB'),
	(113,'2014-12-21/1419163957165/undefined','undefined','txt','6.69 KB'),
	(114,'2014-12-21/1419164055768/undefined','undefined','txt','5.72 KB'),
	(115,'2014-12-21/1419164135973/undefined','undefined','txt','6.22 KB'),
	(116,'2014-12-21/1419164300590/undefined','undefined','txt','3.73 KB'),
	(117,'2015-03-09/1425915263286/1.xlsx','1.xlsx','txt','11.09 KB');

/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table firsttag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `firsttag`;

CREATE TABLE `firsttag` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `firsttag` WRITE;
/*!40000 ALTER TABLE `firsttag` DISABLE KEYS */;

INSERT INTO `firsttag` (`id`, `name`)
VALUES
	(1,'技术类别'),
	(2,'产品类别');

/*!40000 ALTER TABLE `firsttag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table material_file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `material_file`;

CREATE TABLE `material_file` (
  `material_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  KEY `index1` (`material_id`),
  KEY `index2` (`file_id`),
  CONSTRAINT `file_fid` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `file_mid` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `material_file` WRITE;
/*!40000 ALTER TABLE `material_file` DISABLE KEYS */;

INSERT INTO `material_file` (`material_id`, `file_id`)
VALUES
	(22,90),
	(24,88),
	(25,92),
	(23,89),
	(27,98),
	(27,99),
	(27,100),
	(27,101),
	(27,104),
	(27,105),
	(27,106),
	(27,107);

/*!40000 ALTER TABLE `material_file` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table material_second_tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `material_second_tag`;

CREATE TABLE `material_second_tag` (
  `material_id` int(11) NOT NULL,
  `second_tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `material_second_tag` WRITE;
/*!40000 ALTER TABLE `material_second_tag` DISABLE KEYS */;

INSERT INTO `material_second_tag` (`material_id`, `second_tag_id`)
VALUES
	(22,4),
	(22,5),
	(22,10),
	(24,5),
	(24,9),
	(24,10),
	(25,2),
	(25,3),
	(25,6),
	(25,8),
	(23,5),
	(23,8),
	(23,10);

/*!40000 ALTER TABLE `material_second_tag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table materials
# ------------------------------------------------------------

DROP TABLE IF EXISTS `materials`;

CREATE TABLE `materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `update_time` datetime NOT NULL,
  `create_time` datetime NOT NULL,
  `author` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text,
  `isDraft` int(11) NOT NULL DEFAULT '0',
  `view_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index` (`user_id`),
  CONSTRAINT `material_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;

INSERT INTO `materials` (`id`, `title`, `update_time`, `create_time`, `author`, `user_id`, `content`, `isDraft`, `view_count`)
VALUES
	(22,'IBM智慧城市智能运行中心(IOC)介绍','2014-05-04 19:00:53','2014-04-19 02:00:15','CDUG官网',100001,'<p>IBM智慧城市智能运行中心(IOC)帮助城市的各个组织机构和部门从不同的物联化系统中整合信息，建立智能、互联的环境，促进协作，提高效率并发起有效决策，帮助 城市优化各部门，包括建筑、能源、运营、公共安全、交通和水资源，实现真正无缝的跨部门整合。IBM智能运行中心具有高灵活性，适用于不同发展程度的城市。主机能给智慧城市智能运营中心带来更高稳定性，安全性，以及可扩展性，同时能够降低总拥有成本。</p><p>&nbsp;</p>',0,144),
	(23,'IBM z/OS Management Facility Introduction','2014-05-05 13:56:22','2014-04-19 02:01:21','CDUG官网',100001,'<p>IBM z/OS Management Facility, aka z/OMSF, is a &quot;zero priced&quot;, modern, Web browser based console that helps you more easily manage the day-to-day operations and administration of your mainframe z/OS systems. The focus of z/OSMF is to help improve system programmer productivity, and make the functions easier to understand and use for both new and experienced system programmers. &nbsp;</p><p>&nbsp;</p>',0,141),
	(24,'IBM Wave for z/VM  Introduction','2014-05-05 10:10:02','2014-04-19 02:01:56','CDUG官网',100001,'<p>IBM Wave for z/VM is an intuitive virtualization management software product that provides management, automation, administration and provisioning of virtual servers, enabling automation of Linux virtual servers in a z/VM environment.&nbsp;<br />IBM Wave helps simplify administration and management of virtual Linux servers, removing obstacles to help staff focus on business-critical tasks. It is designed to integrate seamlessly with z/VM and Linux environments to help administrators view, organize and manage all z/VM system resources in an optimized manner to help further reduce the cost of managing your virtualized environment. Users can filter, manage, annotate, manipulate and group resources to control their environment with ease. &nbsp;&nbsp;</p><p>IBM Wave for z/VM allows IT organisations and service providers to transform administration and operations with an innovative graphical, content-rich approach for managing z/VM and Linux virtual servers. IBM Wave is designed to simplify operations, drive productivity and extend the reach of existing technical skills. IBM Wave makes administration highly intuitive by shielding staff from operational complexity allowing IT staff to manage more with existing skills. IBM Wave also helps with cloning and provisioning of virtual servers and resources, accelerating the journey to a private cloud infrastructure on IBM System z using z/VM.</p>',0,138),
	(25,'IBM Business Analytics','2014-05-05 10:35:32','2014-04-19 02:02:54','CDUG官网',100001,'<p>Business is running ever faster&mdash;generating, collecting and using increasing volumes of data about every aspect of the interactions between suppliers, manufacturers, retailers and customers. Within these mountains of data are seams of gold&mdash;patterns of behavior that can be interpreted, classified and analyzed to allow predictions of real value.&nbsp;</p><p>The 2011 introduction of the IBM DB2 Analytics Accelerator directly links the analytics data with the operational data, significantly increasing the freshness of the data being used to build the predictive models and removing many of the burdens associated with the traditional off-board data warehouse. And the 2012 introduction of IBM SPSS allows the scoring of a transaction to be made directly within the OLTP system, with no latency penalty.&nbsp;</p><p>By combining these two recent technological breakthroughs, IBM offers an integrated platform for real-time, in-transaction predictive analytics solution to maximize the business value.&nbsp;</p>',0,198),
	(26,'test','2014-06-20 19:10:27','2014-06-20 19:10:27','test',100011,'#!//ms/dist/perl5/bin/perl5.10 -w<br /><br />use MSDW::Version&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp; &#39;Math-MatrixReal&#39;&nbsp;&nbsp;&nbsp; =&gt; &#39;2.01&#39;,<br />&nbsp; &#39;Exporter&#39;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; &#39;5.65&#39;,<br />;&nbsp;&nbsp;&nbsp;<br /><br />use Math::MatrixReal;<br />use constant lambda =&gt; 0.95;<br />use constant a =&gt; 1000000;<br />use constant e =&gt; 0.00001;<br /><br />#------------------------------------------------------------<br /># Recursive algorithm to calculate the final beta coeffients<br />#------------------------------------------------------------<br />sub alg_recursive{<br />&nbsp;&nbsp;&nbsp; my($hash) = @_;<br />&nbsp;&nbsp;&nbsp; my %hash = %$hash;<br />&nbsp;my @datelist = keys%hash;<br />&nbsp;my $listsize = @datelist;<br />&nbsp;&nbsp;&nbsp; my $x_cols = 0;<br />&nbsp;@datelist = sort{&amp;comp_date($a,$b);} @datelist;&nbsp;&nbsp; # sort dates<br />&nbsp;&nbsp;&nbsp; $sample_x = $hash{(keys%hash)[0]}-&gt;{&#39;x&#39;};<br />&nbsp;&nbsp;&nbsp; ($x_rows,$x_cols) =&nbsp; $sample_x-&gt;dim();&nbsp; # get dim of matrix x<br /><br />&nbsp;#Prepare the inital data for recursive<br />&nbsp;&nbsp;&nbsp; my $beta = &amp;concrete_col(e,$x_cols);&nbsp; # initialize the value of beta matrix<br />&nbsp;&nbsp;&nbsp; my $I = Math::MatrixReal-&gt;new_diag(&amp;concrete_list(1,$x_cols)); # create a diagonal martix as I<br />&nbsp;&nbsp;&nbsp; my $P = $I * (a**2); # initialize the value of P<br />&nbsp;&nbsp;&nbsp; my $L = new Math::MatrixReal($x_cols,1);<br /><br />&nbsp;&nbsp;&nbsp; my $recursive_times = 0;<br />&nbsp;&nbsp;&nbsp; my %immediate;<br />&nbsp;foreach $key (@datelist) {<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $value = $hash{$key};<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $transpose_x = new Math::MatrixReal($x_cols,1);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $current_x =&nbsp; $value-&gt;{&#39;x&#39;};<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $current_y =&nbsp; $value-&gt;{&#39;y&#39;};<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # calsulte L<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $transpose_x -&gt; transpose($current_x);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $tmp_px = $P * $transpose_x;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $tmp_xpx = $current_x * $P * $transpose_x;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $tmp_scalar = 1/( $tmp_xpx-&gt;element(1,1) + lambda );<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $L-&gt;multiply_scalar($tmp_px,$tmp_scalar);<br />&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # calculte P<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $tmp_p = new Math::MatrixReal($x_cols,$x_cols);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $tmp_p-&gt;multiply_scalar($I - $L*$current_x,1/lambda);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $P = $tmp_p * $P;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # calculte beta base by L&amp;P<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $tmp_beta = new Math::MatrixReal($x_cols,1);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $tmp_xbeta = $current_x * $beta;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $tmp_scalar = $tmp_xbeta -&gt; element(1,1);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $tmp_beta-&gt;multiply_scalar($L,$current_y - $tmp_scalar);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $beta = $beta + $tmp_beta;<br />&nbsp;&nbsp;<br />&nbsp;&nbsp;#Store the immediate values<br />&nbsp;&nbsp;$immediate{$key}-&gt;{&#39;beta&#39;} = $beta;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $immediate{$key}-&gt;{&#39;L&#39;}&nbsp;&nbsp;&nbsp; = $L;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $immediate{$key}-&gt;{&#39;P&#39;}&nbsp;&nbsp;&nbsp; = $P;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;++$recursive_times;<br />&nbsp;&nbsp;&nbsp; }<br />&nbsp;&nbsp;&nbsp; return %immediate;<br />}&nbsp;<br /><br />sub comp_date(){<br />&nbsp;&nbsp;&nbsp; my($date1,$date2) = @_;<br />&nbsp;&nbsp;&nbsp; my($month1,$day1,$year1) = split(&#39;/&#39;,$date1);<br />&nbsp;&nbsp;&nbsp; my($month2,$day2,$year2) = split(&#39;/&#39;,$date2);<br />&nbsp;<br />&nbsp;&nbsp;&nbsp; if($year1 &gt; $year2){<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return 1;<br />&nbsp;&nbsp;&nbsp; }elsif($year1 eq $year2){&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if ($month1 &gt; $month2){<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return 1;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }elsif($month1 eq $month2){<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if($day1 &gt; $day2){<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return 1;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }elsif($day1 &lt; $day2){<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return -1;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }else{<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return 0;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }else{<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return -1;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br />&nbsp;&nbsp;&nbsp; }else{<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return -1;<br />&nbsp;&nbsp;&nbsp; }<br /><br />}<br /><br /># concrete a one colume matrix with speocied value<br />sub concrete_col{<br />&nbsp;&nbsp;&nbsp; my ($value,$scale) = @_;<br />&nbsp;&nbsp;&nbsp; my $matrix = new Math::MatrixReal($scale,1);<br />&nbsp;&nbsp;&nbsp; for($i=1;$i&lt;=$scale;$i++){<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $matrix-&gt;assign($i,1,$value);<br />&nbsp;&nbsp;&nbsp; }<br />&nbsp;&nbsp;&nbsp; return $matrix;<br />}<br /><br /># concrete a list with specied value and length<br />sub concrete_list{<br />&nbsp;&nbsp;&nbsp; my ($value,$scale) = @_;<br />&nbsp;&nbsp;&nbsp; my $lst = [];<br />&nbsp;&nbsp;&nbsp; for($i=0;$i&lt;$scale;$i++){<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $lst-&gt;[$i] = $value;<br />&nbsp;&nbsp;&nbsp; }&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp; return $lst;<br />}<br /><br />return 1;<br />&nbsp;',1,1),
	(27,'test py','2014-09-10 20:30:36','2014-07-23 01:15:42','test',100011,'1/2/2014,ME+1,24596015,9692768<br />1/3/2014,ME+2,8971052,3343905<br />1/6/2014,ME+3,8333543,3427839<br />1/7/2014,ME+4,7837051,3928289<br />1/8/2014,ME+5,7145351,3312258<br />1/9/2014,ME+6,6901377,3236859<br />1/10/2014,ME+7,7816761,4147565<br />1/13/2014,ME+8,8223257,3459541<br />1/14/2014,ME+9,7130582,3368809<br />1/15/2014,ME+10,21303629,5909440<br />1/16/2014,ME+11,10589311,4098279<br />1/17/2014,ME+12,7819171,3547497<br />1/21/2014,ME+13,8281112,4019947<br />1/22/2014,ME+14,7699761,3734758<br />1/23/2014,ME+15,8047552,3932632<br />1/24/2014,ME+16,7619586,3656660<br />1/27/2014,ME+17,9984709,5585169<br />1/28/2014,ME+18,8292914,3575774<br />1/29/2014,ME+19,7554212,3703511<br />1/30/2014,ME-1,18250073,9325398<br />1/31/2014,ME,10824397,5299741<br />2/3/2014,ME+1,26392214,12961591<br />2/4/2014,ME+2,10013208,4248562<br />2/5/2014,ME+3,7988853,3890908<br />2/6/2014,ME+4,7705108,3519797<br />2/7/2014,ME+5,7767609,3569332<br />2/10/2014,ME+6,7704988,3317044<br />2/11/2014,ME+7,6730502,3156901<br />2/12/2014,ME+8,6020077,2929104<br />2/13/2014,ME+9,6439525,2903446<br />2/14/2014,ME+10,8550559,3896859<br />2/18/2014,ME+11,9407126,3874479<br />2/19/2014,ME+12,7937290,3886649<br />2/20/2014,ME+13,6853108,3176591<br />2/21/2014,ME+14,7415320,3407316<br />2/24/2014,ME+15,7955046,4460478<br />2/25/2014,ME+16,7569830,4151171<br />2/26/2014,ME+17,6225790,3345215<br />2/27/2014,ME-1,17776989,9188787<br />2/28/2014,ME,10365223,5422762<br />3/3/2014,ME+1,25565361,12639432<br />3/4/2014,ME+2,9999102,4200828<br />3/5/2014,ME+3,6854578,3450056<br />3/6/2014,ME+4,6301485,3512721<br />3/7/2014,ME+5,7609374,3523930<br />3/10/2014,ME+6,9584448,3605026<br />3/11/2014,ME+7,7890796,3353159<br />3/12/2014,ME+8,6987893,3347065<br />3/13/2014,ME+9,6684783,3303877<br />3/14/2014,ME+10,8094586,3997989<br />3/17/2014,ME+11,13168829,5849020<br />3/18/2014,ME+12,8502980,3948589<br />3/19/2014,ME+13,6305447,3133529<br />3/20/2014,ME+14,6870060,3215134<br />3/21/2014,ME+15,8751873,4656586<br />3/24/2014,ME+16,7899282,3981897<br />3/25/2014,ME+17,8158443,3895891<br />3/26/2014,ME+18,7775467,3842509<br />3/27/2014,ME+19,7089632,3667808<br />3/28/2014,ME-1,19201585,9050488<br />3/31/2014,ME,15687507,5529495<br />4/1/2014,ME+1,23117021,12569044<br />4/2/2014,ME+2,9594320,4145605<br />4/3/2014,ME+3,7953893,4584014<br />4/4/2014,ME+4,6427267,3565512<br />4/7/2014,ME+5,8277624,3958495<br />4/8/2014,ME+6,7266532,3779128<br />4/9/2014,ME+7,7801578,4472577<br />4/10/2014,ME+8,7246688,3755722<br />4/11/2014,ME+9,15030137,14815823<br />4/14/2014,ME+10,21552360,5301495<br />4/15/2014,ME+11,15884590,4200776<br />4/16/2014,ME+12,24186991,17362205<br />4/17/2014,ME+13,7409405,3981462<br />4/21/2014,ME+14,8041295,4061583<br />4/22/2014,ME+15,6888844,3853723<br />4/23/2014,ME+16,6972298,3374925<br />4/24/2014,ME+17,6614683,3389810<br />4/25/2014,ME+18,8925485,4137867<br />4/28/2014,ME+19,8100922,3856487<br />4/29/2014,ME-1,17793566,9142585<br />4/30/2014,ME,10369816,5173095<br />5/1/2014,ME+1,24825876,12362801<br />5/2/2014,ME+2,8964099,3802875<br />5/5/2014,ME+3,7845777,3859470<br />5/6/2014,ME+4,5835644,3278512<br />5/7/2014,ME+5,6369821,3245550<br />5/8/2014,ME+6,5927465,3004456<br />5/9/2014,ME+7,6891903,4042690<br />5/12/2014,ME+8,7649424,3354138<br />5/13/2014,ME+9,6195971,3216279<br />5/14/2014,ME+10,7771532,3904828<br />5/15/2014,ME+11,9339157,4088798<br />5/16/2014,ME+12,8544442,3858230<br />5/19/2014,ME+13,7301373,3738871<br />5/20/2014,ME+14,6822095,3565865<br />5/21/2014,ME+15,6161357,3186490<br />5/22/2014,ME+16,6095982,2876029<br />5/23/2014,ME+17,7051424,3322213<br />5/27/2014,ME+18,8362090,4107742<br />5/28/2014,ME+19,6332692,3277207<br />5/29/2014,ME-1,17391376,10043541<br />5/30/2014,ME,9282265,4622139<br />6/2/2014,ME+1,25699880,12549623<br />6/3/2014,ME+2,9768829,4859381<br />6/4/2014,ME+3,6760996,3333767<br />6/5/2014,ME+4,7110959,3698536<br />6/6/2014,ME+5,8235180,4037336<br />6/9/2014,ME+6,7828940,3436909<br />6/10/2014,ME+7,8486867,3491722<br />6/11/2014,ME+8,7442410,3473803<br />6/12/2014,ME+9,7949611,3360744<br />6/13/2014,ME+10,8813477,4046403<br />6/16/2014,ME+11,11391009,5172428<br />6/17/2014,ME+12,8239523,3805210<br />6/18/2014,ME+13,6224032,3654113<br />6/19/2014,ME+14,6753547,3525921<br />6/20/2014,ME+15,9464253,5229460<br />6/23/2014,ME+16,9766844,5086124<br />6/24/2014,ME+17,7644509,3975206<br />6/25/2014,ME+18,9152380,4323021<br />6/26/2014,ME+19,8061929,3462595<br />6/27/2014,ME-1,19085080,10495612<br />6/30/2014,ME,14909606,5849495<br />7/1/2014,ME+1,24096166,13752932<br />7/2/2014,ME+2,11758774,5065956<br />7/3/2014,ME+3,7756905,3485478<br />7/7/2014,ME+4,7279180,3639929<br />7/8/2014,ME+5,7099728,3508982<br />7/9/2014,ME+6,6796876,3208340<br />7/10/2014,ME+7,7230434,4522492<br />7/11/2014,ME+8,7143439,3020248<br />7/14/2014,ME+9,7334511,3575755<br />7/15/2014,ME+10,21258153,5779213<br />7/16/2014,ME+11,9594422,4335551<br />7/17/2014,ME+12,6607708,3325182<br />7/18/2014,ME+13,7588526,4099060<br />7/21/2014,ME+14,6869953,3743567<br />7/22/2014,ME+15,5717242,3126524<br />7/23/2014,ME+16,6506937,3480096<br />7/24/2014,ME+17,6278820,3397220<br />7/25/2014,ME+18,9913638,3845799<br />7/28/2014,ME+19,8761635,3940172<br />7/29/2014,ME+20,6186766,3274899<br />7/30/2014,ME-1,,<br />7/31/2014,ME,,<br />8/1/2014,ME+1,,<br />8/4/2014,ME+2,,<br />8/5/2014,ME+3,,<br />8/6/2014,ME+4,,<br />8/7/2014,ME+5,,<br />8/8/2014,ME+6,,<br />8/11/2014,ME+7,,<br />8/12/2014,ME+8,,<br />8/13/2014,ME+9,,<br />8/14/2014,ME+10,,<br />8/15/2014,ME+11,,<br />8/18/2014,ME+12,,<br />8/19/2014,ME+13,,<br />8/20/2014,ME+14,,<br />8/21/2014,ME+15,,<br />8/22/2014,ME+16,,<br />8/25/2014,ME+17,,<br />8/26/2014,ME+18,,<br />8/27/2014,ME+19,,<br />8/28/2014,ME-1,,<br />8/29/2014,ME,,<br />9/2/2014,ME+1,,<br />9/3/2014,ME+2,,<br />9/4/2014,ME+3,,<br />9/5/2014,ME+4,,<br />9/8/2014,ME+5,,<br />9/9/2014,ME+6,,<br />9/10/2014,ME+7,,<br />9/11/2014,ME+8,,<br />9/12/2014,ME+9,,<br />9/15/2014,ME+10,,<br />9/16/2014,ME+11,,<br />9/17/2014,ME+12,,<br />9/18/2014,ME+13,,<br />9/19/2014,ME+14,,<br />9/22/2014,ME+15,,<br />9/23/2014,ME+16,,<br />9/24/2014,ME+17,,<br />9/25/2014,ME+18,,<br />9/26/2014,ME+19,,<br />9/29/2014,ME-1,,<br />9/30/2014,ME,,<br />10/1/2014,ME+1,,<br />10/2/2014,ME+2,,<br />10/3/2014,ME+3,,<br />10/6/2014,ME+4,,<br />10/7/2014,ME+5,,<br />10/8/2014,ME+6,,<br />10/9/2014,ME+7,,<br />10/10/2014,ME+8,,<br />10/13/2014,ME+9,,<br />10/14/2014,ME+10,,<br />10/15/2014,ME+11,,<br />10/16/2014,ME+12,,<br />10/17/2014,ME+13,,<br />10/20/2014,ME+14,,<br />10/21/2014,ME+15,,<br />10/22/2014,ME+16,,<br />10/23/2014,ME+17,,<br />10/24/2014,ME+18,,<br />10/27/2014,ME+19,,<br />10/28/2014,ME+20,,<br />10/29/2014,ME+21,,<br />10/30/2014,ME-1,,<br />10/31/2014,ME,,<br />11/3/2014,ME+1,,<br />11/4/2014,ME+2,,<br />11/5/2014,ME+3,,<br />11/6/2014,ME+4,,<br />11/7/2014,ME+5,,<br />11/10/2014,ME+6,,<br />11/11/2014,ME+7,,<br />11/12/2014,ME+8,,<br />11/13/2014,ME+9,,<br />11/14/2014,ME+10,,<br />11/17/2014,ME+11,,<br />11/18/2014,ME+12,,<br />11/19/2014,ME+13,,<br />11/20/2014,ME+14,,<br />11/21/2014,ME+15,,<br />11/24/2014,ME+16,,<br />11/25/2014,ME+17,,<br />11/26/2014,ME-1,,<br />11/28/2014,ME,,<br />12/1/2014,ME+1,,<br />12/2/2014,ME+2,,<br />12/3/2014,ME+3,,<br />12/4/2014,ME+4,,<br />12/5/2014,ME+5,,<br />12/8/2014,ME+6,,<br />12/9/2014,ME+7,,<br />12/10/2014,ME+8,,<br />12/11/2014,ME+9,,<br />12/12/2014,ME+10,,<br />12/15/2014,ME+11,,<br />12/16/2014,ME+12,,<br />12/17/2014,ME+13,,<br />12/18/2014,ME+14,,<br />12/19/2014,ME+15,,<br />12/22/2014,ME+16,,<br />12/23/2014,ME+17,,<br />12/24/2014,ME+18,,<br />12/26/2014,ME+19,,<br />12/29/2014,ME+20,,<br />12/30/2014,ME-1,,<br />12/31/2014,ME,,',1,3);

/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table post_file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_file`;

CREATE TABLE `post_file` (
  `post_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  KEY `postid_index` (`post_id`),
  KEY `fileid_index` (`file_id`),
  CONSTRAINT `file_id_refernece` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `post_id_reference` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `author` varchar(50) NOT NULL,
  `view_count` int(11) DEFAULT '0',
  `type` enum('NEWS','NOTICE') DEFAULT NULL,
  `isDraft` int(11) NOT NULL DEFAULT '0',
  `publisher` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `publisher_id` (`publisher`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `title`, `content`, `create_time`, `update_time`, `author`, `view_count`, `type`, `isDraft`, `publisher`)
VALUES
	(25,'2009年(春)大中华区大型主机数据库用户大会邀请函','<p><strong>尊敬的用户单位及IT界同行：</strong></p><p>非常高兴能在CDUG无锡会议中与您结识，并感谢您对CDUG的支持和关注！中国计算机用户协会，大中华区大型主机数据库用户协会主办的&ldquo;2009年大型主机数据库用户技术研讨会&rdquo;将在2009年一月份在以下城市举行：</p><p><strong>上海研讨会</strong>：2009年1月9日（星期五）</p><p><strong>北京研讨会</strong>：2009年1月12日（星期一）</p><p>本次研讨会的主题是：&ldquo;经验共享&rdquo;。将围绕此主题，我们邀请了IBM公司美国硅谷实验室专家、国内主机数据库用户、主机数据库开发以及管理人员、国内高校主机数据库教师，分享大型主机数据库实用技术的演讲，并就技术与经验尽情交流。</p><p>主要演讲内容初步商定如下：</p><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:650px\">	<tbody>		<tr>			<td>			<p><strong>演讲标题</strong></p>			</td>			<td>			<p><strong>演讲人及单位</strong></p>			</td>		</tr>		<tr>			<td>			<p>大师讲坛：<br />			DB2新功能与新趋势</p>			</td>			<td>			<p><strong><em>傅毓勤 博士</em></strong><br />			<strong><em>IBM</em></strong><strong><em>杰出工程师，高级经理，查询优化专家</em></strong></p>			</td>		</tr>		<tr>			<td>			<p>大师讲坛：<br />			Insert performance and new enhancement update. (hot spot: INSERT to Journal table)</p>			</td>			<td>			<p><strong><em>邓之嘉 博士</em></strong><br />			<strong><em>IBM</em></strong><strong><em>杰出工程师，</em></strong><strong><em>DB2</em></strong><strong><em>创始者之一</em></strong></p>			</td>		</tr>		<tr>			<td>			<p>大师讲坛：<br />			VSCR problem</p>			</td>			<td>			<p><strong><em>邓之嘉 博士</em></strong><br />			<strong><em>IBM</em></strong><strong><em>杰出工程师，</em></strong><strong><em>DB2</em></strong><strong><em>创始者之一</em></strong></p>			</td>		</tr>		<tr>			<td>			<p>大师讲坛：<br />			Concurrency Usage Design for DB2 system table as SYSDBASE &amp; SYSPKAGE to provide the real 7X24 hours</p>			</td>			<td>			<p><strong><em>邓之嘉 博士</em></strong><br />			<strong><em>IBM</em></strong><strong><em>杰出工程师，</em></strong><strong><em>DB2</em></strong><strong><em>创始者之一</em></strong></p>			</td>		</tr>		<tr>			<td>			<p>经验分享：<br />			Table partitioning best practice sharing (and questions about ROTATE PARTITION to IBM).&nbsp;</p>			</td>			<td>			<p><strong><em>工商银行用户</em></strong></p>			</td>		</tr>		<tr>			<td>			<p>经验分享：<br />			Migration from open platform to mainframe.&nbsp;</p>			</td>			<td>			<p><strong><em>农业银行用户</em></strong></p>			</td>		</tr>		<tr>			<td>			<p>圆桌讨论</p>			</td>			<td>			<p><strong><em>IBM</em></strong><strong><em>开发试验室专家以及</em></strong><strong><em>DB2</em></strong><strong><em>用户</em></strong></p>			</td>		</tr>	</tbody></table><hr /><p>在崭新的2009年度，CDUG再次期待与您相聚！</p><p><strong>附录：会议日程及会务安排</strong></p><ol>	<li>会议地点：<br />	上海研讨会：同济大学 本部（四平路1239号） 中法中心401会议室。<br />	北京研讨会：IBM CDL(中国开发实验室), 海淀区东北旺西路8号，中关村软件园28号楼。</li>	<li>会议议程：<br />	<strong>8:30 - 8:55 &nbsp; </strong><strong>签到<br />	<strong>9:00-10:00 &nbsp; </strong><strong>会议<br />	10:00 - 10:20 &nbsp; 茶歇<br />	<strong>10:20-12:00 </strong><strong>会议<br />	12:00 &ndash; 13:00 &nbsp; 午餐<br />	<strong>13:00-15:00 </strong><strong>会议<br />	15:00 - 15:20 &nbsp; 茶歇<br />	<strong>15:20-18:00 </strong><strong>会议</strong></strong></strong></strong></strong></li>	<li>本次会议不收取会务费。交通费，以及其他邀请函所未列出事项之费用自理。</li>	<li>出席会议的代表请填写如下回执（见表)，于2009年1月1 日前传真至021-69589840，或电邮至<a href=\"mailto:wangminamy@gmail.com_\">wangminamy@gmail.com</a>。（其中&ldquo;会场&rdquo;为您所要参加的研讨会会场，若您填写&ldquo;北京&rdquo;，表示您愿报名参加1月12日举行的北京研讨会。 如果您想要同时参加两场研讨会，请填写&ldquo;北京上海&rdquo;。）</li>	<li>本次会议邀请规模为50人。会议举办前，会务组将向报名者发送电邮确认。</li>	<li>大会联络处信息：<br />	联系电话：021-69589975 &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br />	传 真：021-69589840<br />	联 系 人：黄&nbsp; 杰&nbsp; 13501932599 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />	&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;王&nbsp; 敏&nbsp; 13701602401<br />	&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;冯巾松&nbsp; 13917617565</li></ol><p>主办单位：中国计算机用户协会</p><p>大中华区大型主机数据库用户协会</p><p>承办单位：同济大学软件学院</p><p>支持单位：国际商业机器全球服务(中国)有限公司</p><p>&nbsp;</p><p>二零零八年十二月八日</p>','2014-04-19 01:40:15','2014-05-04 06:14:11','CDUG官网',193,'NOTICE',0,100001),
	(26,'2009年(秋)大中华区大型主机数据库用户大会邀请函','<p><strong>尊敬的用户单位及IT界同行：</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;非常感谢您对CDUG的支持和关注！中国计算机用户协会，大中华区大型主机数据库用户协会主<br />\r\n办的&ldquo;2009年大型主机数据库用户技术研讨会-上海秋季会议&rdquo;将于2009年9月25-26日在上海皇冠假日酒店召开。</p>\r\n\r\n<p>本次研讨会的主题是：&ldquo;经验共享&rdquo;。将围绕此主题，我们邀请了IBM公司美国硅谷实验室专<br />\r\n家、国内主机数据库用户、主机数据库开发以及管理人员、国内高校主机数据库教师，分享大型主机<br />\r\n数据库实用技术的演讲，并就技术与经验尽情交流。</p>\r\n\r\n<p>主要演讲内容初步商定如下：</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:650px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>主题</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>演讲人及单位</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>大师讲坛：<br />\r\n			SQL 性能以及调优系列主题1-3</p>\r\n			</td>\r\n			<td>\r\n			<p><em>傅毓勤（</em><em>Gene Fuh</em><em>） 博士</em><br />\r\n			IBM 杰出工程师，查询优化专家</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>大师讲坛：<br />\r\n			高可用性系列主题1-2</p>\r\n			</td>\r\n			<td>\r\n			<p><em>邓之嘉（</em><em>Jim Teng</em><em>）博士</em><br />\r\n			IBM 杰出工程师，DB2创始人之一</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>经验分享</p>\r\n			</td>\r\n			<td>\r\n			<p>工商银行DB2用户</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>圆桌讨论</p>\r\n			</td>\r\n			<td>\r\n			<p>DB2开发实验室专家以及DB2用户</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>主机校友会</p>\r\n			</td>\r\n			<td>\r\n			<p>各行业主机从业人员</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>在这美丽的金秋时节，CDUG期待与您再次相聚！</p>\r\n\r\n<hr />\r\n<p><strong>附录：会议日程及会务安排</strong><br />\r\n1、会议地点：<br />\r\n上海世纪皇冠假日酒店： 上海市 浦东新区 民生路1433号 &nbsp; 电话：021-51908888<br />\r\n2、会议议程：</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>9月25日（星期五）</p>\r\n			</td>\r\n			<td>\r\n			<p>9月26日（星期六）</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>9:00&nbsp;-&nbsp;9:30&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;签到&nbsp;<br />\r\n			9:30&nbsp;-&nbsp;12:00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会议&nbsp;<br />\r\n			12:00&nbsp;-&nbsp;13:30&nbsp;&nbsp;&nbsp;午餐<br />\r\n			13:30&nbsp;-&nbsp;17:00&nbsp;&nbsp;&nbsp;会议&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>9:00&nbsp;-&nbsp;12:00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会议&nbsp;<br />\r\n			12:00&nbsp;-&nbsp;13:30&nbsp;&nbsp;&nbsp;午餐<br />\r\n			13:30&nbsp;-&nbsp;17:30&nbsp;&nbsp;&nbsp;会议&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>3、本次会议不收取会务费，提供午餐。交通费，以及其他邀请函所未列出事项之费用自理。<br />\r\n4、出席会议的代表请填写如下回执（见表），于2009年9月18&nbsp;日前传真至021-69589975，或电邮至 min.wang@tongji.edu.cn。欢迎您和您的朋友同时报名。</p>\r\n\r\n<p>5、本次会议邀请规模为80人。会议举办前，会务组将向报名者发送电邮确认。<br />\r\n6、大会联络处信息：<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; 联系电话：021-69589975&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;传&nbsp;&nbsp; &nbsp; 真：021-69589975<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联&nbsp;系&nbsp;人：黄&nbsp;&nbsp;杰&nbsp;13501932599 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;王&nbsp;&nbsp;敏&nbsp;13701602401&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;冯巾松&nbsp;13917617565</p>\r\n\r\n<p><strong>主办单位：</strong>中国计算机用户协会<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大中华区大型主机数据库用户协会&nbsp;<br />\r\n<strong>承办单位：</strong>同济大学软件学院<br />\r\n<strong>支持单位：</strong>国际商业机器全球服务(中国)有限公司<br />\r\n<br />\r\n二零零九年八月二十八日</p>\r\n','2014-04-19 01:45:00','2014-04-19 01:45:00','CDUG官网',65,'NOTICE',0,100001),
	(30,'2011年大中华区大型主机应用与开发用户大会邀请函','<p><strong>尊敬的主机专家及IT界同行：</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;非常感谢您对CDUG的支持和关注！IBM主机大学合作项目全国校友会与同济大学软件学院共同主办的&ldquo;2011年大型主机应用与开发技术研讨会-上海秋季会议&rdquo;将于9月16-17日（星期五，星期六）在上海豫园万丽酒店召开。</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;在本次大会中，您不但可以继续享用中外DB2 for z/OS顶级专家带来的技术盛宴，更有来自IMS, CICS，以及z/OS研发实验室的技术专题，内容涵盖您在主机平台上应用开发，系统管理的多个方面。</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;我们邀请了来自IBM公司美国硅谷实验室与北京开发试验室的专家、国内IBM大型主机用户、主机应用技术开发以及管理人员、国内高校大型企业计算方向教师，和您一起分享大型主机实用技术的演讲，并就技术与经验尽情交流。并为不同背景和兴趣的主机技术与商务人士安排了三个技术通道，便于您的选择和搭配。</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; 相信我们精心预备的专题，能加深您对主机技术的了解，开拓您的技术知识面，掌握主机技术发展动态，为您带来更多的技术&ldquo;秘籍&rdquo;，为您的工作带来成功和便利。</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;在这美丽的金秋时节，CDUG期待与您再次相聚！<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>附录一：会议日程及会务安排</strong><br />\r\n1、会议网站：<br />\r\n大中华区DB2用户大会： <a href=\"http://cdug.tongji.edu.cn\">http://cdug.tongji.edu.cn</a>/</p>\r\n\r\n<p>2、会议地点：<br />\r\n上海豫园万丽酒店： <a href=\"http://www.yuyuan-hotel.com/\">http://www.yuyuan-hotel.com/</a>&nbsp;</p>\r\n\r\n<p>3、会议议程：</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>9月16日（星期五）</p>\r\n			</td>\r\n			<td>\r\n			<p>9月17日（星期六）</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>8:30&nbsp;-&nbsp;9:00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;签到&nbsp;<br />\r\n			9:00&nbsp;-&nbsp;12:00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会议&nbsp;<br />\r\n			12:00&nbsp;-&nbsp;13:30&nbsp;&nbsp;&nbsp;午餐<br />\r\n			13:30&nbsp;-&nbsp;17:00&nbsp;&nbsp;&nbsp;会议&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>9:00&nbsp;-&nbsp;12:00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会议&nbsp;<br />\r\n			12:00&nbsp;-&nbsp;13:30&nbsp;&nbsp;&nbsp;午餐<br />\r\n			13:30&nbsp;-&nbsp;17:30&nbsp;&nbsp;&nbsp;会议&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>4、本次会议不收取会务费，提供会议期间豫园万丽酒店正餐。交通费，以及其他邀请函所未列出事项之费用自理。</p>\r\n\r\n<p>5、CDUG新的网站目前正在试运行中。今年的报名请您<strong>务必首先通过网站注册报名</strong>，由于网站可能不稳定，请您在注册报名的同时，将以下简要信息回复我们：mail2cdug@gmail.com。欢迎您和您的同事同时报名。</p>\r\n\r\n<p>6、名额有限，我们将依据报名的先后顺序分配名额。会议举办前，会务组将向报名者发送电邮确认。</p>\r\n\r\n<p>7、大会联络处信息：<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; 联系电话：021-69589975&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;传&nbsp;&nbsp; &nbsp; 真：021-69589975<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联&nbsp;系&nbsp;人：黄&nbsp;&nbsp;杰&nbsp;13501932599 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;王&nbsp;&nbsp;敏&nbsp;13701602401&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;冯巾松&nbsp;13917617565</p>\r\n\r\n<p><strong>承办单位：</strong> IBM主机大学合作项目全国校友会&nbsp;，同济大学软件学院<br />\r\n<strong>支持单位：</strong>国际商业机器全球服务(中国)有限公司&nbsp; 大学合作部<br />\r\n<strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>国际商业机器全球投资(中国)有限公司 中国开发实验室<br />\r\n<br />\r\n二零一一年八月二十二日</p>\r\n','2014-04-21 03:22:50','2014-04-21 03:22:50','CDUG官网',89,'NOTICE',0,100001),
	(31,'2012年大中华区大型主机应用与开发用户大会邀请函','<p><strong>尊敬的主机专家及IT界同行：</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;非常感谢您对CDUG的支持和关注！IBM主机大学合作项目全国校友会与同济大学软件学院共同主办的&ldquo;2012年大型主机应用与开发技术研讨会-上海秋季会议&rdquo;将于9月21-22日（星期五，星期六）在上海豫园万丽酒店召开。&nbsp;</p><p>&nbsp; &nbsp; 在本次大会中，您不但可以继续享用中外DB2 for z/OS顶级专家带来的技术盛宴，更有来自IMS, CICS，以及z/OS研发实验室的技术专题，内容涵盖您在主机平台上应用开发，系统管理的多个方面。</p><p>&nbsp; &nbsp; 我们邀请了来自IBM公司美国硅谷实验室与北京开发试验室的专家、国内IBM大型主机用户、主机应用技术开发以及管理人员、国内高校大型企业计算方向教师，和您一起分享大型主机实用技术的演讲，并就技术与经验尽情交流。</p><p>&nbsp; &nbsp; 相信我们精心预备的专题，能加深您对主机技术的了解，开拓您的技术知识面，掌握主机技术发展动态，为您带来更多的技术&ldquo;秘籍&rdquo;，为您的工作带来成功和便利。</p><p>&nbsp; &nbsp; 主要演讲内容初步商定如下：</p><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:650px\">	<tbody>		<tr>			<td>			<p><strong>主题</strong></p>			</td>			<td>			<p><strong>演讲人</strong><strong>/</strong><strong>内容</strong></p>			</td>		</tr>		<tr>			<td>			<p>大师讲坛： &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />			IMS 与SOA助你商务的增长与优化</p>			</td>			<td>			<p>贺方世美(Shyh-Mei F. Ho) 女士 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />			IBM美国硅谷实验室， 杰出工程师，IMS-SOA总架构师</p>			</td>		</tr>		<tr>			<td>			<p>客户分享：<br />			Workload Modelling on Mainframe</p>			</td>			<td>			<p>Alvin Yeung<br />			VP, 主机基础架构负责人，Morgan Stanley</p>			</td>		</tr>		<tr>			<td>			<p>客户分享：<br />			Selected Topics on Disk Storage of DB2 for z/OS</p>			</td>			<td>			<p>林晖<br />			工商银行主机系统部</p>			</td>		</tr>		<tr>			<td>			<p>专家面对面</p>			</td>			<td>			<p>Hong Tie 女士 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />			优化工具解决方案架构师</p>			</td>		</tr>		<tr>			<td>			<p>专家论坛：<br />			System z Parallel Sysplex Update</p>			</td>			<td>			<p>Michael Jordan<br />			IBM High End Center of Competence资深技术专家<br />			22年system z 开发经验专家</p>			</td>		</tr>		<tr>			<td>			<p>专家论坛：<br />			IBM zEnterprise Cloud Solutions</p>			</td>			<td>			<p>郑淼<br />			IBM CDL主机中间件解决方案中心的首席架构师</p>			</td>		</tr>		<tr>			<td>			<p>专家论坛：<br />			What happen when your DB2 become bigger</p>			</td>			<td>			<p>范炯<br />			IBM 中国的IT咨询专家</p>			</td>		</tr>		<tr>			<td>			<p>圆桌讨论</p>			</td>			<td>			<p>DB2/IMS/CICS/zOS开发实验室专家及用户</p>			</td>		</tr>		<tr>			<td>			<p>专家面对面</p>			</td>			<td>			<p>众多CDUG用户耳熟能详的大师以及业内顶级专家现场答疑解惑</p>			</td>		</tr>		<tr>			<td>			<p>主机校友会</p>			</td>			<td>			<p>各行业主机从业人员欢聚的盛会</p>			</td>		</tr>	</tbody></table><hr /><p>&nbsp;&nbsp;在这美丽的金秋时节，CDUG期待与您再次相聚！<br />&nbsp;</p><p><strong>附录：会议日程及会务安排</strong><br />1、会议网站：<br />大中华区DB2用户大会： <a href=\"http://www.yuyuan-hotel.com/\">http:/cdug.tongji.edu.cn</a>/</p><p>2、会议地点：<br />上海豫园万丽酒店： <a href=\"http://www.yuyuan-hotel.com/\">http://www.yuyuan-hotel.com/</a></p><p>3、会议议程：</p><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:500px\">	<tbody>		<tr>			<td>			<p>9月21日（星期五）</p>			</td>			<td>			<p>9月22日（星期六）</p>			</td>		</tr>		<tr>			<td>			<p>9:00&nbsp;-&nbsp;9:30&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;签到&nbsp;<br />			9:30&nbsp;-&nbsp;12:00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会议&nbsp;<br />			12:00&nbsp;-&nbsp;13:30&nbsp;&nbsp;&nbsp;午餐<br />			13:30&nbsp;-&nbsp;17:00&nbsp;&nbsp;&nbsp;会议&nbsp;</p>			</td>			<td>			<p>9:00&nbsp;-&nbsp;12:00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会议&nbsp;<br />			12:00&nbsp;-&nbsp;13:30&nbsp;&nbsp;&nbsp;午餐<br />			13:30&nbsp;-&nbsp;17:30&nbsp;&nbsp;&nbsp;会议&nbsp;</p>			</td>		</tr>	</tbody></table><p>4、本次会议不收取会务费，提供会议期间豫园万丽酒店午餐，交通费，以及其他邀请函所未列出事项之费用自理。</p><p>5、出席会议的代表请填写如下回执（见表），于2012年9月10&nbsp;日前电邮至 mail2cdug@gmail.com。欢迎您和您的同事同时报名。</p><p>6、名额有限，我们将依据报名的先后顺序分配名额。会议举办前，会务组将向报名者发送电邮确认。</p><p>7、大会联络处信息：<br />&nbsp;&nbsp;&nbsp;&nbsp; 联系电话：021-69589975&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;传&nbsp;&nbsp; &nbsp; 真：021-69589975<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联&nbsp;系&nbsp;人：黄&nbsp;&nbsp;杰&nbsp;13501932599 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;王&nbsp;&nbsp;敏&nbsp;18017926033&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;冯巾松&nbsp;13917617565<br /><br /><strong>承办单位：</strong> IBM主机大学合作项目全国校友会&nbsp;，同济大学软件学院<br /><strong>支持单位：</strong>国际商业机器全球服务(中国)有限公司&nbsp; 大学合作部<br /><strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>国际商业机器全球投资(中国)有限公司 中国开发实验室<br /><br />二零一二年七月二十日</p>','2014-04-21 03:25:20','2014-05-04 18:59:06','CDUG官网',116,'NOTICE',0,100001),
	(32,'2013年大中华区大型主机应用与开发用户大会邀请函','<p><strong>亲爱的朋友们:</strong><br /><br />一年一度的CDUG技术盛会将于2013年10月11-12日（星期五-六）于上海豫园万丽酒店举行，同济大学的同行们诚挚地邀请您于美丽的金秋在此相逢，同享与会的几十名来自IBM公司、中国工商银行、中国建设银行、中国银行、Morgan Stanley、ATOS、南天电脑、浙江网新恒天软件有限公司等主机技术顶尖专家带来精彩的技术盛宴。&nbsp;<br /><br />如果您觉得我们的会议和分享对您的朋友和同事有益，我们也非常欢迎您把CDUG介绍给他们，因此我们附上CDUG的介绍小册子（附件），谢谢您的阅读和分享。<br /><br />今年的报名通过邮件进行，如果您准备来加入我们，请将以下简要信息回复我们：<br /><br />姓名：<br /><br />单位电话：<br />手机号码：<br />单位名称：<br />单位地址：<br />职务：<br />电邮：<br />参加11/12两日的会议：<br />是否需要协助安排住宿*：<br /><br />*供上海以外客户选填，可以协议价预定豫园万里酒店房间</p><p><br />示例：<br />姓名：王敏<br />单位电话：021-6958xxxx<br />手机号码：13xxxxxxxx<br />单位名称：同济大学<br />单位地址：上海嘉定区曹安公路4800号<br />职务：工程师<br />电邮：wangmin@xxxxxxx<br />参加11/12两日的会议：两日<br />是否需要安排住宿： 是（10-12 两晚）<br /><br />如有疑问或建议，欢迎您和我们联系。<br />非常感谢您的支持和参与，因为您，CDUG才如此丰富多彩！<br /><br />CDUG会务组</p>','2014-04-21 03:28:08','2014-05-04 18:57:53','CDUG官网',132,'NOTICE',0,100001),
	(33,'2011大中华区大型主机应用与开发用户大会开幕','<p>　2011年9月16至17日，由同济大学和<a href=\"http://com.chinabyte.com/ibm/\">IBM</a>公司共同主办的&ldquo;2011大中华区大型主机应用与开发用户大会置主机全国校友会年会(CDUG年会)&rdquo;在上海举行。同济大学副校长吴志强教授、IBM全球副总裁Greg Lokto先生、中国工商银行<a href=\"http://datacenter.chinabyte.com/\">数据中心</a>副总经理毛宇星博士等来自美国和大中华地区的大型主机用户代表近180人参会。&nbsp;</p><p><img alt=\"\" src=\"http://cimage.tianjimedia.com/uploadImages/2011/266/8I90F385P4H3_DSC_8035.jpg\" style=\"height:434px; width:650px\" /><br />同济大学副校长吴志强教授</p><p><img alt=\"\" src=\"http://cimage.tianjimedia.com/uploadImages/2011/266/AS16J14AY565_DSC_8046.jpg\" style=\"height:433px; width:650px\" /><br />IBM全球副总裁Greg Lokto先生</p><p>　　大中华区大型主机<a href=\"http://soft.chinabyte.com/database/\">数据库</a>用户组(简称CDUG)是一个跨行业的教育合作生态社区，由同济大学软件学院于2007年发起设立，其后得到IBM公司以及大中华地区主机用户的积极响应与支持，目前已拥有工、农、中、建、交(五大行)、政府部门、大学、大型<a href=\"http://com.chinabyte.com/\">企业</a>及港台等60余家成员单位。CDUG作为大学与企业合作卓越工程型人才培养与成长的合作平台，是大型主机技术与管理人才培养链上关键的一环，承载着卓越工程型人才培养与成长的重任。CDUG不仅具备整合企业资源支持大学教育的目的,还具有大学教育资源服务于业界人才培养与成长之功能，成员企业发现CDUG既是一个发掘主机人才的资源库，又是业内人士获得最新主机技术及继续教育的共享服务平台。</p><p><img alt=\"\" src=\"http://cms.chinabyte.com/uploadImages/2011/266/287O4E65N198_DSC_8052.jpg\" style=\"height:434px; width:650px\" /><br />同济大学客座教授兼IBM杰出工程师傅硫勤博士</p><p><img alt=\"\" src=\"http://cms.chinabyte.com/uploadImages/2011/266/CET22TYO8EH8_DSC_8080.jpg\" style=\"height:434px; width:650px\" /><br />中国工商银行数据中心副总经理毛宇星博士</p><p>　　在本届年会上IBM全球副总裁Greg Lokto先生、中国工商银行数据中心副总经理毛宇星博士、同济大学客座教授兼IBM杰出工程师傅硫勤博士、邓之嘉博士、林棻玲女士，HongTie女士以及中国工商银行资深经理黄颢等嘉宾奉献了精彩的主题演讲，IBM工程师及主机用户代表也为与会的大型主机用户们贡献了近40余场专题技术演讲及研讨。参会者们表示通过CDU0平台的交流了解到主机新技术及解诀<a href=\"http://solution.chinabyte.com/new/\">方案</a>等知识，与专家研讨答疑解惑，为主机用户带来帮助，同时也为全国高校主机教学及工程型人才培养指明了方向。</p><p>[转自比特网 <a href=\"http://server.chinabyte.com/177/12166677.shtml\">http://server.chinabyte.com/177/12166677.shtml</a>]</p>','2014-04-22 02:21:30','2014-05-04 18:59:18','CDUG官网',236,'NEWS',0,100001),
	(34,'2012大中华区主机开发者与用户年会成功举行','<p>&nbsp; &nbsp; &nbsp; &nbsp;2012年9月21日至22日，2012大中华区大型主机应用与开发者用户大会暨主机全国校友会论坛在上海豫园万丽酒店圆满举办。主办方同济大学党委副书记姜富明教授、IBM公司全球副总裁Michael A. Desens先生与来自IBM公司美国硅谷实验室、IBM公司中国系统与开发中心、中国工商银行、中国银行、中国建设银行等业界技术专家、主机企业用户代表和国内主机教学高校教师160余人出席本次活动。&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"http://cdug.tongji.edu.cn/zh/resource/static/image/2012index.png\" style=\"height:400px; width:700px\" /></p><p>　　大中华区大型主机应用与开发者用户组(简称CDUG)是一个政产学研用跨行业的教育合作生态社区，由我校软件学院于2007年发起设立，其后得到IBM公司以及大中华地区主机用户的积极响应与支持，目前已拥有工、农、中、建、交(五大行)、政府部门、国内主机教学高校、大型企业等60余家成员单位。CDUG作为大学与企业合作卓越工程型人才培养与成长的合作平台，是大型主机技术与管理人才培养链上关键的一环，承载着软件工程卓越后备工程人才培养与成长的重任。</p><p>　　会上，IBM全球副总裁Michael A. Desens做了主题演讲。中国工商银行、摩根斯坦利、IBM等业界专家与工程技术人员与参会代表开展了40余场专题技术演讲及研讨会，分专题就大型商用数据库技术、主机中间件技术、商业银行主机业务应用案例、主机后备卓越工程师人才培养、主机人才市场供需状况等提议做深入讨论。</p><p>[转自比特网 <a href=\"http://e.chinabyte.com/480/12440980.shtml\">http://e.chinabyte.com/480/12440980.shtml</a>]</p>','2014-04-22 02:21:38','2014-05-04 18:52:46','CDUG官网',211,'NEWS',0,100001),
	(38,'2010年大中华区大型主机应用与开发用户大会邀请函','<p>尊敬的用户单位及IT界同行：</p><p>&nbsp; &nbsp; &nbsp; 非常感谢您对CDUG的支持和关注！IBM主机大学合作项目全国校友会与同济大学软件学院共同主办的&ldquo;2010年大型主机应用与开发技术研讨会-上海秋季会议&rdquo;将于2010年9月17-18日（星期五，星期六）在上海豫园万丽酒店召开。</p><p>&nbsp; &nbsp; &nbsp; 在本次大会中，您不但可以继续享用中外DB2 for z/OS顶级专家带来的技术盛宴，更有来自IMS, CICS实验室的技术专题，内容涵盖您在主机平台上应用开发，系统管理的多个方面。</p><p>&nbsp; &nbsp; &nbsp; 我们邀请了来自IBM公司美国硅谷实验室与北京开发试验室的专家、国内IBM大型主机用户、主机应用技术开发以及管理人员、国内高校大型企业计算方向教师，和您一起分享大型主机实用技术的演讲，并就技术与经验尽情交流。</p><p>&nbsp; &nbsp; &nbsp; 相信我们精心预备的专题，能加深您对主机技术的了解，开拓您的技术知识面，掌握主机技术发展动态，为您带来更多的技术&ldquo;秘籍&rdquo;，为您的工作带来成功和便利。&nbsp;</p><p>&nbsp; &nbsp; &nbsp; 主要演讲内容初步商定如下：</p><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:650px\">	<tbody>		<tr>			<td>			<p><strong>主题</strong></p>			</td>			<td>			<p><strong>演讲人</strong><strong>/</strong><strong>内容</strong></p>			</td>		</tr>		<tr>			<td>			<p>大师讲坛：<br />			SQL 性能以及调优系列主题</p>			</td>			<td>			<p><em>傅毓勤（</em><em>Gene Fuh</em><em>） 博士</em><br />			IBM美国硅谷实验室，杰出工程师，查询优化专家</p>			</td>		</tr>		<tr>			<td>			<p>大师讲坛：<br />			系统管理系列主题</p>			</td>			<td>			<p><em>邓之嘉（</em><em>James Teng</em><em>）博士</em><br />			IBM美国硅谷实验室，杰出工程师，DB2创始人之一</p>			</td>		</tr>		<tr>			<td>			<p>大师讲坛： &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />			IMS 与SOA助你商务的增长与优化</p>			</td>			<td>			<p>贺方世美(Shyh-Mei F. Ho) 女士 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />			IBM美国硅谷实验室， 杰出工程师，IMS-SOA总架构师</p>			</td>		</tr>		<tr>			<td>			<p>圆桌讨论</p>			</td>			<td>			<p>DB2/IMS/CICS开发实验室专家及用户</p>			</td>		</tr>		<tr>			<td>			<p>专家面对面</p>			</td>			<td>			<p>现场预约专家面谈</p>			</td>		</tr>		<tr>			<td>			<p>主机校友会</p>			</td>			<td>			<p>各行业主机从业人员欢聚的盛会</p>			</td>		</tr>	</tbody></table><p>&nbsp;</p><hr /><p>为了让您的参会经历更加丰富和便利，我们特地准备了心意礼品。如果您是前往上海的客人，我们可以为您提供会议期间的同济戴斯酒店（4星级）标准间住宿*；不管您来自上海或以外，如果您不需要我们提供的酒店，我们为您准备了世博门票一张*，愿您CDUG之行愉快。</p><p>&nbsp;&nbsp;在这美丽的金秋时节，CDUG期待与您再次相聚！<br /><br />*限参加两天会议来宾</p><p><strong>附录：会议日程及会务安排</strong><br />1、会议地点：<br />上海豫园万丽酒店： <a href=\"http://www.yuyuan-hotel.com/\">http://www.yuyuan-hotel.com/</a></p><p>2、会议议程：</p><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:500px\">	<tbody>		<tr>			<td>			<p>9月17日（星期五）</p>			</td>			<td>			<p>9月18日（星期六）</p>			</td>		</tr>		<tr>			<td>			<p>9:00&nbsp;-&nbsp;9:30&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;签到&nbsp;<br />			9:30&nbsp;-&nbsp;12:00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会议&nbsp;<br />			12:00&nbsp;-&nbsp;13:30&nbsp;&nbsp;&nbsp;午餐<br />			13:30&nbsp;-&nbsp;17:00&nbsp;&nbsp;&nbsp;会议&nbsp;</p>			</td>			<td>			<p>9:00&nbsp;-&nbsp;12:00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会议&nbsp;<br />			12:00&nbsp;-&nbsp;13:30&nbsp;&nbsp;&nbsp;午餐<br />			13:30&nbsp;-&nbsp;17:30&nbsp;&nbsp;&nbsp;会议&nbsp;</p>			</td>		</tr>	</tbody></table><p>3、本次会议不收取会务费，提供会议期间豫园万丽酒店午餐，对需要住宿的上海以外客户提供同济戴斯酒店的标准间（两人一间）住宿会期住宿以及酒店-会场往返班车；无需住宿的上海或外地客户提供世博成人平日票一张。交通费，以及其他邀请函所未列出事项之费用自理。</p><p>4、出席会议的代表请填写如下回执（见表），于2009年9月10&nbsp;日前传真至021-69589975，或电邮至 min.wang@tongji.edu.cn。欢迎您和您的同事同时报名。</p><p>5、名额有限，我们将依据报名的先后顺序分配名额。会议举办前，会务组将向报名者发送电邮确认。<br />6、大会联络处信息：<br />&nbsp;&nbsp;&nbsp;&nbsp; 联系电话：021-69589975&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;传&nbsp;&nbsp; &nbsp; 真：021-69589975<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联&nbsp;系&nbsp;人：黄&nbsp;&nbsp;杰&nbsp;13501932599 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;王&nbsp;&nbsp;敏&nbsp;13701602401&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;冯巾松&nbsp;13917617565<br /><br /><strong>承办单位：</strong> IBM主机大学合作项目全国校友会&nbsp;，同济大学软件学院<br /><strong>支持单位：</strong>国际商业机器全球服务(中国)有限公司&nbsp; 大学合作部<br /><strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>国际商业机器全球投资(中国)有限公司 中国开发实验室<br /><br />二零一零年八月十二日</p>','2014-04-19 01:48:24','2014-05-04 18:59:34','CDUG官网',101,'NOTICE',0,100008),
	(39,'DB2用户首届年会在锡举行','<p>&nbsp; &nbsp; &nbsp; &nbsp;昨日，为期4天的2008年大中华区大型主机数据库用户大会在无锡正式召开。这也是该大会在中国地区的首届年会。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img alt=\"\" src=\"http://cdug.tongji.edu.cn/zh/resource/dynamic/img/1399312805584Speakers.JPG\" style=\"height:340px; width:512px\" /></p><p>&nbsp; &nbsp; &nbsp; &nbsp;此次年会由中国计算机用户协会和无锡市政府主办，无锡市崇安区政府和同济大学软件学院等单位承办。大中华区大型主机数据库用户大会的常设机构是CDUG（China DB2 Users&rsquo;Group）,隶属于中国计算机用户协会。</p><p>　　此次年会邀请到了150多位资深工程师参加。在与会的4天时间里，来自美国IBM硅谷实验室的DB2、中国计算机用户协会，国内金融界的专家就DB2的最新技术和解决方案进行了深入讨论。</p><p>&nbsp; &nbsp; &nbsp;&nbsp;[转自江南时报&nbsp; <a href=\"http://paper.people.com.cn/jnsb/html/2008-07/18/content_65065.htm\">http://paper.people.com.cn/jnsb/html/2008-07/18/content_65065.htm</a>]</p>','2014-04-22 02:16:36','2014-05-05 11:00:14','CDUG官网',106,'NEWS',0,100008),
	(40,'2009年主机技术发展与人才培养相结合的盛会在沪成功召开','<p>&nbsp; &nbsp; &nbsp; &nbsp;今天，大中华区主机<a href=\"http://soft.chinabyte.com/database/\">数据库</a>用户年会和主机全国校友会2009上海论坛（以下简称论坛）在上海成功举办。本次论坛的主题是：新形势下主机数据库前沿技术与主机人才培养实践。来自全国的主机用户、中国计算机用户协会、主机人才培养合作伙伴高校、IBM硅谷实验室以及IBM中国公司的百余位代表出席本届论坛。</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;大型主机诞生于1964年。45年来主机以&ldquo;可用性、安全性和可扩展性&rdquo;的特点，赢得了全球<a href=\"http://www.chinabyte.com/keyword/%E4%BC%81%E4%B8%9A%E7%BA%A7%E5%AE%A2%E6%88%B7/\">企业级客户</a>市场，主机应用已经深入根植于全球经济发展之中，主机成为全球知名<a href=\"http://com.chinabyte.com/\">企业</a>处理与管理核心业务数据的关键平台。国际性的金融、贸易、航运、医疗、制造企业是主机应用的主要客户群。</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;然而与主机在企业计算高端市场的大量应用相比较，主机人才供应却存在着短缺。原因在于主机人才培养的高成本，以及主机技术的高门槛。在主机客户日益关注如何寻找到合适的主机人才，以实现主机应用之可持续发展的前提下，传播主机前沿技术、培养业界合适人才，成为本次会议与会各方共同讨论的焦点。</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; 作为IBM主机发展战略和主机大学合作项目的重要组成部分，IBM协同国内开展主机教学的高等学校，共同创办了&ldquo;主机全国校友会&rdquo;。主机全国校友会是一个民间公益性组织，旨在帮助刚刚走出校园踏入社会的年轻主机从业人员，增强行业信心、明确发展方向、增进交流、协作创新、共同进步。校友会每年举办一次年会，为会员们提供一个平台，共同探讨当前主机市场的发展、分享主机前沿技术、开展主机技术人才培养经验和市场需求的交流、用户协会及主机校友会发展的经验交流等。</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; 本届论坛是大中华区主机数据库用户组（简称CDUG）与主机全国校友会共同主办，是校企间产、学、研合作推动技术推广、人才培养与用户交流的一次成功尝试。</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;今年正值主机诞生45周年，IBM系统与科技事业部主机大中华区总经理林懋修特别在论坛上做了题为《灵动z远》的主旨演讲。林懋修表示：&ldquo;中国已成为世界第三大经济体，这意味着最终中国将拥有世界上最大的消费市场和世界上最大的公司。如果抓住新一轮IT技术的革命的机遇，中国可以实现跨越式发展，在世界经济舞台扮演更重要的角色。而最佳投入不是&ldquo;修补&rdquo;经济，而是为下一波经济腾飞做好准备，应抓住科技革命的新机遇，大力投资智慧的基础设施，发展高阶值创新产业，建立在世界经济中的领导力。 这一点，IBM不谋而合地响应了中国政府的方向。如果将IBM大型主机的独特优势与中国的实际社会经济及其<a href=\"http://info.chinabyte.com/\">信息化</a>建设相结合, 可以说中国更需要动态架构的终极平台IBM大型主机。IBM将持续携手现有<a href=\"http://www.chinabyte.com/keyword/%E5%A4%A7%E5%9E%8B%E6%9C%BA/\">大型机</a>客户拓展新技术, 新经济和推进业务转型；培育更多新的大型机客户以实现一个动态的信息化基础架构；壮大主机的协作创新成长联盟特别是大型机的渠道合作计划和大学教育人才计划。&rdquo;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;同济大学软件学院常务副院长刘琴教授在论坛致词中表示：&ldquo;同济大学连续两年承办大中华区主机数据库用户年会，今年又与全国主机校友会联合举办年会，是高校面向社会需求培养合格<a href=\"http://www.chinabyte.com/keyword/%E5%B7%A5%E7%A8%8B%E6%8A%80%E6%9C%AF/\">工程技术</a>人才，以及高等教育工程型人才培养的新探索。通过与企业合作办学，高校在课程建设、师资派遣与培训、人才培养、实践教学、学生实习与就业等多个方面实现了与产业界的直接对接，校企共同打造了一个理论与实践相结合从而培养社会亟需技术管理人才的平台。既缩短了<a href=\"http://www.chinabyte.com/keyword/%E4%BA%BA%E6%89%8D%E4%BE%9B%E9%9C%80/\">人才供需</a>的路径，为用人单位节约成本，又为大学毕业生提供了了解企业需求的环境，为产学研合作人才培养搭建了桥梁。实现了高校、企业、用户间的多赢&rdquo;。</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;IBM杰出工程师傅毓勤表示：&ldquo;&quot;硬件，<a href=\"http://soft.chinabyte.com/os/\">操作系统</a>和数据库系统的紧密集成为IBM主机系统带来独特的优势。正是基于这样的集成设计，IBM主机系统为信息管理产业中广泛的应用领域提供了全球最好的安全性，可用性和可扩展性保障。核心银行，金融服务，保险业，再保险，零售，电信等行业的绝大多数关键应用系统都运行在IBM主机平台上。中国庞大的人口数量和高速增长的经济提高了对计算机系统的高可靠性，可扩展性和安全性的要求。在中国，对于许多处理海量数据和大批量交易的应用系统来说，使用主机平台便成为了最好的解决<a href=\"http://solution.chinabyte.com/new/\">方案</a>。&rdquo;</p>\r\n\r\n<p>[转自比特网 <a href=\"http://info.chinabyte.com/263/11008263.shtml\">http://info.chinabyte.com/263/11008263.shtml</a>]</p>\r\n','2014-04-22 02:18:33','2014-04-22 02:18:33','CDUG官网',93,'NEWS',0,100008),
	(41,'2010年IBM开发用户暨主机全国校友会在沪成功召开','<p>&nbsp; &nbsp; &nbsp; 为了增进业界同仁的交流，探讨在智慧年代里的绿色解决之道，<a href=\"http://com.chinabyte.com/ibm/\">IBM</a> 主机全国校友会与同济大学共同主办的&ldquo;2010 年大中华区大型主机应用与开发用户大会暨主机全国校友会2010 年会&rdquo;于2010 年9 月17 日至18 日在上海豫园万丽酒店召开。来自全国的主机用户、中国计算机用户协会、主机人才培养合作伙伴高校、IBM硅谷实验室以及IBM中国公司的百余位代表出席本届论坛。 &nbsp;</p><p>　　大型主机诞生于1964年，一直以来以&ldquo;可用性、安全性和可扩展性&rdquo;的特点，赢得了全球企业级客户市场，主机应用已经深入根植于全球经济发展之中，主机成为全球知名<a href=\"http://com.chinabyte.com/\">企业</a>处理与管理核心业务数据的关键平台。国际性的金融、贸易、航运、医疗、制造企业是主机应用的主要客户群。</p><p>&nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"http://cimage.tianjimedia.com/uploadImages/2010/284/W401VU7H0213.jpg\" /></p><p>　　本届论坛是大中华区主机<a href=\"http://soft.chinabyte.com/database/\">数据库</a>用户组(简称CDUG)与主机全国校友会共同主办，是校企间产、学、研合作推动技术推广、人才培养与用户交流的一次成功尝试。在本次大会中，与会来宾与IBM主机专家共同分享了中外大师和专家带来的技术盛宴，更有来自顶级实验室的技术专题，内容涵盖主机平台上的应用开发和系统管理等多个方面。</p><p>　　同济大学党委副书记姜富明在论坛致词中表示：&ldquo;同济大学连续三年承办大中华区主机数据库用户年会，今年又与全国主机校友会联合举办年会，是高校面向社会需求培养合格工程技术人才，以及高等教育工程型人才培养的新探索。通过与企业合作办学，高校在课程建设、师资派遣与培训、人才培养、实践教学、学生实习与就业等多个方面实现了与产业界的直接对接，校企共同打造了一个理论与实践相结合从而培养社会亟需技术管理人才的平台。既缩短了人才供需的路径，为用人单位节约成本，又为大学毕业生提供了了解企业需求的环境，为产学研合作人才培养搭建了桥梁。实现了高校、企业、用户间的多赢。&rdquo;</p><p>&nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"http://cimage.tianjimedia.com/uploadImages/2010/284/YDLV7Z4A0GCT.jpg\" /></p><p>　　IBM系统与科技事业部主机大中华区总经理林懋修在论坛演讲中表示：&ldquo;在 IT 业界，大型主机是为数不多拥有四十五年历史还绿树常青的产品。他的诞生开创了一个 IT 的新时代，而它的发展历程就是一个不断创新，不断成就客户价值的历程。无论是其开创的并行系统综合体技术，还是<a href=\"http://www.chinabyte.com/zq/virtualization/\">虚拟化</a>技术，都已经成为引领当今IT发展的主流科技。今后，IBM 将一如既往地继续深化其在主机市场的投入和承诺。IBM将持续携手现有大型机客户拓展新技术, 新经济和推进业务转型;培育更多新的大型机客户以实现一个动态的<a href=\"http://info.chinabyte.com/\">信息化</a>基础架构;壮大主机的协作创新成长联盟特别是大型机的渠道合作计划和大学教育人才计划。&rdquo;</p><p>&nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"http://cimage.tianjimedia.com/uploadImages/2010/284/1UGF8024698O.jpg\" /></p><p>　　然而与主机在企业计算高端市场的大量应用相比较，主机人才供应却存在着短缺。原因在于主机人才培养的高成本，以及主机技术的高门槛。作为IBM主机发展战略和主机大学合作项目的重要组成部分，IBM协同国内开展主机教学的高等学校，共同创办了&ldquo;主机全国校友会&rdquo;。主机全国校友会是一个民间公益性组织，旨在帮助刚刚走出校园踏入社会的年轻主机从业人员，增强行业信心、明确发展方向、增进交流、协作创新、共同进步。校友会每年举办一次年会，为会员们提供一个平台，共同探讨当前主机市场的发展、分享主机前沿技术、开展主机技术人才培养经验和市场需求的交流、用户协会及主机校友会发展的经验交流等。</p><p>　　IBM大学合作步经理李晶晖表示，IBM致力于打造主机生态系统，计划在全球范围培养两万名主机专业人才，其中10000名将在中国。自2005年起，IBM先后在上海、广州、成都、大连、武汉建立了五个IBM主机系统教育中心，并打造具有中国特色的人才发展之路。目前IBM通过和中国各高校的合作，为高校进行IBM主机相关人才的培训，并提供正规实习之路，制定实习生转正机制，同时推出蓝桥计划、指导计划帮助高校更好进行IBM主机人才培养。</p><p>&nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"http://cimage.tianjimedia.com/uploadImages/2010/284/7QQ91ZMB7D67.jpg\" /></p><p>　　在本届IBM大型主机应用与开发用户大会中，来自IBM杰出工程师傅毓勤向与会嘉宾介绍了IBM最新的zEnterprise大型主机<a href=\"http://server.chinabyte.com/\">服务器</a>，他指出：&ldquo;客户可以把zEnterprise System的资源管理整合到一个单一的系统，并把大型主机在管控和易管理性等方面的品质扩展到特定的IBM POWER7和<a href=\"http://www.chinabyte.com/keyword/systemx/\">System x</a>刀片服务器上的工作负载。凭借统一管理跨系统的工作负载，zEnterprise System可以使拥有成本最大降低55%。&rdquo;</p><p>　　从性能角度看，zEnterprise System是IBM迄今为止最强大的系统。zEnterprise System的核心服务器被称为zEnterprise 196，包含96个全球最快、最强大的5.2GHz微处理器，能够在每秒执行超过500亿条指令。</p><p>　　傅毓勤表示：&ldquo;硬件，<a href=\"http://soft.chinabyte.com/os/\">操作系统</a>和数据库系统的紧密集成为IBM主机系统带来独特的优势。正是基于这样的集成设计，IBM主机系统为信息管理产业中广泛的应用领域提供了全球最好的安全性，可用性和可扩展性保障。&rdquo;</p><p>[转自比特网 <a href=\"http://server.chinabyte.com/16/11579016.shtml\">http://server.chinabyte.com/16/11579016.shtml</a>]</p>','2014-04-22 02:20:35','2014-05-04 18:50:51','CDUG官网',123,'NEWS',0,100008),
	(42,'2013年度大中华区主机用户大会成功召开','<p>&nbsp; &nbsp; &nbsp; 2013年10月11日至12日，由我校软件学院主办的&ldquo;2013年度大中华区主机开发者上海论坛暨主机全国校友会年会&rdquo;在上海举行。 &nbsp;</p><p>&nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"http://photo.tongji.edu.cn/themes/11/userfiles/images/2013/10/14/650/d55z7l77k9htjjr.jpg\" /></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 来自中国工商银行、中国农业银行、中国建设银行、Morgen Stanley、State Street、IBM等国内外22家大型主机用户单位代表，与同济大学、北京理工大学、电子科技大学等高校教师代表，共同就&ldquo;企业计算&rdquo;领域的市场需求与热点、前沿技术及应用、人才培养与终身教育等议题开展了热烈讨论，使本地区大型主机用户和高校教师能够及时分享到&ldquo;企业计算&rdquo;领域的先进技术与发展理念。&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本届会议共安排有43场专题讲座，包括了13场由国内主机用户贡献的专题演讲，体现出国内主机用户日益成长的技术能力和应用创新成果。用户代表们反映，由同济大学软件学院6年来持续建设的这个&ldquo;产学研用&rdquo;教育平台及发展模式已渐趋成熟，通过这个平台能为业界用户的业务发展特别是人才培养带来便利。 &nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong> </strong><strong>相关视频新闻链接：</strong><strong><a href=\"http://news.tongji.edu.cn/catv/player.asp?id=462\">http://news.tongji.edu.cn/catv/player.asp?id=462</a></strong></p><p><strong>&nbsp;&nbsp; &nbsp; &nbsp;</strong>[转自同济新闻 <a href=\"http://news.tongji.edu.cn/classid-15-newsid-40489-t-show.html\">http://news.tongji.edu.cn/classid-15-newsid-40489-t-show.html</a> ]</p>','2014-04-22 02:21:51','2014-05-05 09:54:29','CDUG官网',322,'NEWS',0,100008),
	(46,'2008年大中华区大型主机数据库用户大会邀请函','<span style=\"font-size:26px\"><strong>中国计算机用户协会</strong><br />中计用协【2008】022号</span><br /><img src=\"data:image/png;base64,R0lGODlhjAIEAHcAMSH+GlNvZnR3YXJlOiBNaWNyb3NvZnQgT2ZmaWNlACH5BAEAAAAALAIAAACIAgQAgAAAAP8AAAJvhI+py+0Po5y02ouz3rz7D4biSJbmaQXqyrbuC8fyTNf2jef6zvf+DwwKh8Si8YhMKpfMpvMJjUqn1Kr1is1qe4BA9+sNg8fiMvlsTqPX6jb77Y7D5/I6/W7P4/f6Pv/vFwg4KFhIeGiYiLiomFgAADs=\" style=\"height:4px; width:652px\" />&nbsp;<br />&nbsp;<strong>2008</strong><strong>年大中华区大型主机数据库用户大会邀请函</strong><br />&nbsp;<br /><strong>尊敬的用户单位及IT界同行：</strong><br />由中国计算机用户协会主办的&ldquo;2008年大中华区大型主机数据库用户大会&rdquo;定于2008年7月17日至19日（7月16日报到）在江苏省无锡市召开。<br /><strong>本次会议的主题是：</strong>&ldquo;<strong><em>启程之旅</em></strong> <strong><em>创新之风</em></strong>&rdquo;。届时将围绕上述主题，邀请IBM公司美国硅谷实验室专家团队、国际大型主机数据库用户协会（IDUG）副总裁、大中华区（大陆、台湾和香港）大型主机技术专家、国内高校主机数据库教师济济一堂，作大型主机数据库最新发展、新技术新方法、主机数据库实用技术的演讲，并邀请用户代表作技术与经验交流。<br /><strong>本次会议的组织机构：</strong><br />主办单位：中国计算机用户协会<br />支持单位: 无锡市人民政府<br />同济大学<br />机械工业信息中心<br />承办单位：无锡市崇安区人民政府<br />同济大学软件学院<br />协办单位：北京大学软件与微电子学院<br />国际大型数据库用户协会IDUG<br />&nbsp;<br />&nbsp;<strong>主要演讲内容初步商定如下：</strong><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:564px\">	<tbody>		<tr>			<td style=\"width: 300px; height: 41px;\">演讲标题</td>			<td style=\"width: 264px; height: 41px;\">演讲人及单位</td>		</tr>		<tr>			<td style=\"width: 300px;\">主题演讲：新一代主机大型数据库技术与发展</td>			<td style=\"width: 264px;\"><strong><em>Dan Wardman</em></strong><br />			<strong><em>IBM</em></strong><strong><em>主机信息管理软件部副总裁</em></strong><strong><em> , IBM</em></strong><strong><em>硅谷实验室执行官</em></strong></td>		</tr>		<tr>			<td style=\"width: 300px;\">大师讲坛：大型数据库查询优化系列专题</td>			<td style=\"width: 264px;\"><strong><em>傅毓勤</em></strong><br />			<strong><em>IBM</em></strong><strong><em>杰出工程师，高级经理，查询优化专家</em></strong></td>		</tr>		<tr>			<td style=\"width: 300px;\">大师讲坛：数据库并发控制基础</td>			<td style=\"width: 264px;\"><strong><em>James Teng</em></strong><br />			<strong><em>IBM</em></strong><strong><em>杰出工程师，</em></strong><strong><em>DB2</em></strong><strong><em>创始者之一</em></strong></td>		</tr>		<tr>			<td style=\"width: 300px;\">大师讲坛：数据智能存取的商业价值</td>			<td style=\"width: 264px;\"><strong><em>Sheryl Larson</em></strong><br />			<strong><em>Sheryl Larson Consulting Corp</em></strong><strong><em>主席，国际知名数据库专家，资深咨询顾问</em></strong></td>		</tr>		<tr>			<td style=\"width: 300px;\">大师讲坛: 商用大型数据库的特征和比较</td>			<td style=\"width: 264px;\"><strong><em>Michael McBride</em></strong><br />			<strong><em>国际大型主机数据库用户协会副总裁</em></strong><br />			<strong><em>美国弗罗里达州交通部高级</em></strong><strong><em>DBA</em></strong></td>		</tr>		<tr>			<td style=\"width: 300px;\">技术专题：DB2 Utility 中的新功能与最佳实战经验</td>			<td style=\"width: 264px;\"><strong><em>Sam Wang</em></strong><br />			<strong><em>IBM</em></strong><strong><em>高级工程师，</em></strong><strong><em>DB2 V9 Utility</em></strong><strong><em>总架构师，用户支持顾问</em></strong></td>		</tr>		<tr>			<td style=\"width: 300px;\">技术专题：1. SQL性能的秘密<br />			2. DB2 优化器面临的挑战</td>			<td style=\"width: 264px;\"><strong><em>Terrence Purcell</em></strong><br />			<strong><em>IBM</em></strong><strong><em>资深咨询顾问</em></strong></td>		</tr>		<tr>			<td style=\"width: 300px;\">技术专题：1. OSC/OE介绍<br />			2. OSC/OE 实验室</td>			<td style=\"width: 264px;\"><strong><em>Jay Bruce</em></strong><br />			<strong><em>IBM</em></strong><strong><em>硅谷实验室经理</em></strong><strong><em>, OSC/OE </em></strong><strong><em>开发负责人</em></strong></td>		</tr>		<tr>			<td style=\"width: 300px;\">案例剖析：在镜像备份环境中运行DB2的考虑</td>			<td style=\"width: 264px;\"><strong><em>范炯</em></strong><br />			<strong><em>IBM</em></strong><strong><em>中国，资深</em></strong><strong><em> IT</em></strong><strong><em>咨询师</em></strong></td>		</tr>		<tr>			<td style=\"width: 300px;\">案例剖析：真实环境中数据共享、备份与恢复</td>			<td style=\"width: 264px;\"><strong><em>万薇</em></strong><br />			<strong><em>IBM </em></strong><strong><em>中国，资深</em></strong><strong><em>IT</em></strong><strong><em>咨询师</em></strong></td>		</tr>	</tbody></table>热忱欢迎广大用户和IT界的同行派代表出席此次盛会。<br />&nbsp;<br /><strong>附录：会议日程及会务安排</strong><ol>	<li>会议地点：江苏省无锡市中山路218号 无锡锦江大酒店（四星级酒店）。</li>	<li>会议议程：</li></ol>1) 7月16日，全天报到。<br />乘飞机的代表可乘坐大会安排的接站车（上午10点至晚上9点）或乘出租车至酒店（车费110元左右）。乘火车的代表请在火车站乘出租车至酒店（车费10元）。<br />2) 7月17日至18日，全天大会（两整天）。<br />3) 7月19日，代表返程。<ol>	<li>本次会议不收取会务费，其他费用自理。</li>	<li>出席会议的代表须填写回执(见下面)，于6月30 日前传真至：021-69589975，010-68510170，或电邮： <a href=\"mailto:Hwangjie@gmail.com\">Hwangjie@gmail.com</a> ，<a href=\"mailto:hexunru@miic.com.cn\">hexunru@miic.com.cn</a></li></ol>出席会议代表参会回执单<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">	<tbody>		<tr>			<td style=\"width: 60px;\">姓名</td>			<td style=\"width: 48px;\">性别</td>			<td style=\"width: 204px;\">单位及地址</td>			<td style=\"width: 48px;\">职务</td>			<td style=\"width: 96px;\">手机/电话</td>			<td style=\"width: 96px;\">电子邮箱</td>		</tr>		<tr>			<td style=\"width: 60px;\">&nbsp;</td>			<td style=\"width: 48px;\">&nbsp;</td>			<td style=\"width: 204px;\">&nbsp;</td>			<td style=\"width: 48px;\">&nbsp;</td>			<td style=\"width: 96px;\">&nbsp;</td>			<td style=\"width: 96px;\">&nbsp;</td>		</tr>		<tr>			<td style=\"width: 60px;\">&nbsp;</td>			<td style=\"width: 48px;\">&nbsp;</td>			<td style=\"width: 204px;\">&nbsp;</td>			<td style=\"width: 48px;\">&nbsp;</td>			<td style=\"width: 96px;\">&nbsp;</td>			<td style=\"width: 96px;\">&nbsp;</td>		</tr>	</tbody></table><ol>	<li>若需要预定返程飞机票或者火车票的代表，填写以下预订单。</li></ol>代表返程机票、车票预订单<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">	<tbody>		<tr>			<td style=\"width: 60px;\">姓名</td>			<td style=\"width: 72px;\">返程日期</td>			<td style=\"width: 180px;\">到达目的地</td>			<td style=\"width: 144px;\">联系方式</td>			<td style=\"width: 96px;\">其他</td>		</tr>		<tr>			<td style=\"width: 60px;\">&nbsp;</td>			<td style=\"width: 72px;\">&nbsp;</td>			<td style=\"width: 180px;\">&nbsp;</td>			<td style=\"width: 144px;\">&nbsp;</td>			<td style=\"width: 96px;\">&nbsp;</td>		</tr>		<tr>			<td style=\"width: 60px;\">&nbsp;</td>			<td style=\"width: 72px;\">&nbsp;</td>			<td style=\"width: 180px;\">&nbsp;</td>			<td style=\"width: 144px;\">&nbsp;</td>			<td style=\"width: 96px;\">&nbsp;</td>		</tr>	</tbody></table><ol>	<li>大会联络处信息：</li></ol>联系电话：010-68510180、010-68594969&nbsp;&nbsp;&nbsp;&nbsp; 传真：010-68510170<br />联系电话：021-69589332、021-69589975&nbsp;&nbsp;&nbsp;&nbsp; 传真：021-69589332<br />联 系 人：何迅茹&nbsp; 13901199922<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 张燕萍&nbsp; 13661214551<br />黄&nbsp; 杰&nbsp; 13501932599<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 王&nbsp; 敏&nbsp; 13701602401<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />中国计算机用户协会<br />二零零八年六月八日','2014-04-15 12:31:27','2014-05-05 12:31:27','CDUG官网',244,'NOTICE',0,100001),
	(57,'2014年大中华区主机开发者与用户组上海论坛暨主机全国校友会年会成功举办','&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2014年10月17日至18日，2014年大中华区主机开发者与用户组上海论坛暨主机全国校友会年会在上海豫园万丽酒店成功举办。本次论坛由同济大学软件学院与国际商业机器公司(IBM)中国公司共同主办，来自IBM美国硅谷实验室、IBM CSTL和CDL、国内各大商业银行的工程技术专家、主机用户代表和高校师生160余人参加年会。<br /><span style=\"font-size:14px\">　　大中华区大型主机开发者与用户组(简称CDUG)是一个&ldquo;政产学研用&rdquo;跨行业的教育合作生态社区，由我校软件学院于2007年发起设立，至今已连续7年举办年会及各类技术论坛活动，得到了大中华地区大型主机用户的积极响应和支持，目前已拥有工、农、中、建、交(五大行)、国内外主机教学高校及大型企事业单位约50余个会员单位。CDUG作为大学与企业合作卓越工程型人才培养与成长的合作平台，是大型主机技术与管理人才培养链条上关键的一环，承载着软件工程专业卓越工程师人才培养与创建终身教育环境的责任。</span><br /><span style=\"font-size:14px\">　　在本届年会开幕式上，IBM杰出工程师、IBM中国公司首席技术官程静女士、IBM杰出工程师、美国硅谷实验室DB产品线技术负责人Maryela Weihrauch女士和交通银行数据中心杨昊高级工程师分别做了题为&ldquo;移动互联网时代下银行架构&rdquo;、&ldquo;System z大数据战略&rdquo;和&ldquo;商业银行从灾备到双活之路&rdquo;的主题演讲。在为期两天的会议中，业界专家、用户代表与同济大学师生共同分享了39场专题技术演讲，就&ldquo;大型主机系统与平台&rdquo;、&ldquo;主机中间件技术&rdquo;和&ldquo;主机业务创新与应用&rdquo;三个技术主题以及计算机与软件工程卓越人才培养做了广泛而深入的讨论与交流，对同济大学与IBM进一步合作共建&ldquo;同济大学-IBM国家级工程实践教育中心&rdquo;拓展了思路。</span><br /><br /><strong>相关链接：</strong><p><big><strong>&nbsp;&nbsp;&nbsp; <a href=\"http://cdug.tongji.edu.cn/2014/\"><span style=\"color:rgb(0, 0, 0)\">CDUG 2014 网站</span></a><span style=\"color:rgb(0, 0, 0)\">&nbsp;</span></strong></big><br /><big><strong>&nbsp;&nbsp;&nbsp; <a href=\"http://cdug.tongji.edu.cn/2014/technical-program.html\"><span style=\"color:rgb(0, 0, 0)\">CDUG 2014 演讲资料/Technical Program</span></a><span style=\"color:rgb(0, 0, 0)\"> </span></strong></big><br /><big><strong>&nbsp;&nbsp;&nbsp; <a href=\"http://cdug.tongji.edu.cn/2014/speakers.html\"><span style=\"color:rgb(0, 0, 0)\">CDUG 2014 专家列表/Speakers</span></a></strong></big><br /><big><strong>&nbsp;&nbsp;&nbsp; <a href=\"http://cdug.tongji.edu.cn/2014/photo-video.html\"><span style=\"color:rgb(0, 0, 0)\">CDUG 2014 照片视频/Photo &amp; video</span></a></strong></big></p>','2014-12-27 19:27:04','2014-12-30 23:57:37','CDUG官网',117,'NEWS',0,100001);

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table secondtag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `secondtag`;

CREATE TABLE `secondtag` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL DEFAULT '',
  `first_tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `first_tag_id` (`first_tag_id`),
  CONSTRAINT `first_tag_reference` FOREIGN KEY (`first_tag_id`) REFERENCES `firsttag` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `secondtag` WRITE;
/*!40000 ALTER TABLE `secondtag` DISABLE KEYS */;

INSERT INTO `secondtag` (`id`, `name`, `first_tag_id`)
VALUES
	(1,'Mobile',1),
	(2,'Cloud',1),
	(3,'Business Analytical',1),
	(4,'Smarter City',1),
	(5,'Other',1),
	(6,'DB2',2),
	(7,'CICS',2),
	(8,'z/OS',2),
	(9,'z/VM & zLinux',2),
	(10,'Other',2);

/*!40000 ALTER TABLE `secondtag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id of user auto increase',
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `role` enum('USER','ADMIN') NOT NULL,
  `reg_time` datetime NOT NULL,
  `isActive` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `password`, `name`, `role`, `reg_time`, `isActive`)
VALUES
	(100001,'admin','098f6bcd4621d373cade4e832627b4f6','CDUG官网','ADMIN','2014-04-06 10:17:28',1),
	(100002,'ICBC1','098f6bcd4621d373cade4e832627b4f6','中国工商银行','USER','2014-05-04 00:58:43',1),
	(100003,'BOC1','098f6bcd4621d373cade4e832627b4f6','中国银行','USER','2014-05-04 05:39:47',1),
	(100004,'DLUT1','098f6bcd4621d373cade4e832627b4f6','大连理工大学','USER','2014-05-04 05:41:14',1),
	(100005,'IBM1','098f6bcd4621d373cade4e832627b4f6','IBM STG','USER','2014-05-04 05:51:31',1),
	(100006,'IBM2','098f6bcd4621d373cade4e832627b4f6','IBM CDL','USER','2014-05-04 05:51:48',1),
	(100007,'IBM3','098f6bcd4621d373cade4e832627b4f6','IBM CSTL','USER','2014-05-04 05:52:11',1),
	(100008,'IBM4','098f6bcd4621d373cade4e832627b4f6','IBM SWG','USER','2014-05-04 05:52:39',1),
	(100009,'IBM5','098f6bcd4621d373cade4e832627b4f6','IBM S&D','USER','2014-05-04 05:52:54',1),
	(100010,'IBM6','098f6bcd4621d373cade4e832627b4f6','IBM UR','USER','2014-05-04 05:53:10',1),
	(100011,'test','098f6bcd4621d373cade4e832627b4f6','test','USER','2014-05-05 11:45:24',1);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
