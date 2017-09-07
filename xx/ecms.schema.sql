-- MySQL dump 10.13  Distrib 5.1.61, for redhat-linux-gnu (x86_64)
--
-- Host: 10.198.30.118    Database: ecms
-- ------------------------------------------------------
-- Server version	5.1.54-log

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
-- Table structure for table `ac_article_activity`
--

DROP TABLE IF EXISTS `ac_article_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_article_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `step` tinyint(4) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=719 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ac_article_draft`
--

DROP TABLE IF EXISTS `ac_article_draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_article_draft` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` text NOT NULL,
  `publish_userid` varchar(128) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=360 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ac_articles`
--

DROP TABLE IF EXISTS `ac_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `content` text,
  `type` tinyint(4) NOT NULL COMMENT '活动类型',
  `location_id` int(11) NOT NULL,
  `landmark` varchar(256) DEFAULT NULL COMMENT '地标，描述性文字',
  `coordinate` varchar(128) DEFAULT NULL COMMENT '坐标，经纬度',
  `address` varchar(256) DEFAULT NULL COMMENT '具体地址文字描述',
  `begintime` int(11) NOT NULL COMMENT '活动开始时间',
  `endtime` int(11) NOT NULL COMMENT '活动结束时间',
  `headimg` text NOT NULL COMMENT '头图，多张地址',
  `updatetime` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `collect_num` int(11) NOT NULL DEFAULT '0' COMMENT '收藏数',
  `channel_id` int(11) NOT NULL,
  `publish_userid` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=639 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ac_channel`
--

DROP TABLE IF EXISTS `ac_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ac_location`
--

DROP TABLE IF EXISTS `ac_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ac_tag_articles`
--

DROP TABLE IF EXISTS `ac_tag_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_tag_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1134 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ac_tags`
--

DROP TABLE IF EXISTS `ac_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_city_user`
--

DROP TABLE IF EXISTS `cd_city_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_city_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(128) DEFAULT NULL,
  `uin` varchar(64) DEFAULT NULL,
  `mobile` varchar(32) DEFAULT NULL,
  `nickname` varchar(128) NOT NULL,
  `realname` varchar(128) DEFAULT NULL,
  `sex` tinyint(4) NOT NULL,
  `age` tinyint(4) DEFAULT '0',
  `address` varchar(256) DEFAULT NULL,
  `headimg` varchar(256) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `platform` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=223208 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cd_city_user_relation`
--

DROP TABLE IF EXISTS `cd_city_user_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_city_user_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '系统内的用户id',
  `platform` int(11) NOT NULL COMMENT '分配给个系统的平台识别id',
  `p_type` tinyint(4) NOT NULL COMMENT '各平台自定义的记录类型',
  `p_val` varchar(128) NOT NULL COMMENT '平台要保存的值，可以是id，字符',
  `p_extra` varchar(256) DEFAULT NULL COMMENT '平台要保存的扩展数据',
  `updatetime` int(11) NOT NULL COMMENT '最近更新时间',
  `createtime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169060 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ecms_admin`
--

DROP TABLE IF EXISTS `ecms_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecms_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uin` varchar(128) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `expiretime` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ecms_article_draft`
--

DROP TABLE IF EXISTS `ecms_article_draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecms_article_draft` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` text NOT NULL,
  `publish_userid` varchar(128) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1947 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ecms_articles`
--

DROP TABLE IF EXISTS `ecms_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecms_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL COMMENT '标题',
  `intro` varchar(256) DEFAULT NULL COMMENT '简介',
  `price` varchar(64) DEFAULT NULL COMMENT '价格描述',
  `content` text NOT NULL COMMENT '内容',
  `headimg` varchar(256) NOT NULL COMMENT '头图地址',
  `redirect_url` varchar(256) DEFAULT NULL COMMENT '直达连接',
  `publish_userid` varchar(128) NOT NULL COMMENT '发布用户id',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `updatetime` int(11) NOT NULL COMMENT '上次更新时间',
  `createtime` int(11) NOT NULL COMMENT '创建时间',
  `source_id` int(11) NOT NULL COMMENT '来源id',
  `praise_num` int(11) NOT NULL DEFAULT '0',
  `boo_num` int(11) DEFAULT '0',
  `commentId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103937 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ecms_cate_articles`
--

DROP TABLE IF EXISTS `ecms_cate_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecms_cate_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NOT NULL COMMENT '类别id',
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5490 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ecms_category`
--

DROP TABLE IF EXISTS `ecms_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecms_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '父类id，顶级类该值为0',
  `name` varchar(128) NOT NULL COMMENT '类别名称',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ecms_channel`
--

DROP TABLE IF EXISTS `ecms_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecms_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '频道名称',
  `status` tinyint(4) NOT NULL COMMENT '频道状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ecms_chn_articles`
--

DROP TABLE IF EXISTS `ecms_chn_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecms_chn_articles` (
  `id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ecms_pcate_articles`
--

DROP TABLE IF EXISTS `ecms_pcate_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecms_pcate_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NOT NULL COMMENT '类别id',
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4220 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ecms_product_category`
--

DROP TABLE IF EXISTS `ecms_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecms_product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '父类id，顶级类该值为0',
  `name` varchar(128) NOT NULL COMMENT '类别名称',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1094 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ecms_source`
--

DROP TABLE IF EXISTS `ecms_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecms_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL COMMENT '来源名称',
  `intro` text COMMENT '来源简介',
  `home` varchar(256) DEFAULT NULL COMMENT '来源url',
  `logo` varchar(256) DEFAULT NULL,
  `regular` varchar(256) DEFAULT NULL COMMENT '匹配来源的规则，正则表达式',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ecms_tag_articles`
--

DROP TABLE IF EXISTS `ecms_tag_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecms_tag_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4419 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ecms_tags`
--

DROP TABLE IF EXISTS `ecms_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecms_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL COMMENT '标签名称',
  `status` tinyint(4) NOT NULL COMMENT '标签状态',
  `createtime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=412 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tj_article_draft`
--

DROP TABLE IF EXISTS `tj_article_draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tj_article_draft` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` text NOT NULL,
  `publish_userid` varchar(128) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tj_articles`
--

DROP TABLE IF EXISTS `tj_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tj_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL COMMENT '标题',
  `intro` varchar(256) DEFAULT NULL COMMENT '介绍，简介',
  `content` text NOT NULL,
  `category` int(11) NOT NULL,
  `publish_userid` varchar(128) NOT NULL COMMENT '发表用户',
  `headimg` varchar(256) NOT NULL COMMENT '头图',
  `updatetime` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '文章状态',
  `praise_num` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `landmark` varchar(256) DEFAULT NULL,
  `coordinate` varchar(128) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tj_card_info`
--

DROP TABLE IF EXISTS `tj_card_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tj_card_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tj_card_relation`
--

DROP TABLE IF EXISTS `tj_card_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tj_card_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` int(11) NOT NULL COMMENT '卡券的平台id',
  `type` tinyint(4) NOT NULL COMMENT '卡券关系类型',
  `relation_id` int(11) NOT NULL COMMENT '关联的id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tj_editor`
--

DROP TABLE IF EXISTS `tj_editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tj_editor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uin` varchar(128) NOT NULL,
  `nickname` varchar(128) NOT NULL,
  `headimg` varchar(256) NOT NULL,
  `logintime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tj_manual_category`
--

DROP TABLE IF EXISTS `tj_manual_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tj_manual_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tj_manual_data`
--

DROP TABLE IF EXISTS `tj_manual_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tj_manual_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_id` int(11) NOT NULL COMMENT '对应的更新区域id',
  `category` int(11) DEFAULT '0' COMMENT '模块内部的分类',
  `sub_category` int(11) DEFAULT '0',
  `data` text NOT NULL COMMENT '数据本身',
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tj_tag_articles`
--

DROP TABLE IF EXISTS `tj_tag_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tj_tag_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tj_tags`
--

DROP TABLE IF EXISTS `tj_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tj_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `createtime` int(11) NOT NULL,
  `channel_id` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wt_articles`
--

DROP TABLE IF EXISTS `wt_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wt_articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `listimg` varchar(255) DEFAULT NULL,
  `headimg` varchar(255) NOT NULL,
  `channelid` int(11) NOT NULL COMMENT 'é¢‘é“id',
  `publish_userid` varchar(64) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `publishtime` int(11) NOT NULL DEFAULT '0',
  `operate_userid` varchar(64) DEFAULT NULL,
  `is_top` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'ç½®é¡¶æ ‡å¿—',
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-15 16:30:21
