-- MySQL dump 10.13  Distrib 5.1.61, for redhat-linux-gnu (x86_64)
--
-- Host: 10.55.142.100    Database: d_mascot
-- ------------------------------------------------------
-- Server version	5.5.24-CDB-2.1.0-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cd_app_card`
--

DROP TABLE IF EXISTS `cd_app_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_app_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` varchar(20) NOT NULL,
  `card_id` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `province_id` (`province_id`,`card_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_app_recom`
--

DROP TABLE IF EXISTS `cd_app_recom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_app_recom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` varchar(20) DEFAULT NULL,
  `uid` varchar(20) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_collect`
--

DROP TABLE IF EXISTS `cd_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_collect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '专辑ID',
  `name` varchar(20) NOT NULL COMMENT '专辑名',
  `headimg` varchar(200) NOT NULL COMMENT '头图',
  `intro` varchar(1000) NOT NULL COMMENT '专辑说明',
  `threads` int(10) NOT NULL DEFAULT '0' COMMENT '帖子总数',
  `createtime` int(11) NOT NULL,
  `favorited` int(11) NOT NULL DEFAULT '0' COMMENT '专辑被收藏数',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_collect_log`
--

DROP TABLE IF EXISTS `cd_collect_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_collect_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` char(20) NOT NULL,
  `uid` char(20) NOT NULL,
  `action` varchar(50) NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_collect_manager`
--

DROP TABLE IF EXISTS `cd_collect_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_collect_manager` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '专辑ID',
  `uid` char(20) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_collect_thread`
--

DROP TABLE IF EXISTS `cd_collect_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_collect_thread` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '专辑ID',
  `tid` char(20) NOT NULL COMMENT '主题ID',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收录时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_config`
--

DROP TABLE IF EXISTS `cd_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL COMMENT '模块',
  `cate` int(11) NOT NULL COMMENT '分类',
  `ckey` varchar(50) NOT NULL COMMENT '配置键名',
  `cvalue` varchar(500) NOT NULL COMMENT '配置值',
  `uid` char(20) NOT NULL COMMENT '最后操作者',
  `updatetime` int(11) NOT NULL COMMENT '最后更新时间',
  `createtime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_editor_recommend`
--

DROP TABLE IF EXISTS `cd_editor_recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_editor_recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` tinyint(4) NOT NULL COMMENT '模块id，帖子，问答',
  `tid` char(20) DEFAULT NULL,
  `pid` char(20) DEFAULT NULL,
  `ext` varchar(100) DEFAULT NULL COMMENT '扩展',
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_forum`
--

DROP TABLE IF EXISTS `cd_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_forum` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '版块ID',
  `intro` text,
  `createtime` int(11) NOT NULL,
  `name` varchar(20) NOT NULL COMMENT '版块名',
  `headimg` varchar(200) NOT NULL COMMENT '图标',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '显示状态',
  `threads` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '帖子总数',
  `posts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复总数',
  `audit_policy` tinyint(2) NOT NULL DEFAULT '0',
  `qa_threads` int(11) NOT NULL DEFAULT '0' COMMENT '问答主题数',
  `qa_posts` int(11) NOT NULL DEFAULT '0' COMMENT '问答回复数',
  PRIMARY KEY (`id`),
  KEY `displayorder` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_forum_manager`
--

DROP TABLE IF EXISTS `cd_forum_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_forum_manager` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_manual`
--

DROP TABLE IF EXISTS `cd_manual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_manual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_id` tinyint(4) NOT NULL COMMENT '模块id，比如发现',
  `category` tinyint(4) NOT NULL COMMENT '模块内分类',
  `data` text NOT NULL COMMENT '更新数据',
  `updatetime` int(11) NOT NULL,
  `uid` char(20) NOT NULL COMMENT '最近操作的用户id',
  `createtime` int(11) NOT NULL COMMENT '创建时间',
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_member_status`
--

DROP TABLE IF EXISTS `cd_member_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_member_status` (
  `uid` char(20) NOT NULL COMMENT '用户ID',
  `groupkey` char(9) NOT NULL COMMENT '用户组',
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发帖时间',
  `threads` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '主题数',
  `posts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回帖数',
  `favorites` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数',
  `follows` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关注数',
  `notices` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '消息数',
  `followed` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '粉丝数',
  `favorited` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被收藏帖子数',
  `recommended` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被推荐数',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_member_status_qa`
--

DROP TABLE IF EXISTS `cd_member_status_qa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_member_status_qa` (
  `uid` char(20) NOT NULL COMMENT '用户ID',
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发帖时间',
  `threads` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '主题数',
  `posts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回答数',
  `comments` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `favorites` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数',
  `follows` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关注数',
  `followed` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '粉丝数',
  `favorited` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被收藏帖子数',
  `q_recommended` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '问题被推荐数',
  `a_recommended` int(11) NOT NULL DEFAULT '0' COMMENT '回答被推荐数',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_notify`
--

DROP TABLE IF EXISTS `cd_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_notify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '消息内容',
  `type` tinyint(4) NOT NULL COMMENT '消息类型',
  `target` varchar(20) DEFAULT NULL COMMENT '消息关联的id，可以是uid，fid，tid等',
  `target_type` tinyint(4) DEFAULT NULL COMMENT '关联target的类型',
  `target_ext` varchar(50) DEFAULT NULL COMMENT '目标关联的其他值',
  `action` varchar(20) DEFAULT NULL COMMENT '关联的动作',
  `sender` varchar(20) DEFAULT NULL COMMENT '消息产生者id',
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=791 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_operate_log`
--

DROP TABLE IF EXISTS `cd_operate_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_operate_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(20) NOT NULL COMMENT '记录用户uid',
  `op_code` tinyint(4) NOT NULL COMMENT '记录类型',
  `fid` int(11) NOT NULL DEFAULT '0',
  `tid` char(20) DEFAULT NULL,
  `pid` char(20) DEFAULT NULL,
  `level` tinyint(4) NOT NULL COMMENT '日志级别',
  `data` text COMMENT '日志内容，用php序列化',
  `createtime` int(11) NOT NULL COMMENT '日志时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_post_0`
--

DROP TABLE IF EXISTS `cd_post_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_post_0` (
  `pid` char(20) NOT NULL COMMENT '帖子ID',
  `fid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '版块ID',
  `tid` char(20) NOT NULL COMMENT '主题ID',
  `first` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否楼主',
  `uid` char(20) NOT NULL COMMENT '用户ID',
  `position` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '楼层，续写标识',
  `pubtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发帖时间',
  `lastedittime` int(10) NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `content` mediumtext CHARACTER SET utf8 NOT NULL COMMENT '内容',
  `images` varchar(5000) DEFAULT NULL COMMENT '回复图片',
  `quote_pid` char(20) DEFAULT NULL COMMENT '引用帖子ID',
  `userip` varchar(15) DEFAULT NULL COMMENT '用户IP',
  `showstatus` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可见',
  `favtimes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '赞',
  `audit_reason` int(6) NOT NULL DEFAULT '0',
  `visible` tinyint(4) NOT NULL DEFAULT '0' COMMENT '可见状态',
  PRIMARY KEY (`tid`,`first`,`position`),
  KEY `pid` (`pid`),
  KEY `tid` (`tid`,`first`,`showstatus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_post_1`
--

DROP TABLE IF EXISTS `cd_post_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_post_1` (
  `pid` char(20) NOT NULL COMMENT '帖子ID',
  `fid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '版块ID',
  `tid` char(20) NOT NULL COMMENT '主题ID',
  `first` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否楼主',
  `uid` char(20) NOT NULL COMMENT '用户ID',
  `position` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '楼层，续写标识',
  `pubtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发帖时间',
  `lastedittime` int(10) NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `content` mediumtext CHARACTER SET utf8 NOT NULL COMMENT '内容',
  `images` varchar(5000) DEFAULT NULL COMMENT '回复图片',
  `quote_pid` char(20) DEFAULT NULL COMMENT '引用帖子ID',
  `userip` varchar(15) DEFAULT NULL COMMENT '用户IP',
  `showstatus` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可见',
  `favtimes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '赞',
  `audit_reason` int(6) NOT NULL DEFAULT '0',
  `visible` tinyint(4) NOT NULL DEFAULT '0' COMMENT '可见状态',
  PRIMARY KEY (`tid`,`first`,`position`),
  KEY `pid` (`pid`),
  KEY `tid` (`tid`,`first`,`showstatus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_post_2`
--

DROP TABLE IF EXISTS `cd_post_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_post_2` (
  `pid` char(20) NOT NULL COMMENT '帖子ID',
  `fid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '版块ID',
  `tid` char(20) NOT NULL COMMENT '主题ID',
  `first` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否楼主',
  `uid` char(20) NOT NULL COMMENT '用户ID',
  `position` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '楼层，续写标识',
  `pubtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发帖时间',
  `lastedittime` int(10) NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `content` mediumtext CHARACTER SET utf8 NOT NULL COMMENT '内容',
  `images` varchar(5000) DEFAULT NULL COMMENT '回复图片',
  `quote_pid` char(20) DEFAULT NULL COMMENT '引用帖子ID',
  `userip` varchar(15) DEFAULT NULL COMMENT '用户IP',
  `showstatus` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可见',
  `favtimes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '赞',
  `audit_reason` int(6) NOT NULL DEFAULT '0',
  `visible` tinyint(4) NOT NULL DEFAULT '0' COMMENT '可见状态',
  PRIMARY KEY (`tid`,`first`,`position`),
  KEY `tid` (`tid`,`first`,`showstatus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_post_3`
--

DROP TABLE IF EXISTS `cd_post_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_post_3` (
  `pid` char(20) NOT NULL COMMENT '帖子ID',
  `fid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '版块ID',
  `tid` char(20) NOT NULL COMMENT '主题ID',
  `first` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否楼主',
  `uid` char(20) NOT NULL COMMENT '用户ID',
  `position` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '楼层，续写标识',
  `pubtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发帖时间',
  `lastedittime` int(10) NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `content` mediumtext CHARACTER SET utf8 NOT NULL COMMENT '内容',
  `images` varchar(5000) DEFAULT NULL COMMENT '回复图片',
  `quote_pid` char(20) DEFAULT NULL COMMENT '引用帖子ID',
  `userip` varchar(15) DEFAULT NULL COMMENT '用户IP',
  `showstatus` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可见',
  `favtimes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '赞',
  `audit_reason` int(6) NOT NULL DEFAULT '0',
  `visible` tinyint(4) NOT NULL DEFAULT '0' COMMENT '可见状态',
  PRIMARY KEY (`tid`,`first`,`position`),
  KEY `tid` (`tid`,`first`,`showstatus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_post_draft`
--

DROP TABLE IF EXISTS `cd_post_draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_post_draft` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(10) unsigned DEFAULT NULL COMMENT '版块ID',
  `tid` char(20) DEFAULT NULL COMMENT '主题ID',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '草稿类型',
  `pid` char(20) DEFAULT NULL,
  `uid` char(20) NOT NULL COMMENT '用户ID',
  `content` mediumtext NOT NULL,
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发帖时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=795 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_post_log_0`
--

DROP TABLE IF EXISTS `cd_post_log_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_post_log_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` char(20) NOT NULL,
  `pid` char(20) DEFAULT NULL,
  `uid` char(20) NOT NULL,
  `action` varchar(50) NOT NULL,
  `data` mediumtext NOT NULL COMMENT '数据',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=1708 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_post_log_1`
--

DROP TABLE IF EXISTS `cd_post_log_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_post_log_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` char(20) NOT NULL,
  `pid` char(20) NOT NULL,
  `uid` char(20) NOT NULL,
  `action` varchar(50) NOT NULL,
  `data` mediumtext NOT NULL COMMENT '数据',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=1822 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_post_log_2`
--

DROP TABLE IF EXISTS `cd_post_log_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_post_log_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` char(20) NOT NULL,
  `pid` char(20) NOT NULL,
  `uid` char(20) NOT NULL,
  `action` varchar(50) NOT NULL,
  `data` mediumtext NOT NULL COMMENT '数据',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=1632 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_post_log_3`
--

DROP TABLE IF EXISTS `cd_post_log_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_post_log_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` char(20) NOT NULL,
  `pid` char(20) NOT NULL,
  `uid` char(20) NOT NULL,
  `action` varchar(50) NOT NULL,
  `data` mediumtext NOT NULL COMMENT '数据',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=1861 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_recommend_condition`
--

DROP TABLE IF EXISTS `cd_recommend_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_recommend_condition` (
  `id` int(11) NOT NULL,
  `rule_id` int(11) NOT NULL,
  `condition` text COMMENT '查询条件'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_recommend_rule`
--

DROP TABLE IF EXISTS `cd_recommend_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_recommend_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_uid` varchar(30) DEFAULT NULL,
  `last_enable_uid` varchar(30) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `last_update_time` int(11) DEFAULT NULL,
  `seat` tinyint(4) NOT NULL DEFAULT '1' COMMENT '推荐位置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_tags`
--

DROP TABLE IF EXISTS `cd_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `fid` int(11) NOT NULL DEFAULT '0' COMMENT '标签所属板块',
  `name` varchar(20) NOT NULL COMMENT '标签名',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '显示状态',
  `threads` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '帖子总数',
  `createtime` int(11) NOT NULL,
  `qa_threads` int(11) NOT NULL DEFAULT '0' COMMENT '问答主题数',
  PRIMARY KEY (`id`),
  KEY `displayorder` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=1072 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_thread`
--

DROP TABLE IF EXISTS `cd_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_thread` (
  `tid` char(20) NOT NULL COMMENT '帖子ID',
  `fid` int(10) NOT NULL DEFAULT '0' COMMENT '版块',
  `uid` char(20) NOT NULL COMMENT '用户ID',
  `subject` varchar(80) NOT NULL COMMENT '标题',
  `headimg` varchar(200) NOT NULL COMMENT '头图',
  `pubtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发帖时间',
  `lastposttime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后回复时间',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  `replies` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复数',
  `showstatus` tinyint(1) NOT NULL DEFAULT '0' COMMENT '显示状态，1被推荐，小于0不可见',
  `locked` tinyint(2) NOT NULL DEFAULT '0' COMMENT '帖子锁定',
  `favorited` int(10) NOT NULL DEFAULT '0' COMMENT '收藏数',
  `shares` int(11) NOT NULL DEFAULT '0',
  `audit_reason` int(6) NOT NULL DEFAULT '0',
  `rectime` int(11) NOT NULL DEFAULT '0',
  `favtimes` int(10) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为基本类型0',
  PRIMARY KEY (`tid`),
  KEY `uid` (`uid`,`showstatus`),
  KEY `dateline` (`pubtime`),
  KEY `lastpost` (`lastposttime`),
  KEY `views` (`views`),
  KEY `replies` (`replies`),
  KEY `fid` (`fid`,`showstatus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_thread_tag`
--

DROP TABLE IF EXISTS `cd_thread_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_thread_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` char(20) NOT NULL,
  `tag_id` int(10) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '帖子类型',
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=8626 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_user_config`
--

DROP TABLE IF EXISTS `cd_user_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_user_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(20) NOT NULL,
  `ckey` varchar(20) NOT NULL COMMENT '配置项名称',
  `cval` varchar(100) NOT NULL COMMENT '配置项值',
  `updatetime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`ckey`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_user_notify_0`
--

DROP TABLE IF EXISTS `cd_user_notify_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_user_notify_0` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isread` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已读',
  `uid` varchar(20) NOT NULL COMMENT '关联的用户uid',
  `notify_id` int(11) NOT NULL COMMENT '关联的notify表id',
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`,`notify_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7923 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_user_notify_1`
--

DROP TABLE IF EXISTS `cd_user_notify_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_user_notify_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isread` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已读',
  `uid` varchar(20) NOT NULL COMMENT '关联的用户uid',
  `notify_id` int(11) NOT NULL COMMENT '关联的notify表id',
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`,`notify_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7399 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_user_notify_2`
--

DROP TABLE IF EXISTS `cd_user_notify_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_user_notify_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isread` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已读',
  `uid` varchar(20) NOT NULL COMMENT '关联的用户uid',
  `notify_id` int(11) NOT NULL COMMENT '关联的notify表id',
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`,`notify_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7348 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_user_notify_3`
--

DROP TABLE IF EXISTS `cd_user_notify_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_user_notify_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isread` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已读',
  `uid` varchar(20) NOT NULL COMMENT '关联的用户uid',
  `notify_id` int(11) NOT NULL COMMENT '关联的notify表id',
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`,`notify_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7969 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_user_relation`
--

DROP TABLE IF EXISTS `cd_user_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_user_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(20) NOT NULL,
  `type` tinyint(2) NOT NULL COMMENT '记录类型',
  `val` varchar(20) NOT NULL COMMENT '记录值',
  `extra` varchar(128) DEFAULT NULL COMMENT '扩展值',
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`type`,`val`)
) ENGINE=MyISAM AUTO_INCREMENT=4159 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `common_member`
--

DROP TABLE IF EXISTS `common_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_member` (
  `uid` char(20) NOT NULL COMMENT '用户ID',
  `nickname` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '昵称',
  `headimgurl` varchar(200) DEFAULT NULL COMMENT '头像',
  `realname` varchar(10) DEFAULT NULL COMMENT '实名',
  `mobile` varchar(11) NOT NULL COMMENT '手机号',
  `sex` tinyint(4) NOT NULL DEFAULT '1',
  `birthday` date DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `star` tinyint(2) NOT NULL DEFAULT '0' COMMENT '星座',
  `sign` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '个性签名',
  `zoneimg` varchar(200) DEFAULT NULL COMMENT '个人空间背景',
  `regtime` int(10) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `invisible` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态，小于0被封',
  `invisibletime` int(11) NOT NULL DEFAULT '0' COMMENT '禁止结束时间戳',
  `ucid` int(11) NOT NULL DEFAULT '0' COMMENT '用户中心的uid',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `nickname` (`nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `member_connect`
--

DROP TABLE IF EXISTS `member_connect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_connect` (
  `uid` char(20) NOT NULL,
  `account_id` varchar(32) NOT NULL COMMENT '帐号id，可以是uin，openid',
  `platform` tinyint(4) NOT NULL COMMENT '登录平台标识',
  `lastlogintime` int(11) NOT NULL COMMENT '上次登录时间',
  PRIMARY KEY (`uid`,`account_id`,`platform`),
  KEY `uid` (`uid`),
  KEY `platform` (`platform`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-15 16:35:37
