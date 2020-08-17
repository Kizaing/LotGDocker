-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: lotgd
-- ------------------------------------------------------
-- Server version	10.3.22-MariaDB-1ubuntu1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `lotgd`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `lotgd` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `lotgd`;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `acctid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `sex` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `specialty` varchar(20) NOT NULL,
  `experience` int(11) unsigned NOT NULL DEFAULT 0,
  `gold` int(11) unsigned NOT NULL DEFAULT 0,
  `weapon` varchar(50) NOT NULL DEFAULT 'Fists',
  `armor` varchar(50) NOT NULL DEFAULT 'T-Shirt',
  `seenmaster` int(4) unsigned NOT NULL DEFAULT 0,
  `level` int(11) unsigned NOT NULL DEFAULT 1,
  `defense` int(11) unsigned NOT NULL DEFAULT 1,
  `attack` int(11) unsigned NOT NULL DEFAULT 1,
  `alive` int(11) unsigned NOT NULL DEFAULT 1,
  `goldinbank` int(11) NOT NULL DEFAULT 0,
  `marriedto` int(11) unsigned NOT NULL DEFAULT 0,
  `spirits` int(4) NOT NULL DEFAULT 0,
  `laston` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hitpoints` int(11) NOT NULL DEFAULT 10,
  `maxhitpoints` int(11) unsigned NOT NULL DEFAULT 10,
  `gems` int(11) unsigned NOT NULL DEFAULT 0,
  `weaponvalue` int(11) unsigned NOT NULL DEFAULT 0,
  `armorvalue` int(11) unsigned NOT NULL DEFAULT 0,
  `location` varchar(25) NOT NULL DEFAULT 'Degolburg',
  `turns` int(11) unsigned NOT NULL DEFAULT 10,
  `title` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `badguy` text NOT NULL,
  `companions` text NOT NULL,
  `allowednavs` mediumtext NOT NULL,
  `loggedin` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `resurrections` int(11) unsigned NOT NULL DEFAULT 0,
  `superuser` int(11) unsigned NOT NULL DEFAULT 1,
  `weapondmg` int(11) NOT NULL DEFAULT 0,
  `armordef` int(11) NOT NULL DEFAULT 0,
  `age` int(11) unsigned NOT NULL DEFAULT 0,
  `charm` int(11) unsigned NOT NULL DEFAULT 0,
  `specialinc` varchar(50) NOT NULL,
  `specialmisc` text NOT NULL,
  `login` varchar(50) NOT NULL,
  `lastmotd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `playerfights` int(11) unsigned NOT NULL DEFAULT 3,
  `lasthit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `seendragon` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `dragonkills` int(11) unsigned NOT NULL DEFAULT 0,
  `locked` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `restorepage` varchar(128) DEFAULT NULL,
  `hashorse` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `bufflist` text NOT NULL,
  `gentime` double unsigned NOT NULL DEFAULT 0,
  `gentimecount` int(11) unsigned NOT NULL DEFAULT 0,
  `lastip` varchar(40) NOT NULL,
  `uniqueid` varchar(32) DEFAULT NULL,
  `dragonpoints` text NOT NULL,
  `boughtroomtoday` tinyint(4) NOT NULL DEFAULT 0,
  `emailaddress` varchar(128) NOT NULL,
  `emailvalidation` varchar(32) NOT NULL,
  `sentnotice` int(11) NOT NULL DEFAULT 0,
  `prefs` text NOT NULL,
  `pvpflag` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `transferredtoday` int(11) unsigned NOT NULL DEFAULT 0,
  `soulpoints` int(11) unsigned NOT NULL DEFAULT 0,
  `gravefights` int(11) unsigned NOT NULL DEFAULT 0,
  `hauntedby` varchar(50) NOT NULL,
  `deathpower` int(11) unsigned NOT NULL DEFAULT 0,
  `gensize` int(11) unsigned NOT NULL DEFAULT 0,
  `recentcomments` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `donation` int(11) unsigned NOT NULL DEFAULT 0,
  `donationspent` int(11) unsigned NOT NULL DEFAULT 0,
  `donationconfig` text NOT NULL,
  `referer` int(11) unsigned NOT NULL DEFAULT 0,
  `refererawarded` tinyint(1) NOT NULL DEFAULT 0,
  `bio` varchar(255) NOT NULL,
  `race` varchar(25) NOT NULL DEFAULT '0',
  `biotime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `banoverride` tinyint(4) DEFAULT 0,
  `buffbackup` text DEFAULT NULL,
  `amountouttoday` int(11) unsigned NOT NULL DEFAULT 0,
  `pk` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `dragonage` int(11) unsigned NOT NULL DEFAULT 0,
  `bestdragonage` int(11) unsigned NOT NULL DEFAULT 0,
  `ctitle` varchar(25) NOT NULL,
  `beta` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `slaydragon` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `fedmount` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `clanid` int(11) unsigned NOT NULL DEFAULT 0,
  `clanrank` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `clanjoindate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`acctid`),
  KEY `name` (`name`),
  KEY `level` (`level`),
  KEY `login` (`login`),
  KEY `alive` (`alive`),
  KEY `laston` (`laston`),
  KEY `lasthit` (`lasthit`),
  KEY `emailaddress` (`emailaddress`),
  KEY `clanid` (`clanid`),
  KEY `locked` (`locked`,`loggedin`,`laston`),
  KEY `referer` (`referer`),
  KEY `uniqueid` (`uniqueid`),
  KEY `emailvalidation` (`emailvalidation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'`%Admin `&admin`0',0,'MP',0,0,'Fists','T-Shirt',0,1,1,1,1,0,0,1,'2020-08-12 19:11:19',10,10,0,0,0,'Degolburg',11,'','a31e0f49d2dc4381072e30ee5a313237','','a:0:{}','a:0:{}',0,0,3923967,0,0,1,0,'','','admin','0000-00-00 00:00:00',3,'2020-08-12 19:08:59',0,0,0,'news.php',0,'a:0:{}',3.5302112102506,32,'192.168.1.133','8cec52f5b954fa644bc0bc91650fb69d','a:0:{}',0,'','',0,'a:1:{s:12:\"ihavenocheer\";i:0;}','0000-00-00 00:00:00',0,55,10,'',0,721701,'0000-00-00 00:00:00',0,0,'',0,0,'','Human','0000-00-00 00:00:00',0,NULL,0,0,0,0,'`%Admin',0,0,0,'2020-08-12 19:08:34',0,0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_output`
--

DROP TABLE IF EXISTS `accounts_output`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_output` (
  `acctid` int(11) unsigned NOT NULL,
  `output` mediumtext NOT NULL,
  PRIMARY KEY (`acctid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_output`
--

LOCK TABLES `accounts_output` WRITE;
/*!40000 ALTER TABLE `accounts_output` DISABLE KEYS */;
INSERT INTO `accounts_output` VALUES (1,'\r\n<!DOCTYPE HTML PUBLIC \'-//W3C//DTD HTML 4.01 Transitional//EN\'>\r\n<html>\r\n<head>\r\n <title>Degolburg Square</title>\r\n <link href=\'templates/jade.css\' rel=\'stylesheet\' type=\'text/css\'>\r\n <LINK REL=\"shortcut icon\" HREF=\"favicon.ico\" TYPE=\"image/x-icon\"/><script language=\'JavaScript\'>\n	<!--\n	document.onkeypress=keyevent;\n	function keyevent(e){\n		var c;\n		var target;\n		var altKey;\n		var ctrlKey;\n		if (window.event != null) {\n			c=String.fromCharCode(window.event.keyCode).toUpperCase();\n			altKey=window.event.altKey;\n			ctrlKey=window.event.ctrlKey;\n		}else{\n			c=String.fromCharCode(e.charCode).toUpperCase();\n			altKey=e.altKey;\n			ctrlKey=e.ctrlKey;\n		}\n		if (window.event != null)\n			target=window.event.srcElement;\n		else\n			target=e.originalTarget;\n		if (target.nodeName.toUpperCase()==\'INPUT\' || target.nodeName.toUpperCase()==\'TEXTAREA\' || altKey || ctrlKey){\n		}else{\n			if (c == \'F\') { window.location=\'forest.php?c=72-191116\'; return false; }\n			if (c == \'S\') { window.location=\'pvp.php?c=72-191116\'; return false; }\n			if (c == \'Q\') { window.location=\'login.php?op=logout&c=72-191116\'; return false; }\n			if (c == \'M\') { window.location=\'mercenarycamp.php?c=72-191116\'; return false; }\n			if (c == \'U\') { window.location=\'train.php?c=72-191116\'; return false; }\n			if (c == \'J\') { window.location=\'lodge.php?c=72-191116\'; return false; }\n			if (c == \'W\') { window.location=\'weapons.php?c=72-191116\'; return false; }\n			if (c == \'A\') { window.location=\'armor.php?c=72-191116\'; return false; }\n			if (c == \'B\') { window.location=\'bank.php?c=72-191116\'; return false; }\n			if (c == \'Z\') { window.location=\'gypsy.php?c=72-191116\'; return false; }\n			if (c == \'I\') { window.location=\'inn.php?c=72-191116\'; return false; }\n			if (c == \'E\') { window.location=\'stables.php?c=72-191116\'; return false; }\n			if (c == \'G\') { window.location=\'gardens.php?c=72-191116\'; return false; }\n			if (c == \'R\') { window.location=\'rock.php?c=72-191116\'; return false; }\n			if (c == \'C\') { window.location=\'clan.php?c=72-191116\'; return false; }\n			if (c == \'?\') { window.open(\'petition.php?op=faq\'); return false; }\n			if (c == \'N\') { window.location=\'news.php?c=72-191116\'; return false; }\n			if (c == \'L\') { window.location=\'list.php?c=72-191116\'; return false; }\n			if (c == \'O\') { window.location=\'hof.php?c=72-191116\'; return false; }\n			if (c == \'P\') { window.location=\'prefs.php?c=72-191116\'; return false; }\n			if (c == \',\') { window.location=\'moderate.php?c=72-191116\'; return false; }\n			if (c == \'X\') { window.location=\'superuser.php?c=72-191116\'; return false; }\n			if (c == \'/\') { window.location=\'newday.php?c=72-191116\'; return false; }\n		}\n	}\n	//-->\n	</script>\r\n</head>\r\n<body bgcolor=\'#003800\' text=\"#CCCCCC\">\r\n<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n <tr>\r\n  <td>\r\n   <table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n	<tr>\r\n	 <td nowrap valign=\'top\'>\r\n	  <table border=\'0\' cellpadding=\'0\' cellspacing=\'0\'>\r\n	   <tr>\r\n		<td><img name=\'tlc\' src=\'templates/jade/tlc.gif\' width=\'10\' height=\'15\' border=\'0\' alt=\'\'></td>\r\n		<td background=\'templates/jade/tm.gif\'><img name=\'tm\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n		<td><img name=\'trc\' src=\'templates/jade/trc.gif\' width=\'10\' height=\'15\' border=\'0\' alt=\'\'></td>\r\n	   </tr>\r\n	   <tr>\r\n		<td background=\'templates/jade/tlt.gif\'><img name=\'tlt\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n		<td valign=\'top\' bgcolor=\'#003800\' nowrap><span class=\'pagetitle\'>&#149; Degolburg Square</span></td>\r\n		<td background=\'templates/jade/trt.gif\'><img name=\'trt\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n	   </tr>\r\n	   <tr>\r\n		<td><img name=\'blc\' src=\'templates/jade/blc.gif\' width=\'10\' height=\'12\' border=\'0\' alt=\'\'></td>\r\n		<td background=\'templates/jade/btm.gif\'><img name=\'btm\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n		<td><img name=\'brc\' src=\'templates/jade/brc.gif\' width=\'10\' height=\'12\' border=\'0\' alt=\'\'></td>\r\n	   </tr>\r\n	  </table>\r\n	 </td>\r\n	 <td align=\'right\' valign=\"top\"><img src=\'templates/jade/logo.jpg\'></td>\r\n	</tr>\r\n	<tr>\r\n		<td valign=\'top\' colspan=\'2\'>\r\n			<div style=\"float: left;\"></div>\r\n			<div align=\"right\"><a href=\'motd.php\' target=\'_blank\' onClick=\"window.open(\'motd.php\',\'motdphp\',\'scrollbars=yes,resizable=yes,width=550,height=300\').focus();return false;\" class=\'motd\'><b>MoTD</b></a> | <a href=\'mail.php\' target=\'_blank\' onClick=\"window.open(\'mail.php\',\'mailphp\',\'scrollbars=yes,resizable=yes,width=550,height=300\').focus();return false;\" class=\'motd\'>Ye Olde Mail: 0 new, 0 old</a> | <a href=\'petition.php\' onClick=\"window.open(\'petition.php\',\'petitionphp\',\'scrollbars=yes,resizable=yes,width=550,height=300\').focus();return false;\" target=\'_blank\' align=\'right\' class=\'motd\'>Petition for Help</a><br>\r\n<table border=\'0\' cellpadding=\'5\' cellspacing=\'0\' align=\'right\'><tr><td><a href=\'user.php\'><b>User Editor</b></a>|<a href=\'viewpetition.php\'><b>Petitions:</b></a> <span class=\'colLtRed\'>0</span>|<span class=\'colLtYellow\'>0</span>|<b>0</b>|0|<span class=\'colLtBlue\'>0</span>|<span class=\'colLtCyan\'>0</span>|<span class=\'colLtMagenta\'>0</span>|<i>0</i></td></tr></table>\r\n<br></div>\r\n		</td>\r\n	</tr>\r\n   </table>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n   <table border=\'0\' cellpadding=\'4\' cellspacing=\'0\' width=\'100%\'>\r\n	<tr>\r\n	 <td valign=\'top\' width=\"182\">\r\n	  <table border=\'0\' cellpadding=\'0\' cellspacing=\'0\'>\r\n	   <tr>\r\n		<td><img name=\'tlc\' src=\'templates/jade/tlc.gif\' width=\'10\' height=\'15\' border=\'0\' alt=\'\'></td>\r\n		<td width=\'100%\' background=\'templates/jade/tm.gif\'><img name=\'tm\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n		<td><img name=\'trc\' src=\'templates/jade/trc.gif\' width=\'10\' height=\'15\' border=\'0\' alt=\'\'></td>\r\n	   </tr>\r\n	   <tr>\r\n		<td background=\'templates/jade/tlt.gif\'><img name=\'tlt\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n		<td valign=\'top\' bgcolor=\'#003800\' class=\'nav\'><div style=\'position: relative; top: -15;\' align=\'center\'></div><div align=\"center\">\r\n<span class=\"navhead\">&#151;City Gates&#151;</span><br clear=\'all\'>\r\n\r\n<a href=\"forest.php?c=72-191116\" accesskey=\"F\" class=\'nav\' ><span class=\'navhi\'>F</span>orest</a><br clear=\'all\'>\r\n\r\n<a href=\"pvp.php?c=72-191116\" accesskey=\"S\" class=\'nav\' ><span class=\'navhi\'>S</span>lay Other Players</a><br clear=\'all\'>\r\n\r\n<a href=\"login.php?op=logout&amp;c=72-191116\" accesskey=\"Q\" class=\'nav\' ><span class=\'colLtMagenta\'><span class=\'navhi\'>Q</span>uit</span> to the fields</a><br clear=\'all\'>\r\n\r\n<a href=\"mercenarycamp.php?c=72-191116\" accesskey=\"M\" class=\'nav\' ><span class=\'navhi\'>M</span>ercenary Camp</a><br clear=\'all\'>\r\n\n\r\n<span class=\"navhead\">&#151;Blades Boulevard&#151;</span><br clear=\'all\'>\r\n\r\n<a href=\"train.php?c=72-191116\" accesskey=\"u\" class=\'nav\' >Bl<span class=\'navhi\'>u</span>spring\'s Warrior Training</a><br clear=\'all\'>\r\n\r\n<a href=\"lodge.php?c=72-191116\" accesskey=\"J\" class=\'nav\' ><span class=\'navhi\'>J</span>CP\'s Hunter Lodge</a><br clear=\'all\'>\r\n\n\r\n<span class=\"navhead\">&#151;Market Street&#151;</span><br clear=\'all\'>\r\n\r\n<a href=\"weapons.php?c=72-191116\" accesskey=\"W\" class=\'nav\' >MightyE\'s <span class=\'navhi\'>W</span>eaponry</a><br clear=\'all\'>\r\n\r\n<a href=\"armor.php?c=72-191116\" accesskey=\"A\" class=\'nav\' >Pegasus <span class=\'navhi\'>A</span>rmor</a><br clear=\'all\'>\r\n\r\n<a href=\"bank.php?c=72-191116\" accesskey=\"B\" class=\'nav\' >Ye Olde <span class=\'navhi\'>B</span>ank</a><br clear=\'all\'>\r\n\r\n<a href=\"gypsy.php?c=72-191116\" accesskey=\"Z\" class=\'nav\' ><span class=\'navhi\'>Z</span>e Gypsy Tent</a><br clear=\'all\'>\r\n\n\r\n<span class=\"navhead\">&#151;Tavern Street&#151;</span><br clear=\'all\'>\r\n\r\n<a href=\"inn.php?c=72-191116\" accesskey=\"I\" class=\'nav\' >The Boar\'s Head <span class=\'navhi\'>I</span>nn</a><br clear=\'all\'>\r\n\r\n<a href=\"stables.php?c=72-191116\" accesskey=\"e\" class=\'nav\' >M<span class=\'navhi\'>e</span>rick\'s Stables</a><br clear=\'all\'>\r\n\r\n<a href=\"gardens.php?c=72-191116\" accesskey=\"G\" class=\'nav\' >The <span class=\'navhi\'>G</span>ardens</a><br clear=\'all\'>\r\n\r\n<a href=\"rock.php?c=72-191116\" accesskey=\"R\" class=\'nav\' >Curious Looking <span class=\'navhi\'>R</span>ock</a><br clear=\'all\'>\r\n\r\n<a href=\"clan.php?c=72-191116\" accesskey=\"C\" class=\'nav\' ><span class=\'navhi\'>C</span>lan Halls</a><br clear=\'all\'>\r\n\n\r\n<span class=\"navhead\">&#151;Info&#151;</span><br clear=\'all\'>\r\n\r\n<a href=\"petition.php?op=faq\" accesskey=\"?\" class=\'nav\' target=\'_blank\'>(<span class=\'navhi\'>?</span>) F.A.Q. (newbies start here)</a><br clear=\'all\'>\r\n\r\n<a href=\"news.php?c=72-191116\" accesskey=\"N\" class=\'nav\' >Daily <span class=\'navhi\'>N</span>ews</a><br clear=\'all\'>\r\n\r\n<a href=\"list.php?c=72-191116\" accesskey=\"L\" class=\'nav\' ><span class=\'navhi\'>L</span>ist Warriors</a><br clear=\'all\'>\r\n\r\n<a href=\"hof.php?c=72-191116\" accesskey=\"o\" class=\'nav\' >Hall <span class=\'navhi\'>o</span>\' Fame</a><br clear=\'all\'>\r\n\n\r\n<span class=\"navhead\">&#151;Other&#151;</span><br clear=\'all\'>\r\n\r\n<a href=\"prefs.php?c=72-191116\" accesskey=\"P\" class=\'nav\' ><span class=\'navhi\'>P</span>references</a><br clear=\'all\'>\r\n\n\r\n<span class=\"navhead\">&#151;Superuser&#151;</span><br clear=\'all\'>\r\n\r\n<a href=\"moderate.php?c=72-191116\" accesskey=\",\" class=\'nav\' >(<span class=\'navhi\'>,</span>) Comment Moderation</a><br clear=\'all\'>\r\n\r\n<a href=\"superuser.php?c=72-191116\" accesskey=\"X\" class=\'nav\' >(<span class=\'navhi\'>X</span>) <b>Superuser Grotto</b></a><br clear=\'all\'>\r\n\r\n<a href=\"newday.php?c=72-191116\" accesskey=\"/\" class=\'nav\' >(<span class=\'navhi\'>/</span>) New Day</a><br clear=\'all\'>\r\n\n</div></td>\r\n		<td background=\'templates/jade/trt.gif\'><img name=\'trt\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n	   </tr>\r\n	   <tr>\r\n		<td><img name=\'blc\' src=\'templates/jade/blc.gif\' width=\'10\' height=\'12\' border=\'0\' alt=\'\'></td>\r\n		<td background=\'templates/jade/btm.gif\'><img name=\'btm\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n		<td><img name=\'brc\' src=\'templates/jade/brc.gif\' width=\'10\' height=\'12\' border=\'0\' alt=\'\'></td>\r\n	   </tr>\r\n	  </table>\r\n	 </td>\r\n	 <td valign=\'top\' width=\"100%\">\r\n	  <table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\' height=\'100%\'>\r\n	   <tr>\r\n		<td><img name=\'tlc\' src=\'templates/jade/tlc.gif\' width=\'10\' height=\'15\' border=\'0\' alt=\'\'></td>\r\n		<td width=\'100%\' background=\'templates/jade/tm.gif\'><img name=\'tm\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n		<td><img name=\'trc\' src=\'templates/jade/trc.gif\' width=\'10\' height=\'15\' border=\'0\' alt=\'\'></td>\r\n	   </tr>\r\n	   <tr height=\'100%\'>\r\n		<td background=\'templates/jade/tlt.gif\'><img name=\'tlt\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n		<td valign=\'top\' bgcolor=\'#003800\' class=\'headrow\'>\r\n		 <table width=\'100%\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\'>\r\n		  <tr>\r\n		   <td valign=top align=left width=\'100%\'><div style=\"float: right\"></div>\r\n<!--\nAllowAnonymous: False\nOverride Forced Nav: False\n-->\n<!--CheckNewDay()-->\n<span class=\'colLtGreen\'><div align=\'center\'><b>Degolburg Square</b></div>The village of Degolburg hustles and bustles.  No one really notices that you\'re standing there.  You see various shops and businesses along main street.  There is a curious looking rock to one side.  On every side the village is surrounded by deep dark forest.<br>\n<br>\n\nThe clock on the inn reads </span><span class=\'colLtYellow\'>4:45 am</span><span class=\'colLtGreen\'>.<br>\n\n<br>\n</span><span class=\'colLtMagenta\'></span><span class=\'colLtGreen\'>Nearby some villagers talk:<br>\n\n<a name=\'village\'></a>\n\n\n\n\n\n\n\n\n\n\n<br>\n</span><span class=\'colLtGreen\'>Speak<br>\n\n\n<form action=\"village.php?comment=1\" method=\'POST\' autocomplete=\'false\'>\n\n\n\n<script language=\'JavaScript\'>\r\n				function previewtextinsertcommentary(t,l){\r\n					var out = \"<span class=\\\'colLtWhite\\\'></span><span class=\\\'colLtMagenta\\\'>Admin </span><span class=\\\'colLtWhite\\\'>admin</span> \";\r\n					var end = \'</span>\';\r\n					var x=0;\r\n					var y=\'\';\r\n					var z=\'\';\r\n					var max=document.getElementById(\'inputinsertcommentary\');\r\n					var charsleft=\'\';\n	if (t.substr(0,2)==\'::\'){\r\n						x=2;\r\n						out += \'</span><span class=\\\'colLtWhite\\\'>\';\r\n					}else if (t.substr(0,1)==\':\'){\r\n						x=1;\r\n						out += \'</span><span class=\\\'colLtWhite\\\'>\';\r\n					}else if (t.substr(0,3)==\'/me\'){\r\n						x=3;\r\n						out += \'</span><span class=\\\'colLtWhite\\\'>\';\n	}else{\r\n						out += \'</span><span class=\\\'colDkCyan\\\'>says, \"</span><span class=\\\'colLtCyan\\\'>\';\r\n						end += \'</span><span class=\\\'colDkCyan\\\'>\"\';\r\n					}\n	if (x!=0) {\r\n						if (max.maxLength!=200) max.maxLength=200;\r\n						l=200;\r\n					} else {\r\n						max.maxLength=l;\r\n					}\r\n					if (l-t.length<0) charsleft +=\'<span class=\\\'colLtRed\\\'>\';\r\n					charsleft += \'You have \'+(l-t.length)+\' characters left.<br>\';\r\n					if (l-t.length<0) charsleft +=\'</span>\';\r\n					document.getElementById(\'charsleftinsertcommentary\').innerHTML=charsleft+\'<br/>\';\n		for (; x < t.length; x++){\r\n						y = t.substr(x,1);\r\n						if (y==\'<\'){\r\n							out += \'&lt;\';\r\n							continue;\r\n						}else if(y==\'>\'){\r\n							out += \'&gt;\';\r\n							continue;\r\n						}else if(y==\'\\n\'){\r\n							out += \'<br />\';\r\n							continue;\r\n						}else if (y==\'`\'){\r\n							if (x < t.length-1){\r\n								z = t.substr(x+1,1);\r\n								if (z==\'0\'){\r\n									out += \'</span>\';\r\n								}else if (z==\'1\'){\r\n									out += \'</span><span class=\\\'colDkBlue\\\'>\';\r\n								}else if (z==\'2\'){\r\n									out += \'</span><span class=\\\'colDkGreen\\\'>\';\r\n								}else if (z==\'3\'){\r\n									out += \'</span><span class=\\\'colDkCyan\\\'>\';\r\n								}else if (z==\'4\'){\r\n									out += \'</span><span class=\\\'colDkRed\\\'>\';\r\n								}else if (z==\'5\'){\r\n									out += \'</span><span class=\\\'colDkMagenta\\\'>\';\r\n								}else if (z==\'6\'){\r\n									out += \'</span><span class=\\\'colDkYellow\\\'>\';\r\n								}else if (z==\'7\'){\r\n									out += \'</span><span class=\\\'colDkWhite\\\'>\';\r\n								}else if (z==\'q\'){\r\n									out += \'</span><span class=\\\'colDkOrange\\\'>\';\r\n								}else if (z==\'!\'){\r\n									out += \'</span><span class=\\\'colLtBlue\\\'>\';\r\n								}else if (z==\'@\'){\r\n									out += \'</span><span class=\\\'colLtGreen\\\'>\';\r\n								}else if (z==\'#\'){\r\n									out += \'</span><span class=\\\'colLtCyan\\\'>\';\r\n								}else if (z==\'$\'){\r\n									out += \'</span><span class=\\\'colLtRed\\\'>\';\r\n								}else if (z==\'%\'){\r\n									out += \'</span><span class=\\\'colLtMagenta\\\'>\';\r\n								}else if (z==\'^\'){\r\n									out += \'</span><span class=\\\'colLtYellow\\\'>\';\r\n								}else if (z==\'&\'){\r\n									out += \'</span><span class=\\\'colLtWhite\\\'>\';\r\n								}else if (z==\'Q\'){\r\n									out += \'</span><span class=\\\'colLtOrange\\\'>\';\r\n								}else if (z==\')\'){\r\n									out += \'</span><span class=\\\'colLtBlack\\\'>\';\r\n								}else if (z==\'r\'){\r\n									out += \'</span><span class=\\\'colRose\\\'>\';\r\n								}else if (z==\'R\'){\r\n									out += \'</span><span class=\\\'colRose\\\'>\';\r\n								}else if (z==\'v\'){\r\n									out += \'</span><span class=\\\'coliceviolet\\\'>\';\r\n								}else if (z==\'V\'){\r\n									out += \'</span><span class=\\\'colBlueViolet\\\'>\';\r\n								}else if (z==\'g\'){\r\n									out += \'</span><span class=\\\'colXLtGreen\\\'>\';\r\n								}else if (z==\'G\'){\r\n									out += \'</span><span class=\\\'colXLtGreen\\\'>\';\r\n								}else if (z==\'T\'){\r\n									out += \'</span><span class=\\\'colDkBrown\\\'>\';\r\n								}else if (z==\'t\'){\r\n									out += \'</span><span class=\\\'colLtBrown\\\'>\';\r\n								}else if (z==\'~\'){\r\n									out += \'</span><span class=\\\'colBlack\\\'>\';\r\n								}else if (z==\'j\'){\r\n									out += \'</span><span class=\\\'colMdGrey\\\'>\';\r\n								}else if (z==\'J\'){\r\n									out += \'</span><span class=\\\'colMdBlue\\\'>\';\r\n								}else if (z==\'e\'){\r\n									out += \'</span><span class=\\\'colDkRust\\\'>\';\r\n								}else if (z==\'E\'){\r\n									out += \'</span><span class=\\\'colLtRust\\\'>\';\r\n								}else if (z==\'l\'){\r\n									out += \'</span><span class=\\\'colDkLinkBlue\\\'>\';\r\n								}else if (z==\'L\'){\r\n									out += \'</span><span class=\\\'colLtLinkBlue\\\'>\';\r\n								}else if (z==\'x\'){\r\n									out += \'</span><span class=\\\'colburlywood\\\'>\';\r\n								}else if (z==\'X\'){\r\n									out += \'</span><span class=\\\'colbeige\\\'>\';\r\n								}else if (z==\'y\'){\r\n									out += \'</span><span class=\\\'colkhaki\\\'>\';\r\n								}else if (z==\'Y\'){\r\n									out += \'</span><span class=\\\'coldarkkhaki\\\'>\';\r\n								}else if (z==\'k\'){\r\n									out += \'</span><span class=\\\'colaquamarine\\\'>\';\r\n								}else if (z==\'K\'){\r\n									out += \'</span><span class=\\\'coldarkseagreen\\\'>\';\r\n								}else if (z==\'p\'){\r\n									out += \'</span><span class=\\\'collightsalmon\\\'>\';\r\n								}else if (z==\'P\'){\r\n									out += \'</span><span class=\\\'colsalmon\\\'>\';\r\n								}else if (z==\'m\'){\r\n									out += \'</span><span class=\\\'colwheat\\\'>\';\r\n								}else if (z==\'M\'){\r\n									out += \'</span><span class=\\\'coltan\\\'>\';\r\n								}\r\n								x++;\r\n							}\r\n						}else{\r\n							out += y;\r\n						}\r\n					}\r\n					document.getElementById(\"previewtextinsertcommentary\").innerHTML=out+end+\'<br/>\';\r\n				}\r\n				</script>\r\n				\n<span id=\'charsleftinsertcommentary\'></span>\n<input name=\'insertcommentary\' id=\'inputinsertcommentary\' onKeyUp=\'previewtextinsertcommentary(document.getElementById(\"inputinsertcommentary\").value,200);\' \nsize=\'40\'\nmaxlength=\'200\'\n>\n<div id=\'previewtextinsertcommentary\'></div>\n\r\n		<script language=\'JavaScript\'>\r\n			inputinsertcommentary.addEvent(\'keyup\', function(){\r\n				window.localStorage[\'value\'] = inputinsertcommentary.value;\r\n				window.localStorage[\'timestamp\'] = (new Date()). getTime();\r\n			}, false);\r\n			inputinsertcommentary.value = window.localStorage[\'value\'];\r\n		</script>\r\n	\n<input type=\'hidden\' name=\'talkline\' value=\'says\'>\n<input type=\'hidden\' name=\'schema\' value=\'village\'>\n<input type=\'hidden\' name=\'counter\' value=\'72\'>\n<input type=\'hidden\' name=\'section\' value=\'village\'>\n\n<input type=\'submit\' class=\'button\' value=\'Add\'><br>\n\n<div id=\'previewtext\'></div></form>\n\n\n\n\n\n&lt;&lt; First Unseen &lt; Previous\n&nbsp;<a href=\"village.php?refresh=1&c=72-191116#village\">Refresh</a>&nbsp;\nNext &gt; Last Page &gt;&gt;\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\r\n		   </td>\r\n		   <td valign=top width=\'120\'>\r\n			<table width=\"120\" border=\'0\' cellpadding=\'0\' cellspacing=\'0\'>\r\n			 <tr>\r\n			  <td><img name=\'tlc\' src=\'templates/jade/tlc.gif\' width=\'10\' height=\'15\' border=\'0\' alt=\'\'></td>\r\n			  <td width=\'100%\' background=\'templates/jade/tm.gif\'><img name=\'tm\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n			  <td><img name=\'trc\' src=\'templates/jade/trc.gif\' width=\'10\' height=\'15\' border=\'0\' alt=\'\'></td>\r\n			 </tr> \r\n			 <tr>\r\n			  <td background=\'templates/jade/tlt.gif\'><img name=\'tlt\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n			  <td valign=\'top\' bgcolor=\'#003800\'class=\'nav\' align=\'left\' nowrap>\r\n<table cellpadding=\'2\' cellspacing=\'0\' class=\'charinfo\' width=\'150\'>\r\n\r\n<tr><td class=\'charhead\' colspan=\'2\'><b>Vital Info</b></td></tr>\r\n\r\n<tr><td class=\'charinfo\'><b><span class=\'colLtWhite\'>Name</span></b></td><td class=\'charinfo\'><span class=\'colLtYellow\'></span><span class=\'colLtMagenta\'>Admin </span><span class=\'colLtWhite\'>admin</span></td></tr>\r\n\r\n<tr><td class=\'charinfo\'><b><span class=\'colLtWhite\'>Level</span></b></td><td class=\'charinfo\'><span class=\'colLtYellow\'><b>1</b></span></td></tr>\r\n\r\n<tr><td class=\'charinfo\'><b><span class=\'colLtWhite\'>Hitpoints</span></b></td><td class=\'charinfo\'><span class=\'colLtYellow\'>10</span>/10</td></tr>\r\n\r\n<tr><td class=\'charinfo\'><b><span class=\'colLtWhite\'>Turns</span></b></td><td class=\'charinfo\'><span class=\'colLtYellow\'>11</span></td></tr>\r\n\r\n<tr><td class=\'charinfo\'><b><span class=\'colLtWhite\'>Attack</span></b></td><td class=\'charinfo\'><span class=\'colLtYellow\'>1</span></td></tr>\r\n\r\n<tr><td class=\'charinfo\'><b><span class=\'colLtWhite\'>Defense</span></b></td><td class=\'charinfo\'><span class=\'colLtYellow\'>1</span></td></tr>\r\n\r\n<tr><td class=\'charinfo\'><b><span class=\'colLtWhite\'>Spirits</span></b></td><td class=\'charinfo\'><span class=\'colLtYellow\'><b>High</b></span></td></tr>\r\n\r\n<tr><td class=\'charinfo\'><b><span class=\'colLtWhite\'>Race</span></b></td><td class=\'charinfo\'><span class=\'colLtYellow\'>Human</span></td></tr>\r\n\r\n<tr><td class=\'charhead\' colspan=\'2\'><b>Personal Info</b></td></tr>\r\n\r\n<tr><td class=\'charinfo\'><b><span class=\'colLtWhite\'>Gold</span></b></td><td class=\'charinfo\'><span class=\'colLtYellow\'>0</span></td></tr>\r\n\r\n<tr><td class=\'charinfo\'><b><span class=\'colLtWhite\'>Gems</span></b></td><td class=\'charinfo\'><span class=\'colLtYellow\'>0</span></td></tr>\r\n\r\n<tr><td class=\'charinfo\'><b><span class=\'colLtWhite\'>Experience</span></b></td><td class=\'charinfo\'><span class=\'colLtYellow\'>0</span></td></tr>\r\n\r\n<tr><td class=\'charhead\' colspan=\'2\'><b>Equipment Info</b></td></tr>\r\n\r\n<tr><td class=\'charinfo\'><b><span class=\'colLtWhite\'>Weapon</span></b></td><td class=\'charinfo\'><span class=\'colLtYellow\'>Fists</span></td></tr>\r\n\r\n<tr><td class=\'charinfo\'><b><span class=\'colLtWhite\'>Armor</span></b></td><td class=\'charinfo\'><span class=\'colLtYellow\'>T-Shirt</span></td></tr>\r\n\r\n<tr><td class=\'charhead\' colspan=\'2\'><b>Buffs:</b></td></tr><tr><td class=\'charinfo\' colspan=\'2\'><span class=\'colLtYellow\'>None</span></td></tr>\r\n\r\n</table>\r\n <p>&nbsp;</p> <table align=\"center\"><tr><td><form action=\"https://www.paypal.com/cgi-bin/webscr\" method=\"post\" target=\"_blank\">\n<input type=\"hidden\" name=\"cmd\" value=\"_xclick\">\n<input type=\"hidden\" name=\"business\" value=\"logd@mightye.org\">\n<input type=\"hidden\" name=\"item_name\" value=\"Legend of the Green Dragon Author Donation from Admin admin\">\n<input type=\"hidden\" name=\"item_number\" value=\"admin:192.168.1.128/village.php?c=71-191114\">\n<input type=\"hidden\" name=\"no_shipping\" value=\"1\">\n<input type=\"hidden\" name=\"notify_url\" value=\"http://lotgd.net/payment.php\">\n<input type=\"hidden\" name=\"cn\" value=\"Your Character Name\">\n<input type=\"hidden\" name=\"cs\" value=\"1\">\n<input type=\"hidden\" name=\"currency_code\" value=\"USD\">\n<input type=\"hidden\" name=\"tax\" value=\"0\">\n<input type=\"image\" src=\"images/paypal1.gif\" border=\"0\" name=\"submit\" alt=\"Donate!\">\n</form></td><td><form action=\"https://www.paypal.com/cgi-bin/webscr\" method=\"post\" target=\"_blank\">\n<input type=\"hidden\" name=\"cmd\" value=\"_xclick\">\n<input type=\"hidden\" name=\"business\" value=\"derbugmeister@shaw.ca\">\n<input type=\"hidden\" name=\"item_name\" value=\"Legend of the Green Dragon DP Donation from Admin admin\">\n<input type=\"hidden\" name=\"item_number\" value=\"admin:192.168.1.128/village.php?c=71-191114\">\n<input type=\"hidden\" name=\"no_shipping\" value=\"1\">\n<input type=\"hidden\" name=\"notify_url\" value=\"http://dragonprimelogd.net/payment.php\">\n<input type=\"hidden\" name=\"cn\" value=\"Your Character Name\">\n<input type=\"hidden\" name=\"cs\" value=\"1\">\n<input type=\"hidden\" name=\"currency_code\" value=\"USD\">\n<input type=\"hidden\" name=\"tax\" value=\"0\">\n<input type=\"image\" src=\"images/paypal3.gif\" border=\"0\" name=\"submit\" alt=\"Donate!\">\n</form></td></tr></table></td>\r\n			  <td background=\'templates/jade/trt.gif\'><img name=\'trt\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n			 </tr>\r\n			 <tr>\r\n			  <td><img name=\'blc\' src=\'templates/jade/blc.gif\' width=\'10\' height=\'12\' border=\'0\' alt=\'\'></td>\r\n			  <td background=\'templates/jade/btm.gif\'><img name=\'btm\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n			  <td><img name=\'brc\' src=\'templates/jade/brc.gif\' width=\'10\' height=\'12\' border=\'0\' alt=\'\'></td>\r\n			 </tr>\r\n			</table>\r\n		   </td>\r\n		  </tr>\r\n		 </table>\r\n		</td>\r\n		<td background=\'templates/jade/trt.gif\'><img name=\'trt\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n	   </tr>\r\n	   <tr>\r\n		<td><img name=\'blc\' src=\'templates/jade/blc.gif\' width=\'10\' height=\'12\' border=\'0\' alt=\'\'></td>\r\n		<td background=\'templates/jade/btm.gif\'><img name=\'btm\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n		<td><img name=\'brc\' src=\'templates/jade/brc.gif\' width=\'10\' height=\'12\' border=\'0\' alt=\'\'></td>\r\n	   </tr>\r\n	  </table>\r\n	 </td>\r\n	</tr>\r\n   </table>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n   <table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n	<tr>\r\n	 <td><img name=\'tlc\' src=\'templates/jade/tlc.gif\' width=\'10\' height=\'15\' border=\'0\' alt=\'\'></td>\r\n	 <td width=\'100%\' background=\'templates/jade/tm.gif\'><img name=\'tm\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n	 <td><img name=\'trc\' src=\'templates/jade/trc.gif\' width=\'10\' height=\'15\' border=\'0\' alt=\'\'></td>\r\n	</tr>\r\n	<tr>\r\n	 <td background=\'templates/jade/tlt.gif\'><img name=\'tlt\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n	 <td valign=\'top\' bgcolor=\'#003800\'>\r\n	  <table width=\'100%\'>\r\n	   <tr>\r\n		<td valign=\'top\'> \n<!-- Creative Commons License -->\n<a rel=\'license\' href=\'http://creativecommons.org/licenses/by-nc-sa/2.0/\' target=\'_blank\'><img clear=\'right\' align=\'left\' alt=\'Creative Commons License\' border=\'0\' src=\'images/somerights20.gif\' /></a>\nThis work is licensed under a <a rel=\'license\' href=\'http://creativecommons.org/licenses/by-nc-sa/2.0/\' target=\'_blank\'>Creative Commons License</a>.<br />\n<!-- /Creative Commons License -->\n<!--\n  <rdf:RDF xmlns=\'http://web.resource.org/cc/\' xmlns:dc=\'http://purl.org/dc/elements/1.1/\' xmlns:rdf=\'http://www.w3.org/1999/02/22-rdf-syntax-ns#\'>\n	<Work rdf:about=\'\'>\n	  <dc:type rdf:resource=\'http://purl.org/dc/dcmitype/Interactive\' />\n	  <license rdf:resource=\'http://creativecommons.org/licenses/by-nc-sa/2.0/\' />\n	</Work>\n	<License rdf:about=\'http://creativecommons.org/licenses/by-nc-sa/2.0/\'>\n	  <permits rdf:resource=\'http://web.resource.org/cc/Reproduction\' />\n	  <permits rdf:resource=\'http://web.resource.org/cc/Distribution\' />\n	  <requires rdf:resource=\'http://web.resource.org/cc/Notice\' />\n	  <requires rdf:resource=\'http://web.resource.org/cc/Attribution\' />\n	  <prohibits rdf:resource=\'http://web.resource.org/cc/CommercialUse\' />\n	  <permits rdf:resource=\'http://web.resource.org/cc/DerivativeWorks\' />\n	  <requires rdf:resource=\'http://web.resource.org/cc/ShareAlike\' />\n	</License>\n  </rdf:RDF>\n-->\nGame Design and Code: Copyright &copy; 2002-2005, Eric Stevens & JT Traub, &copy; 2006-2007, Dragonprime Development Team<br />Design: Jade Template &copy; Josh Canning 2004 of <a href=\'http://hfs.cjb.net/\' target=\'_blank\'>HFS</a></td>\r\n		<td valign=\'top\' align=\'right\'><a href=\'source.php?url=/village.php\' onclick=\"window.open(\'source.php?url=/village.php\',\'sourcephpurlvillagephp\',\'scrollbars=yes,resizable=yes,width=550,height=300\').focus();return false;\" target=\'_blank\'>View PHP Source</a><br />Version: 1.1.2 Dragonprime Edition<br />(Page gen: 0.592s / 314 queries (0.554s), Ave: 0.11s - 3.53/32)</td>\r\n	   </tr>\r\n	  </table>\r\n	 </td>\r\n	 <td background=\'templates/jade/trt.gif\'><img name=\'trt\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n	</tr>\r\n	<tr>\r\n	 <td><img name=\'blc\' src=\'templates/jade/blc.gif\' width=\'10\' height=\'12\' border=\'0\' alt=\'\'></td>\r\n	 <td background=\'templates/jade/btm.gif\'><img name=\'btm\' src=\'templates/jade/spacer.gif\' width=\'1\' height=\'1\' border=\'0\' alt=\'\'></td>\r\n	 <td><img name=\'brc\' src=\'templates/jade/brc.gif\' width=\'10\' height=\'12\' border=\'0\' alt=\'\'></td>\r\n	</tr>\r\n   </table>\r\n  </td>\r\n </tr>\r\n</table>\r\n</body>\r\n</html>\r\n');
/*!40000 ALTER TABLE `accounts_output` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `armor`
--

DROP TABLE IF EXISTS `armor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `armor` (
  `armorid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `armorname` varchar(128) DEFAULT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  `defense` int(11) NOT NULL DEFAULT 1,
  `level` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`armorid`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor`
--

LOCK TABLES `armor` WRITE;
/*!40000 ALTER TABLE `armor` DISABLE KEYS */;
INSERT INTO `armor` VALUES (1,'Fuzzy Slippers',48,1,0),(2,'Flannel Pajamas',225,2,0),(3,'Homespun Longjohns',585,3,0),(4,'Homespun Undershirt',990,4,0),(5,'Knitted Socks',1575,5,0),(6,'Knitted Gloves',2250,6,0),(7,'Old Leather Boots',2790,7,0),(8,'Homespun Pants',3420,8,0),(9,'Homespun Tunic',4230,9,0),(10,'Gypsy Cape',5040,10,0),(11,'Old Leather Cap',5850,11,0),(12,'Old Leather Bracers',6840,12,0),(13,'Traveller\'s Shield',8010,13,0),(14,'Old Leather Pants',9000,14,0),(15,'Old Leather Tunic',10350,15,0),(16,'Flip-Flops',48,1,1),(17,'Swimsuit and Towel',225,2,1),(18,'Cotton Undershirt',585,3,1),(19,'Wool Socks',990,4,1),(20,'Wool Gloves',1575,5,1),(21,'Leather Boots',2250,6,1),(22,'Leather Cap',2790,7,1),(23,'Leather Bracers',3420,8,1),(24,'Leather Leggings',4230,9,1),(25,'Leather Tunic',5040,10,1),(26,'Hooded Leather Cape',5850,11,1),(27,'Deerskin Leggings',6840,12,1),(28,'Deerskin Belt',8010,13,1),(29,'Deerskin Tunic',9000,14,1),(30,'Small Rawhide Shield',10350,15,1),(31,'Workboots',48,1,2),(32,'Overalls',225,2,2),(33,'Sturdy Leather Gloves',585,3,2),(34,'Sturdy Leather Bracers',990,4,2),(35,'Sturdy Leather Boots',1575,5,2),(36,'Sturdy Leather Helm',2250,6,2),(37,'Sturdy Leather Pants',2790,7,2),(38,'Sturdy Leather Tunic',3420,8,2),(39,'Sturdy Leather Cloak',4230,9,2),(40,'Woodsman\'s Helm',5040,10,2),(41,'Woodsman\'s Gauntlets',5850,11,2),(42,'Woodsman\'s Bracers',6840,12,2),(43,'Woodsman\'s Greaves',8010,13,2),(44,'Woodsman\'s Tunic',9000,14,2),(45,'Woodsman\'s Kite Shield',10350,15,2),(46,'Showercap and Towel',48,1,3),(47,'Bathrobe',225,2,3),(48,'Wolfskin Gloves',585,3,3),(49,'Wolfskin-lined Boots',990,4,3),(50,'Wolfskin Bracers',1575,5,3),(51,'Wolfskin Pants',2250,6,3),(52,'Wolfskin Tunic',2790,7,3),(53,'Hooded Wolfskin Cape',3420,8,3),(54,'Wolfmaster\'s Bracers',4230,9,3),(55,'Wolfmaster\'s Gauntlets',5040,10,3),(56,'Wolfmasters Helm',5850,11,3),(57,'Wolfmaster\'s Leggings',6840,12,3),(58,'Wolfmaster\'s Belted Jerkin',8010,13,3),(59,'Wolfhide Cape',9000,14,3),(60,'Shield of the Wolf Master',10350,15,3),(61,'Sweat Pants',48,1,4),(62,'Sweat Shirt',225,2,4),(63,'Studded Leather Helm',585,3,4),(64,'Studded Leather Gauntlets',990,4,4),(65,'Hardened Leather Boots',1575,5,4),(66,'Studded Leather Leggings',2250,6,4),(67,'Studded Leather Tunic',2790,7,4),(68,'Tanner\'s Cape',3420,8,4),(69,'Rusty Chainmail Helm',4230,9,4),(70,'Rusty Chainmail Gauntlets',5040,10,4),(71,'Rusty Chainmail Bracers',5850,11,4),(72,'Rusty Chainmail Boots',6840,12,4),(73,'Rusty Chainmail Greaves',8010,13,4),(74,'Rusty Chainmail Tunic',9000,14,4),(75,'Large Iron Buckler',10350,15,4),(76,'Bunny Slippers',48,1,5),(77,'Feety Pajamas',225,2,5),(78,'Comfortable Leather Undergarments',585,3,5),(79,'Heavy Chainmail Helm',990,4,5),(80,'Heavy Chainmail Gauntlets',1575,5,5),(81,'Heavy Chainmail Bracers',2250,6,5),(82,'Heavy Chainmail Boots',2790,7,5),(83,'Heavy Chainmail Greaves',3420,8,5),(84,'Heavy Chainmail Tunic',4230,9,5),(85,'Dragon Soldier\'s Bracers',5040,10,5),(86,'Dragon Soldier\'s Gauntlets',5850,11,5),(87,'Dragon Soldier\'s Boots',6840,12,5),(88,'Dragon Soldier\'s Greaves',8010,13,5),(89,'Dragon Soldier\'s Chestplate',9000,14,5),(90,'Dragon Soldier\'s Shield',10350,15,5),(91,'Bluejeans',48,1,6),(92,'Flannel Shirt',225,2,6),(93,'Well Crafted Bronze Helm',585,3,6),(94,'Well Crafted Bronze Gauntlets',990,4,6),(95,'Well Crafted Bronze Bracers',1575,5,6),(96,'Well Crafted Bronze Boots',2250,6,6),(97,'Well Crafted Bronze Greaves',2790,7,6),(98,'Well Crafted Bronze Chestplate',3420,8,6),(99,'Enchanted Bronze Helm',4230,9,6),(100,'Enchanted Bronze Gauntlets',5040,10,6),(101,'Enchanted Bronze Bracers',5850,11,6),(102,'Enchanted Bronze Boots',6840,12,6),(103,'Enchanted Bronze Greaves',8010,13,6),(104,'Enchanted Bronze Chestplate',9000,14,6),(105,'Hooded Unicorn Skin Cloak',10350,15,6),(106,'Barrel',48,1,7),(107,'Lampshade',225,2,7),(108,'Perfectly Crafted Steel Helm',585,3,7),(109,'Perfectly Crafted Steel Gauntlets',990,4,7),(110,'Perfectly Crafted Steel Boots',1575,5,7),(111,'Perfectly Crafted Steel Bracers',2250,6,7),(112,'Perfectly Crafted Steel Greaves',2790,7,7),(113,'Perfectly Crafted Steel Chestplate',3420,8,7),(114,'Griffon-Feather Cloak',4230,9,7),(115,'Dwarven Chainmail Helm',5040,10,7),(116,'Dwarven Chainmail Gauntlets',5850,11,7),(117,'Dwarven Chainmail Boots',6840,12,7),(118,'Dwarven Chainmail Bracers',8010,13,7),(119,'Dwarven Chainmail Greaves',9000,14,7),(120,'Dwarven Chainmail Chestplate',10350,15,7),(121,'Fig Leaf',48,1,8),(122,'Kilt',225,2,8),(123,'Majestic Gold Helm',585,3,8),(124,'Majestic Gold Gauntlets',990,4,8),(125,'Majestic Gold Boots',1575,5,8),(126,'Bracers',2250,6,8),(127,'Majestic Gold Greaves',2790,7,8),(128,'Majestic Gold Chestplate',3420,8,8),(129,'Majestic Gold Shield',4230,9,8),(130,'Gold-Threaded Cloak',5040,10,8),(131,'Enchanted Ruby Ring',5850,11,8),(132,'Enchanted Sapphire Ring',6840,12,8),(133,'Enchanted Jade Ring',8010,13,8),(134,'Enchanted Amethyst Ring',9000,14,8),(135,'Enchanted Diamond Ring',10350,15,8),(136,'Button',48,1,9),(137,'Elven Silk Nightclothes',225,2,9),(138,'Elven Silk Gloves',585,3,9),(139,'Elven Silk Slippers',990,4,9),(140,'Elven Silk Wristband',1575,5,9),(141,'Leggings',2250,6,9),(142,'Elven Silk Tunic',2790,7,9),(143,'Elven Silk Cloak',3420,8,9),(144,'Ring of Night',4230,9,9),(145,'Ring of Day',5040,10,9),(146,'Ring of Solitude',5850,11,9),(147,'Ring of Peace',6840,12,9),(148,'Ring of Courage',8010,13,9),(149,'Ring of Virtue',9000,14,9),(150,'Ring of Life',10350,15,9),(151,'Pegasus\' Hooded Cloak',5040,10,10),(152,'Pegasus\' Chestplate',4230,9,10),(153,'Pegasus\' Greaves',3420,8,10),(154,'Pegasus\' Boots',2790,7,10),(155,'Pegasus\' Gorget',2250,6,10),(156,'Pegasus\' Bracers',1575,5,10),(157,'Pegasus\' Gauntlets',990,4,10),(158,'Pegasus\' Helm',585,3,10),(159,'Platform Shoes',225,2,10),(160,'Leisure Suit',48,1,10),(161,'Pegasus Feather Pendant',5850,11,10),(162,'Pegasus Feather Belt',6840,12,10),(163,'Pegasus\' Emblazoned Shield',8010,13,10),(164,'Pegasus\' Emblazoned Ring',9000,14,10),(165,'Pegasus\' Emblazoned Crown',10350,15,10),(166,'New Clothes',48,1,11),(167,'Chicken Suit',225,2,11),(168,'Gauntlets of Grace',585,3,11),(169,'Bracer of Beauty',990,4,11),(170,'Helm of Health',1575,5,11),(171,'Greaves of Good Fortune',2250,6,11),(172,'Boots of Bravery',2790,7,11),(173,'Tunic of Tolerance',3420,8,11),(174,'Cloak of Confidence',4230,9,11),(175,'Ring of Righteousness',5040,10,11),(176,'Necklace of Narcissism',5850,11,11),(177,'Pendant of Power',6840,12,11),(178,'Breastplate of Benevolence',8010,13,11),(179,'Shield of Superiority',9000,14,11),(180,'Scepter of Strength',10350,15,11),(181,'Dragon Skin Leather Helm',48,1,12),(182,'Dragon Skin Leather Gauntlets',225,2,12),(183,'Dragon Skin Leather Boots',585,3,12),(184,'Dragon Skin Leather Bracers',990,4,12),(185,'Dragon Skin Leather Leggings',1575,5,12),(186,'Dragon Skin Leather Tunic',2250,6,12),(187,'Dragon Skin Leather Cloak',2790,7,12),(188,'Dragon Scale Helm',3420,8,12),(189,'Dragon Scale Gauntlets',4230,9,12),(190,'Dragon Scale Boots',5040,10,12),(191,'Dragon Scale Bracers',5850,11,12),(192,'Dragon Scale Greaves',6840,12,12),(193,'Dragon Scale Chestplate',8010,13,12),(194,'Dragon Scale Cloak',9000,14,12),(195,'Dragon Talon Shield',10350,15,12);
/*!40000 ALTER TABLE `armor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bans`
--

DROP TABLE IF EXISTS `bans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bans` (
  `ipfilter` varchar(15) NOT NULL,
  `uniqueid` varchar(32) NOT NULL,
  `banexpire` datetime DEFAULT NULL,
  `banreason` text NOT NULL,
  `banner` varchar(50) NOT NULL,
  `lasthit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `banexpire` (`banexpire`),
  KEY `uniqueid` (`uniqueid`),
  KEY `ipfilter` (`ipfilter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bans`
--

LOCK TABLES `bans` WRITE;
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clans`
--

DROP TABLE IF EXISTS `clans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clans` (
  `clanid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `clanname` varchar(255) NOT NULL,
  `clanshort` varchar(5) NOT NULL,
  `clanmotd` text DEFAULT NULL,
  `clandesc` text DEFAULT NULL,
  `motdauthor` int(11) unsigned NOT NULL DEFAULT 0,
  `descauthor` int(11) unsigned NOT NULL DEFAULT 0,
  `customsay` varchar(15) NOT NULL,
  PRIMARY KEY (`clanid`),
  KEY `clanname` (`clanname`),
  KEY `clanshort` (`clanshort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clans`
--

LOCK TABLES `clans` WRITE;
/*!40000 ALTER TABLE `clans` DISABLE KEYS */;
/*!40000 ALTER TABLE `clans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commentary`
--

DROP TABLE IF EXISTS `commentary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commentary` (
  `commentid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(20) DEFAULT NULL,
  `author` int(11) unsigned NOT NULL DEFAULT 0,
  `comment` varchar(200) NOT NULL,
  `postdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`commentid`),
  KEY `section` (`section`),
  KEY `postdate` (`postdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentary`
--

LOCK TABLES `commentary` WRITE;
/*!40000 ALTER TABLE `commentary` DISABLE KEYS */;
/*!40000 ALTER TABLE `commentary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companions`
--

DROP TABLE IF EXISTS `companions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companions` (
  `companionid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `attack` int(6) unsigned NOT NULL DEFAULT 1,
  `attackperlevel` int(6) unsigned NOT NULL DEFAULT 0,
  `defense` int(6) unsigned NOT NULL DEFAULT 1,
  `defenseperlevel` int(6) unsigned NOT NULL DEFAULT 0,
  `maxhitpoints` int(6) unsigned NOT NULL DEFAULT 10,
  `maxhitpointsperlevel` int(6) unsigned NOT NULL DEFAULT 10,
  `abilities` text NOT NULL,
  `cannotdie` tinyint(4) NOT NULL DEFAULT 0,
  `cannotbehealed` tinyint(4) NOT NULL DEFAULT 1,
  `companionlocation` varchar(25) NOT NULL DEFAULT 'all',
  `companionactive` tinyint(25) NOT NULL DEFAULT 1,
  `companioncostdks` tinyint(4) NOT NULL DEFAULT 0,
  `companioncostgems` int(6) NOT NULL DEFAULT 0,
  `companioncostgold` int(10) NOT NULL DEFAULT 0,
  `jointext` text NOT NULL,
  `dyingtext` varchar(255) NOT NULL,
  `allowinshades` tinyint(4) NOT NULL DEFAULT 0,
  `allowinpvp` tinyint(4) NOT NULL DEFAULT 0,
  `allowintrain` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`companionid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companions`
--

LOCK TABLES `companions` WRITE;
/*!40000 ALTER TABLE `companions` DISABLE KEYS */;
INSERT INTO `companions` VALUES (1,'Mortimer teh javelin man','Knight','A rough and ready warrior.  Beneath his hardened exterior, one can detect a man of strong honour.',5,2,1,2,20,20,'a:4:{s:5:\"fight\";s:1:\"1\";s:4:\"heal\";s:1:\"0\";s:5:\"magic\";s:1:\"0\";s:6:\"defend\";b:0;}',0,0,'Degolburg',1,0,4,573,'`^Greetings unto thee, my friend.  Let us go forth and conquer the evils of this world together!','`4Argggggh!  I am slain!  Shuffling off my mortal coil.  Fare thee well, my friends.',1,0,0),(2,'Florenz','Healer','With a slight build, Florenz is better suited as a healer than a fighter.',1,1,5,5,15,10,'a:4:{s:4:\"heal\";s:1:\"2\";s:5:\"magic\";s:1:\"0\";s:5:\"fight\";b:0;s:6:\"defend\";b:0;}',0,0,'Degolburg',1,0,3,1000,'Thank ye for thy faith in my skills.  I shall endeavour to keep ye away from Ramius\' claws.','O Discordia!',1,0,0),(3,'Grizzly Bear','Wild Beasts','You look at the beast knowing that this Grizzly Bear will provide an effective block against attack with its long curved claws and massive body of silver-tipped fur.',1,2,5,2,25,25,'a:4:{s:5:\"fight\";s:1:\"0\";s:4:\"heal\";s:1:\"0\";s:5:\"magic\";s:1:\"0\";s:6:\"defend\";s:1:\"1\";}',0,0,'Qexelcrag',1,0,4,600,'You hear a low, deep belly growl coming from a shadowed corner of the Bestiarium.  Curious you walk over to investigate your purchase. As you approach a large form shuffles on all four legs towards the front of its hewn rock enclosure.`n`nThe hunched shoulders of the largest bear you have ever seen ripple as its front haunches push against the ground causing it to stand on its hind legs.  It makes another low growl before dropping back on all four legs to follow you on your adventure.','The grizzly gets scared by the multitude of blows and hits he has to take and flees into the forest.',1,0,0);
/*!40000 ALTER TABLE `companions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creatures`
--

DROP TABLE IF EXISTS `creatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creatures` (
  `creatureid` int(11) NOT NULL AUTO_INCREMENT,
  `creaturename` varchar(50) DEFAULT NULL,
  `creaturelevel` int(11) DEFAULT NULL,
  `creatureweapon` varchar(50) DEFAULT NULL,
  `creaturelose` varchar(120) DEFAULT NULL,
  `creaturewin` varchar(120) DEFAULT NULL,
  `creaturegold` int(11) DEFAULT NULL,
  `creatureexp` int(11) DEFAULT NULL,
  `creaturehealth` int(11) DEFAULT NULL,
  `creatureattack` int(11) DEFAULT NULL,
  `creaturedefense` int(11) DEFAULT NULL,
  `creatureaiscript` text DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `forest` tinyint(4) NOT NULL DEFAULT 0,
  `graveyard` tinyint(4) NOT NULL DEFAULT 0,
  `oldcreatureexp` int(11) DEFAULT NULL,
  PRIMARY KEY (`creatureid`),
  KEY `creaturelevel` (`creaturelevel`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creatures`
--

LOCK TABLES `creatures` WRITE;
/*!40000 ALTER TABLE `creatures` DISABLE KEYS */;
INSERT INTO `creatures` VALUES (1,'Thieving Kender',1,'Whirling Hoopak','You only wish you could pickpocket your money back from the thief.',NULL,36,14,10,1,1,NULL,'Appleshiner',1,0,NULL),(2,'Rude Student',1,'Worn Textbook','You have sent this student to permanent detention.','',36,14,10,1,1,'','Appleshiner',1,0,NULL),(3,'Baby Unicorn',1,'Blunt Horn','You feel like a real jerk killing something so pretty.','',36,14,10,1,1,'','Appleshiner',1,0,NULL),(4,'Small Purple Mouse',1,'Lashing pink tail','It is written in black and white: this strange technicolor mouse is no more.','',36,14,10,1,1,'','Appleshiner',1,0,NULL),(5,'Grunting Piggy',1,'Wiggly Snout','Mmm...Bacon',NULL,36,14,10,1,1,NULL,'Appleshiner',1,0,NULL),(6,'Dumb Old Eyesore',2,'Nagging complaints','All she ever did was nag...nag...nag...',NULL,97,24,21,3,3,NULL,'Appleshiner',1,0,NULL),(7,'Pygmy Marmoset',2,'Pieces of treebark','The strange little monkey falls from the trees and lies still.',NULL,97,24,21,3,3,NULL,'Appleshiner',1,0,NULL),(8,'Burly Man',15,'Amazing Absorbency','Fantasize, fantasize about Burly ...Eeeh, Eeeh, Eeeh!',NULL,531,189,155,29,21,NULL,'Bluspring',1,0,NULL),(9,'Screaming Banshee',2,'Hauntingly Beautiful Voice','You plunge your weapon into her breast, silencing her song.','',97,24,21,3,3,'','Appleshiner',1,1,NULL),(10,'Ursa Minor',2,'Twinkling Lights','After an astronomical battle, Ursa Minor is the one seeing stars',NULL,97,24,21,3,3,NULL,'Appleshiner',1,0,NULL),(11,'Stone Troll',2,'Gaping  Maw','That troll is stone cold ugly.',NULL,97,24,21,3,3,NULL,'Appleshiner',1,0,NULL),(12,'Slithering Asp',2,'Hypnotic eyes','You break the deadly gaze of the snake to save your own life.','',97,24,21,3,3,'','Appleshiner',1,0,NULL),(13,'Windan The Barbarian',2,'Feathered Spear','He really was just a feather-weight',NULL,97,24,21,3,3,NULL,'Appleshiner',1,0,NULL),(14,'Studious Young Sorceror',2,'Newly memorized spells','Perhaps she should have studied harder.','',97,24,21,3,3,'','Appleshiner',1,0,NULL),(15,'Four and Twenty Blackbirds',3,'Freshly Baked Pies','Now isn\'t this a dainty dish to set before a king?',NULL,148,34,32,5,4,NULL,'Appleshiner',1,0,NULL),(16,'Amazon',3,'Bow and Arrow','The beautiful warrior lass has lost a battle for the first time.',NULL,148,34,32,5,4,NULL,'Appleshiner',1,0,NULL),(17,'Overbearing Mother',3,'9pm Curfew','With one fell swoop you save your social life!','',148,34,32,5,4,'','Appleshiner',1,0,NULL),(18,'Huge Bald Programmer',3,'Shining Forehead','You feel as if you have seen this man before in the village.','',148,34,32,5,4,'','Appleshiner',1,0,NULL),(19,'Someone\'s Grandfather',3,'Stories that go nowhere','This reminds you of the time you needed a new heel for your shoe.','',148,34,32,5,4,'','Appleshiner',1,0,NULL),(20,'Juvenile Delinquent',3,'Poor Attitude','With a satisfying thump, you knock the smirk right off his face.','',148,34,32,5,4,'','Appleshiner',1,0,NULL),(21,'Beautiful Woodland Sprite',3,'Kindness and tranquility','You really cut that wood sprite down to size.','',148,34,32,5,4,'','Appleshiner',1,0,NULL),(22,'Society Belle',3,'Southern Charm','Now she will never be on time for the ball!',NULL,148,34,32,5,4,NULL,'Appleshiner',1,0,NULL),(23,'Giant Goldfish Cracker',3,'Annoying Commercial Jingles','Now *there* is a fish that smiled till you bit his head off.',NULL,148,34,32,5,4,NULL,'Appleshiner',1,0,NULL),(24,'Angry Mob',4,'Torches','There is no justice for an angry mob.','',162,45,43,7,6,'','Appleshiner',1,0,NULL),(25,'Polar Bear',4,'Terrible claws','That bear really needed an attitude adjustment.','',162,45,43,7,6,'','Appleshiner',1,0,NULL),(26,'Decaying Skeleton',4,'Rusty Sword','His leg ought to make a good toy for your dog.',NULL,162,45,43,7,6,NULL,'Appleshiner',1,1,NULL),(27,'Willie the Wonder Hampster',4,'Nuclear Sunflower Seeds','You smile a grim smile at Willie and quietly munch on some seeds.','',162,45,43,7,6,'','Appleshiner',1,0,NULL),(28,'Winged Demon Of Death',4,'Red Glare','You cut off the Demon\'s head, to be sure of its death.',NULL,162,45,43,7,6,NULL,'foilwench',1,1,NULL),(29,'Small Dragon',4,'Hot air','For one moment you thought THIS was the Green Dragon, but alas not.',NULL,162,45,43,7,6,NULL,'Appleshiner',1,0,NULL),(30,'Monstrous Dustbunny',4,'Sneezing fits','You sweep the poor bunny under the rug when no one is looking.','',162,45,43,7,6,'','Appleshiner',1,0,NULL),(31,'Small Rabbit',4,'Sharp Pointy Teeth','To think you almost ran away!',NULL,162,45,43,7,6,NULL,'Appleshiner',1,0,NULL),(32,'Mature Unicorn',5,'Powerful Horn','A unicorn is a thing of beauty, even in death.','',198,55,53,9,7,'','Appleshiner',1,0,NULL),(33,'Gnome Necromancer',5,'Skeleton Familiar','Once you killed its familiar that Gnome was really weak.',NULL,198,55,53,9,7,NULL,'Appleshiner',1,1,NULL),(34,'Purple Dinosaur',5,'Helpful Nature','There seems to be a person inside that strange dino.  You wonder why.',NULL,198,55,53,9,7,NULL,'Appleshiner',1,0,NULL),(35,'Orc Emmisary',5,'Diplomacy','You never were the diplomatic type.',NULL,198,55,53,9,7,NULL,'Appleshiner',1,0,NULL),(36,'Dark Spiritling',5,'Dark Magic','The spiritling gasps a final breath as you end its pitiful life.','',198,55,53,9,7,'','Appleshiner',1,1,NULL),(37,'Enchanted Toilet',5,'Ninja Flushing Action','That was just weird.','',198,55,53,9,7,'','Appleshiner',1,0,NULL),(38,'Giant Water Elemental',5,'Torrential Downpours','The giant creature is reduced a meager spring shower.','',198,55,53,9,7,'','Appleshiner',1,0,NULL),(39,'Violins',5,'Off-Key notes','Won\'t someone PLEASE stop the violins?',NULL,198,55,53,9,7,NULL,'Appleshiner',1,0,NULL),(40,'Whirled Peas',5,'Green Slime','We should all pray for whirled peas.',NULL,198,55,53,9,7,NULL,'Appleshiner',1,0,NULL),(41,'Magic Mushroom',6,'Swirling Colors','Guess you don\'t need to go ask Alice now.','',234,66,64,11,8,'','Appleshiner',1,0,NULL),(42,'Invisible Man',6,'Something Invisible and Sharp','You really aren\'t sure if it is dead, or just hiding...after all it is invisible.','',234,66,64,11,8,'','Appleshiner',1,0,NULL),(43,'Clown of Death',6,'Balloon Animals from Beyond','You give the clown\'s nose a honk just for fun before you leave.','',234,66,64,11,8,'','Appleshiner',1,1,NULL),(44,'Heart of Stone',6,'Unromantic Thoughts','Aww, now look, you broke its heart!',NULL,234,66,64,11,8,NULL,'Appleshiner',1,0,NULL),(45,'Troll Warrior',6,'Steel Broadsword','Wow, he smelled bad enough alive, can you imagine how he\'ll smell tomorrow?',NULL,234,66,64,11,8,NULL,'Appleshiner',1,0,NULL),(46,'Bettie the Amazing Kung-Fu Butterfly',6,'Stupendous Kung-Fu Wings','You survived a battle to the death with a butterfly.  You must be so proud.',NULL,234,66,64,11,8,NULL,'Appleshiner',1,0,NULL),(47,'Golden Goose',6,'14 Karat Gold Eggs','You have slain the goose but it is too heavy to take back to town.  All that wealth wasted.',NULL,234,66,64,11,8,NULL,'Appleshiner',1,0,NULL),(48,'Black Tiger',6,'Claws','You ponder the tiger\'s body thinking what a good rug it might make.','',234,66,64,11,8,'','Appleshiner',1,0,NULL),(49,'Lambert the Sheepish Lion',6,'Timid Growling','You marched in like a lion and he died like a lamb.','',234,66,64,11,8,'','Appleshiner',1,0,NULL),(50,'Marsha of the Jungle',7,'Trained Monkeys','Poor Marsha, she thought those monkeys were better trained.','',268,77,74,13,10,'','Appleshiner',1,0,NULL),(51,'Moe',7,'Two Knives','Maybe those knives weren\'t so great.','',268,77,74,13,10,'','Appleshiner',1,0,NULL),(52,'Coffin',7,'Terrifying Premonitions','Best way to get rid of the coffin is Robitussin.',NULL,268,77,74,13,10,NULL,'Appleshiner',1,1,NULL),(53,'Green Alligator',7,'Crushing Jaws','Crikey!  That thing could have killed you!',NULL,268,77,74,13,10,NULL,'foilwench',1,0,NULL),(54,'Lindsey, Daughter of Erin the Ninja Squirrel',7,'A Peanut Shooter','All these squirrels are nuts.','',268,77,74,13,10,'','Appleshiner',1,0,NULL),(55,'Wizarding School Senior Student',7,'Memory Charm','Drat!  He took your memory before you killed him.  Who are you anyway?',NULL,268,77,74,13,10,NULL,'Appleshiner',1,0,NULL),(56,'Enchanted Laundry Basket',7,'Stinky Socks of Terror','So that\'s what happens to lost socks!',NULL,268,77,74,13,10,NULL,'Appleshiner',1,0,NULL),(57,'Carrot Top',7,'Phone Company Slogans','That has got to be the most satisfying kill you ever made.',NULL,268,77,74,13,10,NULL,'Appleshiner',1,0,NULL),(58,'Macintosh Computer',7,'Amazingly Bright Colors','So THAT\'S what happens when you right-click a Mac.',NULL,268,77,74,13,10,NULL,'Appleshiner',1,0,NULL),(59,'Interior Designer',8,'Color-coordinating Sword and Shield','You didn\'t like his style.','',302,89,84,15,11,'','Appleshiner',1,0,NULL),(60,'Daughter of the Devil',8,'Sinfully Good Looks','She is the girl your mom always warned you about.',NULL,302,89,84,15,11,NULL,'Appleshiner',1,1,NULL),(61,'Wild Horses',8,'Dragging','I guess the saying is true, wild horses can\'t drag you away.','',302,89,84,15,11,'','Appleshiner',1,0,NULL),(62,'Steam Elemental',8,'Scalding jets of air','There was just enough steam left to make an espresso.','',302,89,84,15,11,'','foilwench',1,0,NULL),(63,'Gordon the Cheese Eater',8,'Odiferous Nature','You sure cut that cheese....eater.','',302,89,84,15,11,'','Appleshiner',1,0,NULL),(64,'Narcoleptic',8,'Drowsiness','This narcoleptic won\'t be waking up anytime soon.','',302,89,84,15,11,'','Appleshiner',1,0,NULL),(65,'Swarm of Bees',8,'Stinging','You feel like a pincushion, but you are alive.','',302,89,84,15,11,'','Appleshiner',1,0,NULL),(66,'Halfling Mage',8,'Painful Spells','That fight wasn\'t half as difficult as you thought it would be.','',302,89,84,15,11,'','Appleshiner',1,0,NULL),(67,'Citizen of Eythgim Village',9,'Slurs','Geeze, what did you ever do to him?',NULL,336,101,94,17,13,NULL,'Appleshiner',1,0,NULL),(68,'Old Hag',9,'Red Red Rose','It is her turn to sleep an enchanted sleep.','',336,101,94,17,13,'','Appleshiner',1,0,NULL),(69,'Charging Buffalo',9,'Stampeding Hoofs','Do you know how to stop a charging buffalo?  Take away his credit card!',NULL,336,101,94,17,13,NULL,'Appleshiner',1,0,NULL),(70,'Pawn',9,'Simple Tactics','Well, that was a bad move.','',336,101,94,17,13,'','Appleshiner',1,0,NULL),(71,'Romulan',9,'Wrong-Genre Confusion','You think to yourself they look tougher on TV.','',336,101,94,17,13,'','Appleshiner',1,0,NULL),(72,'Large Griffon',9,'Beak and Claws','The mythical creature is no more.','',336,101,94,17,13,'','Appleshiner',1,0,NULL),(73,'Cliche Bond Movie Villain',9,'Cell-phone of Death','Well, really, who throws a cell phone?  I mean, that really, really hurt!','',336,101,94,17,13,'','Appleshiner',1,0,NULL),(74,'Fuzzy Ferret',9,'Disarming Cuteness','Who knew ferrets were so violent!',NULL,336,101,94,17,13,NULL,'Appleshiner',1,0,NULL),(75,'Starving Artist',9,'Pointy Paintbrushes','This guy really painted himself into a corner.','',336,101,94,17,13,'','Appleshiner',1,0,NULL),(76,'Guard from Eythgim Village',10,'Rapier','The people from that village seem angry!',NULL,369,114,105,19,14,NULL,'Appleshiner',1,0,NULL),(77,'Garden Gnome',10,'Painful Tackiness','Stupid garden gnomes. What are they doing in the forest anyway?','',369,114,105,19,14,'','Appleshiner',1,0,NULL),(78,'Chicken',10,'Squawking','Good fortune smiles upon you - you will eat well tonight.','',369,114,105,19,14,'','foilwench',1,0,NULL),(79,'Marksman',10,'Deadly Aim','He took so long to aim, you just walked up and kicked him.','',369,114,105,19,14,'','Appleshiner',1,0,NULL),(80,'Enchanted Tissue Box',10,'Cold Germs','You pick up the box and put it in your pocket.  You never know when a tissue might come in handy.','',369,114,105,19,14,'','Appleshiner',1,0,NULL),(81,'Ghostly Woodsman',10,'Phantom Axe','You aren\'t sure how you did it, but you killed something that was already dead.  Good for you.',NULL,369,114,105,19,14,NULL,'Appleshiner',1,1,NULL),(82,'Zombie',10,'Rotting Flesh','He really went to pieces, didn\'t he?',NULL,369,114,105,19,14,NULL,'foilwench',1,0,NULL),(83,'Fortula the Plains Cat',10,'Claws and Teeth','That plains cat is now plain dead.','',369,114,105,19,14,'','Appleshiner',1,0,NULL),(84,'Erin the Ninja Squirrel',10,'Acorn Tossing Madness','That squirrel was a little crazy.','',369,114,105,19,14,'','Appleshiner',1,0,NULL),(85,'Bluebird of Happiness',11,'Uplifting Melody','Happiness is over-rated anyway.','',402,127,115,21,15,'','Appleshiner',1,0,NULL),(86,'Potato Newscaster',11,'Personal Opinions','It\'s ok, he was just a common \'tater.','',402,127,115,21,15,'','Appleshiner',1,0,NULL),(87,'Pygmy Dragon',11,'Fire Breath','You hope he wasn\'t a relative of the Green Dragon.','',402,127,115,21,15,'','Appleshiner',1,0,NULL),(88,'Zealous Photographer',11,'Flashing Lights','The things beautiful people have to put up with.',NULL,402,127,115,21,15,NULL,'Appleshiner',1,0,NULL),(89,'Gary Larson',11,'Strange Cartoons','You still don\'t get it.',NULL,402,127,115,21,15,NULL,'Appleshiner',1,0,NULL),(90,'Soldier from Eythgim Village',11,'Battle Cry','Eythgim seems to be waging a personal war with you.','',402,127,115,21,15,'','Appleshiner',1,0,NULL),(91,'80\'s Glam Rocker',11,'Blinding Makeup','You know your motto, Live and let die.',NULL,402,127,115,21,15,NULL,'Appleshiner',1,0,NULL),(92,'Vigilante',11,'Sack of Doorknobs','This carnage disgusts you.','',402,127,115,21,15,'','Appleshiner',1,0,NULL),(93,'The Devil',11,'Eternal Damnation','For being the Devil, he really wasn\'t so hot.',NULL,402,127,115,21,15,NULL,'Appleshiner',1,1,NULL),(94,'Mercenary',12,'Blood-chilling Stare','You could use an ale.','',435,141,125,23,17,'','Appleshiner',1,0,NULL),(95,'Magic Mirror',12,'Flattering Remarks','Mirror, Mirror, on the Ground, it is your death that you have found.',NULL,435,141,125,23,17,NULL,'Appleshiner',1,0,NULL),(96,'Broadway Extra',12,'Memorable Showtunes','This extra is really on her own now.','',435,141,125,23,17,'','Appleshiner',1,0,NULL),(97,'Butter the Sprite',12,'Magic Pixie Dust','Butter?  What kind of a name is Butter?',NULL,435,141,125,23,17,NULL,'Appleshiner',1,0,NULL),(98,'Father Time',12,'Old Age','Your victory is not comforting. You know he will still catch up to you.','',435,141,125,23,17,'','Appleshiner',1,0,NULL),(99,'Eythgim Village Archers',12,'Flaming Arrows','The tree is  burning, you\'d better try to put it out.',NULL,435,141,125,23,17,NULL,'foilwench',1,0,NULL),(100,'Animate Stormcloud',12,'Lightning','The storm is no more. You can see the light of day peeking through the last of the clouds.','',435,141,125,23,17,'','Appleshiner',1,0,NULL),(101,'Three Toed Sloth',12,'Slow Responses','Your swift moves were too fast for this sloth.','',435,141,125,23,17,'','Appleshiner',1,0,NULL),(102,'Death',12,'Cold Grasp','There it is!  Death!!!!!',NULL,435,141,125,23,17,NULL,'Appleshiner',1,1,NULL),(103,'Cerberus',13,'Three Drooling Maws','Each one\'s breath was worse than the last.','',467,156,135,25,18,'','Appleshiner',1,1,NULL),(104,'Man from deep, deep, dark, dark, deep, dark woods',13,'Snarling and Biting','The creature from the deep, deep, dark, dark, deep, dark woods is finally dead.','',467,156,135,25,18,'','Appleshiner',1,0,NULL),(105,'Devil in a Blue Dress',13,'Alluring Promises','You really prefer black dresses anyway.','',467,156,135,25,18,'','Appleshiner',1,1,NULL),(106,'Giant',13,'Smashing Club','Geeze, he almost fell on you!',NULL,467,156,135,25,18,NULL,'Appleshiner',1,0,NULL),(107,'Commander of the Eythgim Army',13,'Winning Tactics','You have bested their army by killing its master.',NULL,467,156,135,25,18,NULL,'Appleshiner',1,0,NULL),(108,'Ice Dragon',13,'Frost Breath','You defeated him, but caught a cold.',NULL,467,156,135,25,18,NULL,'Appleshiner',1,0,NULL),(109,'Pushmi Pullyew',13,'Conflictory Arguments','That strange creature couldn\'t tell if it was coming or going.',NULL,467,156,135,25,18,NULL,'Appleshiner',1,0,NULL),(110,'Whale',13,'Tail','You know Violet isn\'t going to believe a Whale attacked you in the forest.','',467,156,135,25,18,'','Appleshiner',1,0,NULL),(111,'Gorma The Leper',13,'Contagious Disease','It looks like the leper\'s fighting strategy has fallen apart...',NULL,467,156,135,25,18,NULL,'foilwench',1,0,NULL),(112,'Samurai Master',14,'Daisho','You bow to the fallen master before you walk away.','',499,172,145,27,20,'','Appleshiner',1,0,NULL),(113,'Bartender',14,'Duck','That\'s not a Duck!  It\'s a Chicken!',NULL,499,172,145,27,20,NULL,'Appleshiner',1,0,NULL),(114,'Prince of Eythgim Village',14,'Bribes of Gold','You are not easily bribed, and he was a mortal enemy.','',499,172,145,27,20,'','Appleshiner',1,0,NULL),(115,'Loch Ness Monster',14,'Shocking Appearance','Why in the world would that monster be in this forest.  You must have been dreaming!','',499,172,145,27,20,'','Appleshiner',1,0,NULL),(116,'Fuzzie Wuzzie',14,'Male Pattern Baldness','Fuzzie Wuzzie wasn\'t very fuzzie, was he?',NULL,499,172,145,27,20,NULL,'Appleshiner',1,0,NULL),(117,'Princess of Eythgim Village',15,'Beguiling Words','She tried to tempt you, but you resisted.',NULL,531,189,155,29,21,NULL,'Appleshiner',1,0,NULL),(118,'Ugly Harpy',14,'Poisonous Breath','Her breath was worse than her bite.','',499,172,145,27,20,'','Appleshiner',1,1,NULL),(119,'Field Mouse',14,'Chewing','That was some powerful mouse!',NULL,499,172,145,27,20,NULL,'Appleshiner',1,0,NULL),(120,'Monarch of Eythgim Village',16,'Royal Commands','I guess this makes you king of their Village.',NULL,563,207,166,31,22,NULL,'Appleshiner',1,0,NULL),(121,'Cyclops Warrior',15,'Fire Eye','The dead Cyclops\' one eye stares at you blankly.',NULL,531,189,155,29,21,NULL,'foilwench',1,0,NULL),(122,'Cupid',15,'Pink Arrows of Love','You have slain Cupid. You shall never find true love.','',531,189,155,29,21,'','Appleshiner',1,0,NULL),(123,'Tabloid Writer',15,'Far-fetched Stories','If you ask me, SHE was the six-armed alien who gave birth to the world\'s largest infant Elvis impersonator.','',531,189,155,29,21,'','Appleshiner',1,0,NULL),(124,'Evil Wizard',15,'Tormented Souls','You have set the tortured souls free.','',531,189,155,29,21,'','Appleshiner',1,0,NULL),(125,'Artemis, Goddess of the Hunt',15,'Winged Stags','The moon itself shall weep for the slain Artemis.','',531,189,155,29,21,'','Appleshiner',1,0,NULL),(126,'Centaur Archer',15,'Deadly Marksmanship','The twisted man-beast lies still.','',531,189,155,29,21,'','Appleshiner',1,0,NULL),(127,'Mime',15,'Something Imaginary','His death is a rather sad charade.','',531,189,155,29,21,'','Appleshiner',1,0,NULL),(128,'Chili Chef',15,'Insanity Peppers','Man, that\'s good chili!','',531,189,155,29,21,'','Appleshiner',1,0,NULL),(129,'Brownie',16,'Miniscule weapons','The tiny warrior dies with a faint squeal.','',563,207,166,31,22,'','Appleshiner',1,0,NULL),(130,'Darkness',16,'Self-induced Terror','You are afraid of the dark no longer.','',563,207,166,31,22,'','Appleshiner',1,1,NULL),(131,'Mountain King',16,'God-like Fury','The King has died, long live the King!','',563,207,166,31,22,'','Appleshiner',1,0,NULL),(134,'Loneliness',17,'Silence','What is the sound of one hand clapping?','What is the sound of one hand clapping?',36,0,1,0,0,NULL,NULL,1,0,NULL),(135,'Loneliness',18,'Silence','What is the sound of one hand clapping?','What is the sound of one hand clapping?',0,0,1,0,25,NULL,NULL,1,0,NULL),(136,'Le Chat dans le chapeau',15,'Rhyming Nonsense','In spanish, El Gato en el sombrero.','',531,189,155,29,21,'','Appleshiner',1,0,NULL),(138,'Whopper With Cheese',8,'Abundant Cholesterol','This is one whopper that won\'t show up on your hips tomorrow.',NULL,302,89,84,15,11,NULL,'foilwench',1,0,NULL),(139,'Swarming Ladybugs',3,'Stinking Residue','Those Ladybugs weren\'t very ladylike.',NULL,148,34,32,5,4,NULL,'foilwench',1,0,NULL),(140,'Football Fan',6,'Raucous Cheers','This fan doesn\'t have much to cheer about.',NULL,234,66,64,11,8,NULL,'foilwench',1,0,NULL),(141,'King Agrippa',13,'Flaming Wingnuts','As you stare at his smoking corpse, you marvel at the ineffectiveness of flaming wingnuts.',NULL,467,156,135,25,18,NULL,'foilwench',1,0,NULL),(142,'Cherubically Charming Child',1,'Curious Questions','You think it was the alliteration that did him in.',NULL,36,14,10,1,1,NULL,'foilwench',1,0,NULL),(143,'Haberdasher',5,'Heavy Hat','Hats have gone out of style anyway.',NULL,198,55,53,9,7,NULL,'foilwench',1,0,NULL),(144,'Rush Hour Driver',11,'Road Rage','It was a no-win situation, speeding on these forest paths.  The driver had it coming.',NULL,402,127,115,21,15,NULL,'foilwench',1,0,NULL),(145,'Sorority Girl in Nightie',7,'Pillow Fighting Action','It\'s too bad she\'s dead... you liked her action.','',268,77,74,13,10,'','foilwench',1,0,NULL),(146,'Ulysses Wulfgang',14,'Ridiculous Lies','Death to lies!  Death to Ulysses Wulfgang!','',499,172,145,27,20,'','Joe',1,0,NULL),(147,'Crazy Audrey',9,'Ravenous Kittens','With a well placed stomp, Audrey and the kittens are no more.',NULL,336,101,94,17,13,NULL,'Appleshiner',1,0,NULL),(148,'Shining Happy People',5,'Hand Holding Terror','They just wanted to be your friend.  You meanie.',NULL,198,55,53,9,7,NULL,'foilwench',1,0,NULL),(149,'Elsabutt',8,'Gravitational Pull','This is indeed a grave situation.','',302,89,84,15,11,'','foilwench',1,0,NULL),(150,'Mr. Bear',2,'Overwhelming Sleepiness','Mr. Bear was too tired to finish playing with you and went back to napping.','',97,24,21,3,3,'','foilwench',1,0,NULL),(151,'Everquest Junkie',12,'1337 Sp34k','D00d U pwned that guy!',NULL,435,141,125,23,17,NULL,'foilwench',1,0,NULL),(152,'Little Cocobean',4,'Her Special Roast','She really made your heart race and pound, but now she has crumbled to the ground',NULL,162,45,43,7,6,NULL,'Appleshiner',1,0,NULL),(153,'Humongous Hairball',5,'Incredible Drain-Clogging Power','The hairball and all its accompanying gook have been washed out to sea!',NULL,198,55,53,9,7,NULL,'foilwench',1,0,NULL),(154,'Iron Chef',4,'Sizzling Eel Flambe!','You have rendered the Chef Ironless!  He\'s now simply a copper/tin alloy!',NULL,162,45,43,7,6,NULL,'foilwench',1,0,NULL),(155,'The Government',7,'Taxes','That\'s a tax return you\'ll be taking to the bank!',NULL,268,77,74,13,10,NULL,'Bluspring',1,0,NULL),(156,'Bar Fly',1,'Alcoholism','Good thing you got him before cirrhosis did!',NULL,36,14,10,1,1,NULL,'Bluspring',1,0,NULL),(157,'Methane Man',7,'Unfriendly Gasses','Must have been that bean he ate!',NULL,268,77,74,13,10,NULL,'foilwench',1,0,NULL),(158,'Wooly Mammoth',8,'Wildebeest Sidekick','You climb atop the Mammoth\'s remains and declare yourself king (or queen) for a day!',NULL,302,89,84,15,11,NULL,'foilwench',1,0,NULL),(159,'Nasty Nevin',10,'Bossy Mom','Wrecked\'em?  Darn near killed \'em!',NULL,369,114,105,19,14,NULL,'Joe',1,0,NULL),(160,'The Gar Man',3,'Jar of Cotton Balls','There is but one Gar Man!  And now he\'s just fluff!','',148,34,32,5,4,'','foilwench',1,0,NULL),(161,'Hiker',1,'Walking Stick','His last words were \"...I must protect the dragon.\"','',36,14,10,1,1,'','Appleshiner',1,0,NULL),(162,'Camper',2,'Marshmallow-roasting Stick','With her dying breath she gasps \"...and I never saw the dragon.\"',NULL,97,24,21,3,3,NULL,'Appleshiner',1,0,NULL),(163,'Forest Ranger',3,'Hunting Rifle','In his pack you find a copy of \"Dragon Seeking for Dummies.\"','',148,34,32,5,4,'','Appleshiner',1,0,NULL),(164,'Tree-Hugger',4,'Propaganda Leaflets','The leaflet reads \"Who Will Protect The Helpless Dragon?\"','',162,45,43,7,6,'','Appleshiner',1,0,NULL),(165,'Forest Dwelling Hermit',5,'Hand-Made Sling','He speaks only these words as he dies: \"You must leave the Dragon\'s Forest.\"',NULL,198,55,53,9,7,NULL,'Appleshiner',1,0,NULL),(166,'Member of Dragon Lovers Anonymous',6,'Stuffed Dragon Toy','When one wears a pin saying \"Dragon Lovers Anonymous\" they really are not as anonymous as they might think.','',234,66,64,11,8,'','Appleshiner',1,0,NULL),(167,'Initiate Dragon Watcher',7,'Binoculars','All he could say was \"Shhh, you are scaring the dragons!\"',NULL,268,77,74,13,10,NULL,'Appleshiner',1,0,NULL),(168,'Dragon Watcher, Junior Class',8,'Annoyance','You find a dragon-watching textbook in his backpack.',NULL,302,89,84,15,11,NULL,'Appleshiner',1,0,NULL),(169,'Dragon-watcher Senior Class',9,'Spelunking Equipment','You find a copy of \"Cave-Dwelling Dragons, and Where to Find Them\" in his pack.','',336,101,94,17,13,'','Appleshiner',1,0,NULL),(170,'Master Dragon Watcher',10,'Stealth','You wonder who watches the watchers.','',369,114,105,19,14,'','Appleshiner',1,0,NULL),(171,'Initiate Dragon Tamer',11,'10-foot dragon pole','Good thing for you that pole only works on 10-foot dragons!',NULL,402,127,115,21,15,NULL,'Appleshiner',1,0,NULL),(172,'Junior Dragon Tamer',12,'Large Whip','If he cannot tell the difference between you and a dragon, he has much work to do.','',435,141,125,23,17,'','Appleshiner',1,0,NULL),(173,'Senior Dragon Tamer',13,'Very Large Hoop','You regret killing him. You wanted to see him make a dragon jump through that hoop.','',467,156,135,25,18,'','Appleshiner',1,0,NULL),(174,'Master Dragon Tamer',14,'Tame Dragon','Once you killed the master, the dragon ran away',NULL,499,172,145,27,20,NULL,'Appleshiner',1,0,NULL),(175,'Dragon Rider in Training',15,'Mechanical Bull','They learn to ride dragons using a mechanical bull?',NULL,531,189,155,29,21,NULL,'Appleshiner',1,0,NULL),(176,'Dragon Rider',16,'Flying Dragon','A well-aimed strike grounds the flying dragon and his rider.','',563,207,166,31,22,'','Appleshiner',1,0,NULL),(177,'Batling',1,'Tiny flapping wings','Silly batling!','',36,14,10,1,1,'','Appleshiner',1,1,NULL),(178,'Small Bat',2,'Slightly venomous fangs','The small mammal falls to the ground lifeless.','',97,24,21,3,3,'','Appleshiner',1,1,NULL),(179,'Medium Sized Bat',3,'Screeching Cries','You killed it just to shut it up.',NULL,148,34,32,5,4,NULL,'Appleshiner',1,1,NULL),(180,'Large Bat',4,'Guano','You feel the need to take a bath.','',162,45,43,7,6,'','Appleshiner',1,1,NULL),(181,'Giant Bat',5,'Clinging and Biting','Why do movie bats always fly at people\'s hair?',NULL,198,55,53,9,7,NULL,'Appleshiner',1,1,NULL),(182,'Vampire Batling',6,'Pricking teeth','He resembled a mosquito more than a vampire bat.','',234,66,64,11,8,'','Appleshiner',1,1,NULL),(183,'Small Vampire Bat',7,'Deadly Fangs','You kick at the annoying pest as it lies on the ground.','',268,77,74,13,10,'','Appleshiner',1,1,NULL),(184,'Medium Sized Vampire Bat',8,'Echoing Sounds','Who decides that this bat is a \"Medium\"?  Maybe he is a giant bat who hasn\'t bloomed yet.',NULL,302,89,84,15,11,NULL,'Appleshiner',1,1,NULL),(185,'Huge Vampire Bat',9,'Blood-Sucking','You gave more blood to the Red Cross.','',336,101,94,17,13,'','Appleshiner',1,1,NULL),(186,'Vampire in Bat Form',10,'Bad Romanian Accent','\"I vant to suk your blooood!\"',NULL,369,114,105,19,14,NULL,'Appleshiner',1,1,NULL),(187,'Vampire-Bat Prince',11,'Death Grip','You thought bats were Republicans.','',402,127,115,21,15,'','Appleshiner',1,1,NULL),(188,'Vampire Bat King',12,'Red Eyes','You decide to leave before the rest of the bats come to find their king.','',435,141,125,23,17,'','Appleshiner',1,1,NULL),(189,'Sorcerous Vampire',13,'Petrifying Spells','A cold shiver goes down your spine.  You would rather be with Violet.','',467,156,135,25,18,'','Appleshiner',1,1,NULL),(219,'Seductive Vampiress',14,'Sultry Moves','It was a shame to kill her.',NULL,499,172,145,27,20,NULL,'Appleshiner',1,1,NULL),(220,'Frenzied vampire bats',15,'Numerous attacks','Why are there so many darn bats in this forest?',NULL,531,189,155,29,21,NULL,'Appleshiner',1,1,NULL),(221,'Vampirus,the Bat God',16,'Godly Power','You are even more god-like then he!','',563,207,166,31,22,'','Appleshiner',1,1,NULL),(222,'Old Man Winter',9,'Bitter Cold','You shake your fist over his dead, pathetic corpse.',NULL,336,101,94,17,13,NULL,NULL,1,0,NULL),(223,'Deranged Gnome',1,'A Cloth Draped Mirror','What happens when I do THIS?',NULL,36,14,10,1,1,NULL,NULL,1,0,NULL),(224,'Water Sprite',1,'Burst of Water','That was refreshing.',NULL,36,14,10,1,1,NULL,NULL,1,0,NULL),(225,'Water Nymph',3,'A torrent of water','I didn\'t need a bath, thank you.',NULL,148,34,32,5,4,NULL,NULL,1,0,NULL),(226,'Lady of the Lake',10,'Excalibur','Take that, you watery tart!',NULL,369,114,105,19,14,NULL,NULL,1,0,NULL),(227,'Cunning Sapling',1,'Arrrr!','Ah Ha! A toothpick!',NULL,36,14,10,1,1,NULL,NULL,1,0,NULL),(228,'Pirate Tree',5,'A loud ARRRRR!','Arrrrrr! indeed.',NULL,198,55,53,9,7,NULL,NULL,1,0,NULL),(229,'Undead Centurion',5,'Bronze Spear','Hmm Not too good at combat the second time around, either.',NULL,198,55,53,9,7,NULL,NULL,1,1,NULL),(230,'Insane Bard',2,'Iambic Pentameter','Slings and Arrows of outrageous fortune? Nope.  Just the can o\' Whoopass.',NULL,97,24,21,3,3,NULL,NULL,1,0,NULL),(231,'Twig Man',1,'Brambles and Briars','I snapped him like a.. well, twig.',NULL,36,14,10,1,1,NULL,'Hank',1,0,NULL),(232,'Rabid Mouse',1,'Little Bitty Teeth','Those little teeth HURT!',NULL,36,14,10,1,1,NULL,'Hank',1,0,NULL),(233,'Stray Cat',1,'A Midnight Serenade','Finally! Peace in the night!',NULL,36,14,10,1,1,NULL,'Hank',1,0,NULL),(234,'Big Hairy Spider',1,'Sticky stringy webs','I *HATE* spiders!',NULL,36,14,10,1,1,NULL,'Hank',1,0,NULL),(235,'Goblin Lackey',1,'Dull Knife','Who knew goblins had lackeys?',NULL,36,14,10,1,1,NULL,'Hank',1,0,NULL),(236,'Crazy Chihuahua',1,'Fast food cravings','Here taco, taco, taco.','',36,14,10,1,1,'','Hank',1,0,NULL),(237,'Looney Rabbit',1,'Wisecracks','Th- Th- That\'s all folks!',NULL,36,14,10,1,1,NULL,'Hank',1,0,NULL),(238,'Undead Oarsman',1,'Rotten Oar','Funny... I didn\'t see any water around here.','',36,14,10,1,1,'','Hank',1,1,NULL),(239,'Lost Ghostling',2,'Sad Weeping','Well, I\'m sure that helped him on his way...','',97,24,21,3,3,'','Hank',1,0,NULL),(240,'Angry Titmouse',2,'Incessant Chattering','You swat the little bird out of the air with little effort.','',97,24,21,3,3,'','Hank',1,0,NULL),(241,'Fabianist Youth Member',2,'Marxist Doctrine','Socialize THAT.',NULL,97,24,21,3,3,NULL,'Hank',1,0,NULL),(242,'Little Bogeyman',2,'Noises in the Dark','Hmm, not so scary when you have grown up...','',97,24,21,3,3,'','Hank',1,0,NULL),(243,'Big Bogeyman',3,'Fingers poking you as you sleep.','Ok... that was weird.  But not scary... Nope not at all... I think I\'ll leave the light on at the inn tonight though.','',148,34,32,5,4,'','Hank',1,0,NULL),(244,'Coblynau',2,'Ill tempered tricks','Maybe I better leave him part of my lunch next time.','',97,24,21,3,3,'','Hank',1,0,NULL),(245,'Jack O\'Lantern',2,'Eternal Wandering','The light has gone out of his life.',NULL,97,24,21,3,3,NULL,'Hank',1,0,NULL),(246,'Fresh Ghoul',2,'Long Pointed Nails','You leave him to the mercies of the other ghouls.','',97,24,21,3,3,'','Hank',1,1,NULL),(247,'Dry Skeleton',2,'a Rusty Dagger','The skeleton crumbles into a pile of dust.',NULL,97,24,21,3,3,NULL,'Hank',1,1,NULL),(248,'Newly Dead Zombie',2,'Fists','Maybe now it can rest in peace.',NULL,97,24,21,3,3,NULL,'Hank',1,1,NULL),(249,'Faerie hound',2,'Glowing Eyes','The embers in the eye sockets dim and sputter out.',NULL,97,24,21,3,3,NULL,'Hank',1,1,NULL),(250,'Apprentice Necromancer',3,'Life Draining Spells','He gasps a final breath and melts into a tarry liquid.',NULL,148,34,32,5,4,NULL,'Hank',1,0,NULL),(251,'Doppleganger',3,'Shape changing','You kill the doppleganger and he returns to his true form.',NULL,148,34,32,5,4,NULL,'Hank',1,0,NULL),(252,'Forest Thief',3,'Poisoned Short Sword','His pockets were almost empty. I guess he wasn\'t much of a thief.','',148,34,32,5,4,'','Hank',1,0,NULL),(253,'Mouldy Skeleton',3,'Rotten Fists','Heeeeey, didn\'t you see him in town last week?',NULL,148,34,32,5,4,NULL,'Hank',1,1,NULL),(254,'Angry Fairy',3,'Furious Fairy Dust','He disappears in a cloud of fairy dust.',NULL,148,34,32,5,4,NULL,'Hank',1,0,NULL),(255,'Goblin Hunter',3,'a Shortbow','Only one? Don\'t they usually travel in packs?',NULL,148,34,32,5,4,NULL,'Hank',1,0,NULL),(256,'Bobcat Cub',3,'Sharp Claws','Even the cute fuzzy kittens are evil in this place.',NULL,148,34,32,5,4,NULL,'Hank',1,0,NULL),(257,'Animate Junkheap',3,'Stench of 1000 rotten potatoes','Just call you the De-Animator!',NULL,148,34,32,5,4,NULL,'Hank',1,0,NULL),(258,'Necromancer',4,'Strength Draining Touch','In a cloud of black smoke, his body wafts away on the breeze.','',162,45,43,7,6,'','Hank',1,0,NULL),(259,'Reed Golem',4,'Fists of Thorns','The only thing left was a tiny bale of hay.',NULL,162,45,43,7,6,NULL,'Hank',1,0,NULL),(260,'Goblin Shaman',4,'Primitive Magic','\"Oooga Booga,\" indeed.',NULL,162,45,43,7,6,NULL,'Hank',1,0,NULL),(261,'Steam Spirit',4,'Scalding Steam','Not so hot now, eh?',NULL,162,45,43,7,6,NULL,'Hank',1,0,NULL),(262,'Restless Zombie',4,'Broken Longsword','Finally he is at peace.',NULL,162,45,43,7,6,NULL,'Hank',1,1,NULL),(263,'Zombie Soldier',4,'Rusted Spear','His final orders were to march to hell.','',162,45,43,7,6,'','Hank',1,1,NULL),(264,'Dark Imp',4,'Nagging Doubts','The imp implodes in a ball of flame.',NULL,162,45,43,7,6,NULL,'Hank',1,1,NULL),(265,'Giant Spider',4,'Fangs that glisten with poison','I really, really hate spiders.','',162,45,43,7,6,'','Hank',1,0,NULL),(266,'Undead Kitten',4,'Mews of Doom','Another evil cat sent to hell C.O.D.',NULL,162,45,43,7,6,NULL,'Hank',1,1,NULL),(267,'Flying Dagger',4,'Sharpened Steel Point','The dagger shatters when it hits the ground.',NULL,162,45,43,7,6,NULL,'Hank',1,0,NULL),(268,'Goblin Warrior',5,'Bent Short Sword','Gone... and forgotten.','',198,55,53,9,7,'','Hank',1,0,NULL),(269,'Experienced Necromancer',5,'a small group of Zombies','The necromancer turns into a pile of black sand and blows away.',NULL,198,55,53,9,7,NULL,'Hank',1,0,NULL),(270,'Flame Sprite',5,'Searing Flame','You cooled him off in a hurry...',NULL,198,55,53,9,7,NULL,'Hank',1,0,NULL),(271,'Mud Man',5,'Enchanted Mud','Defeated, the Mud Man dries up in the warm sun.',NULL,198,55,53,9,7,NULL,'Hank',1,0,NULL),(272,'Lupe the Hypnotic Chihuahua',5,'The stare of doom','You manage to break free of those deep hypnotic eyes...',NULL,198,55,53,9,7,NULL,'Hank',1,0,NULL),(273,'Ghoul',5,'Hunger for Flesh','The ghoul falls to the ground, a bit of flesh between his teeth.',NULL,198,55,53,9,7,NULL,'Hank',1,1,NULL),(274,'Seedy Cutthroat',5,'Sharpened Daggers','One more bandit removed from this forest.',NULL,198,55,53,9,7,NULL,'Hank',1,0,NULL),(275,'Ogre',5,'Broken treebranch','Boy, thats a face not even a mother could love.',NULL,198,55,53,9,7,NULL,'Hank',1,0,NULL),(276,'Crazy Woodsman',5,'Dull axe','Chopped him down to size...',NULL,198,55,53,9,7,NULL,'Hank',1,0,NULL),(277,'Flying Drakeling',5,'a Lashing Tail','You swat the small, majestic beast out of the air.',NULL,198,55,53,9,7,NULL,'Hank',1,0,NULL),(278,'Forest Cat',6,'Menacing Claws','Here kitty, kitty, kitty.','',234,66,64,11,8,'','Hank',1,0,NULL),(279,'Journeyman Necromancer',6,'An Undead Giant','The necromancer drifts away on a cloud of black smoke.','',234,66,64,11,8,'','Hank',1,0,NULL),(280,'Frigid Skeleton',6,'The Cold of the Grave','I\'ll bet one of these guys could cool ale at the inn.','',234,66,64,11,8,'','Hank',1,1,NULL),(281,'Frost Spirit',6,'Bone Chilling Cold','Puttin down another cold one.','',234,66,64,11,8,'','Hank',1,0,NULL),(282,'Dragon Slayer\'s ghost',6,'Warnings of Doom','Everybody wondered what happened to him.',NULL,234,66,64,11,8,NULL,'Hank',1,0,NULL),(283,'Ettin Mage',6,'Double threat spells','Two heads are not better than one in this case.  Just more to lop off.','',234,66,64,11,8,'','Hank',1,0,NULL),(284,'Insane Brownie',6,'Faerie spells','This one\'s nuts!',NULL,234,66,64,11,8,NULL,'Hank',1,0,NULL),(285,'Ghostly Wolfpack',6,'Ghostly Howls','Quiet settles in around you.  Finally.',NULL,234,66,64,11,8,NULL,'Hank',1,1,NULL),(286,'Wood Golem',6,'Oaken Fists','The truth gave you life and the truth set you free.','',234,66,64,11,8,'','Hank',1,0,NULL),(287,'Diseased Ent',6,'Twisted Branches','There must be fifty ways to cut your lumber. (Groan)','',234,66,64,11,8,'','Hank',1,0,NULL),(288,'Dark Druid',7,'Corrupted Nature','He lost me at the corrupt it to save it part.',NULL,268,77,74,13,10,NULL,'Hank',1,0,NULL),(289,'Lizard Man Scout',7,'Marginal Archery','I know where I can get him made into a nice pair of boots.','',268,77,74,13,10,'','Hank',1,0,NULL),(290,'Diabolic Footman',7,'A Demon Forged Mace','His armor sizzles and he melts as he crumples to the ground.',NULL,268,77,74,13,10,NULL,'Hank',1,1,NULL),(291,'Gargantuan Tree Spider',7,'Projectile Webbing','After you lop him in half, you realize he\'s not so big.',NULL,268,77,74,13,10,NULL,'Hank',1,0,NULL),(292,'Flaming Zombie',7,'Fists covered in Flame','You extinguish the flame of life and the zombie falls to the ground, smoking.',NULL,268,77,74,13,10,NULL,'Hank',1,1,NULL),(293,'Eldritch Wizard',7,'Spells of Darkness','You slice him in two only to watch his body disappear, leaving an empty robe behind.',NULL,268,77,74,13,10,NULL,'Hank',1,0,NULL),(294,'Master Necromancer',7,'An Army of the Dead','You kill the necromancer and his minions disintegrate before your eyes.',NULL,268,77,74,13,10,NULL,'Hank',1,0,NULL),(295,'Animate Darkness',7,'The Darkness of a Thousand Nights','Light Slowly returns to this part of the forest.','',268,77,74,13,10,'','Hank',1,1,NULL),(296,'Temple Guardian Statue',7,'Marble Fists','So, where\'s the temple?',NULL,268,77,74,13,10,NULL,'Hank',1,0,NULL),(297,'Owlbear',7,'Claws and a bearhug','I don\'t even want to know how they breed these.','',268,77,74,13,10,'','Hank',1,0,NULL),(298,'The Man In Black',8,'Necromantic Spells','Finally, I got my chance to kill him.','',302,89,84,15,11,'','Hank',1,0,NULL),(299,'Gnome Illusionist',8,'Fearsome Illusions','It was all in his head.','',302,89,84,15,11,'','Hank',1,0,NULL),(300,'Demon Skeleton',8,'Diabolic Runes','The spirits of its victims drag the skeleton back to hell.','',302,89,84,15,11,'','Hank',1,1,NULL),(301,'Insane Master Druid',8,'The land Itself','His evil laughter dies with him.',NULL,302,89,84,15,11,NULL,'Hank',1,0,NULL),(302,'Water Elementalist',8,'Water Based Spells','He\'s all wet.',NULL,302,89,84,15,11,NULL,'Hank',1,0,NULL),(303,'Earth Elementalist',8,'Earth Based Spells','He fought kind of Dirty.','',302,89,84,15,11,'','Hank',1,0,NULL),(304,'Ettin Warrior',8,'Two Clubs of Iron','They did all right until they hit each other.',NULL,302,89,84,15,11,NULL,'Hank',1,0,NULL),(305,'Forest Giant',8,'An Uprooted Tree','Ho, Ho, Ho that, green man.',NULL,302,89,84,15,11,NULL,'Hank',1,0,NULL),(306,'Demoniac Knight',8,'A Diabolic Lance','Good night, Sir Knight.','',302,89,84,15,11,'','Hank',1,1,NULL),(307,'Giant Zombie',8,'Gigantic Fists','They DO smell worse when they are bigger!',NULL,302,89,84,15,11,NULL,'Hank',1,1,NULL),(308,'Frost Spectre',9,'The Chill Touch of the Grave','As you recover from the fight, the Spectre melts away into the shadows.',NULL,336,101,94,17,13,NULL,'Hank',1,1,NULL),(309,'Small Forest Dragon',9,'Snapping Jaws','Dragon? Check. Green? Check.  Huge? Nope.','',336,101,94,17,13,'','Hank',1,0,NULL),(310,'A Pack of Carnivorous Lemurs',9,'Hoots and Howls','What the heck is a Lemur??',NULL,336,101,94,17,13,NULL,'Hank',1,0,NULL),(311,'Albino Crypt Bear',9,'Foul Stench and Claws','You dispatch the bear and wonder if there are more lurking about.',NULL,336,101,94,17,13,NULL,'Hank',1,0,NULL),(312,'Black Knight of The Vale',9,'Ebony Sword','As he dies, he curses you and tells you that you will never defeat the dragon.',NULL,336,101,94,17,13,NULL,'Hank',1,0,NULL),(313,'Elmearian Spy',9,'Small Dagger','He eats his information before he dies, so you learn nothing from him.',NULL,336,101,94,17,13,NULL,'Hank',1,0,NULL),(314,'Stalking Shadow',9,'Fingers of Darkness','You send the ceature back to where it came from.',NULL,336,101,94,17,13,NULL,'Hank',1,1,NULL),(315,'Necromantic Archmagus',9,'Screams of a Thousand Souls','With his dying breath he explodes into a pillar of black flame!',NULL,336,101,94,17,13,NULL,'Hank',1,0,NULL),(316,'Iron Golem',9,'Rusted Fists','The golem seizes up and you push him over.','',336,101,94,17,13,'','Hank',1,0,NULL),(317,'A Hell Hound',9,'Fiery Breath','He bursts into flames and is sucked into the earth.',NULL,336,101,94,17,13,NULL,'Hank',1,1,NULL),(318,'Corporate Lackey',7,'Buzzwords','Well, you sure reprioritized his downsizing.',NULL,268,77,74,13,10,NULL,'Moonchilde',1,0,NULL),(319,'SCO Lawyer',8,'Court Papers','There\'s one lawyer who\'ll never trouble you again!',NULL,302,89,84,15,11,NULL,'Moonchilde',1,1,NULL),(320,'Gypsy Bandit',14,'Gemmed Dagger','That will put an end to his thieving days.','You\'re dead, he\'s free to take what he will.',499,172,145,27,20,'global $badguy, $session;\r\n\r\nif (!isset($badguy[\'spellpoints\'])) {\r\n	$badguy[\'spellpoints\'] = 1;\r\n}\r\n\r\n$gold = round($session[\'user\'][\'gold\'] * 0.2);\r\nif (e_rand(0,7) == 0 && $gold > 200 && $badguy[\'spellpoints\'] == 1) {\r\n	rawoutput(\"<br /><b><span style=\'color: white\'>The pickpocket takes <span style=\'color: gold\'>$gold gold</span>!</span></b><br /><br />\");\r\n	$session[\'user\'][\'gold\'] -= $gold;\r\n	$badguy[\'creaturegold\'] += $gold;\r\n	$badguy[\'spellpoints\']--;\r\n}','Talisman',1,0,NULL);
/*!40000 ALTER TABLE `creatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debuglog`
--

DROP TABLE IF EXISTS `debuglog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debuglog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actor` int(11) unsigned DEFAULT NULL,
  `target` int(11) unsigned DEFAULT NULL,
  `message` text NOT NULL,
  `field` varchar(20) NOT NULL,
  `value` float(9,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `field` (`actor`,`field`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debuglog`
--

LOCK TABLES `debuglog` WRITE;
/*!40000 ALTER TABLE `debuglog` DISABLE KEYS */;
INSERT INTO `debuglog` VALUES (1,'2020-08-12 19:08:59',1,0,'New Day Turns: Base: 10, Spirits: 1, DK: 0','',0.00);
/*!40000 ALTER TABLE `debuglog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faillog`
--

DROP TABLE IF EXISTS `faillog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faillog` (
  `eventid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post` tinytext NOT NULL,
  `ip` varchar(40) NOT NULL,
  `acctid` int(11) unsigned DEFAULT NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY (`eventid`),
  KEY `date` (`date`),
  KEY `acctid` (`acctid`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faillog`
--

LOCK TABLES `faillog` WRITE;
/*!40000 ALTER TABLE `faillog` DISABLE KEYS */;
/*!40000 ALTER TABLE `faillog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamelog`
--

DROP TABLE IF EXISTS `gamelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamelog` (
  `logid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `category` varchar(50) NOT NULL,
  `filed` tinyint(4) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `who` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`logid`),
  KEY `date` (`category`,`date`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamelog`
--

LOCK TABLES `gamelog` WRITE;
/*!40000 ALTER TABLE `gamelog` DISABLE KEYS */;
INSERT INTO `gamelog` VALUES (1,'Deleted 0 accounts:\n[0] with 0 dk avg lvl [0]\n[0] with 1 dk avg lvl [0]\nAvg DK: [0]\nAccounts: ','char expiration',0,'2020-08-12 19:08:59',1),(2,'Cleaned up 0 old values in module_userprefs that don\'t exist anymore','maintenance',0,'2020-08-12 19:08:59',1),(3,'Cleaned up 0 old values in module_settings that don\'t exist anymore','maintenance',0,'2020-08-12 19:08:59',1),(4,'Cleaned up 0 from debuglog older than 2020-07-25 19:08:59.','maintenance',0,'2020-08-12 19:08:59',1),(5,'Cleaned up gamelog table removing 0 older than 2020-07-12 19:08:59.','maintenance',0,'2020-08-12 19:08:59',1),(6,'Deleted 0 old comments.','comment expiration',0,'2020-08-12 19:08:59',1),(7,'Deleted 0 old moderated comments.','comment expiration',0,'2020-08-12 19:08:59',1);
/*!40000 ALTER TABLE `gamelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logdnet`
--

DROP TABLE IF EXISTS `logdnet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logdnet` (
  `serverid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `priority` double NOT NULL DEFAULT 100,
  `lastupdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` varchar(255) NOT NULL DEFAULT 'Unknown',
  `admin` varchar(255) NOT NULL DEFAULT 'unknown',
  `lastping` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recentips` varchar(255) NOT NULL,
  `count` int(11) unsigned NOT NULL DEFAULT 0,
  `lang` varchar(20) NOT NULL,
  PRIMARY KEY (`serverid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logdnet`
--

LOCK TABLES `logdnet` WRITE;
/*!40000 ALTER TABLE `logdnet` DISABLE KEYS */;
/*!40000 ALTER TABLE `logdnet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logdnetbans`
--

DROP TABLE IF EXISTS `logdnetbans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logdnetbans` (
  `banid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bantype` varchar(20) NOT NULL,
  `banvalue` varchar(255) NOT NULL,
  PRIMARY KEY (`banid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logdnetbans`
--

LOCK TABLES `logdnetbans` WRITE;
/*!40000 ALTER TABLE `logdnetbans` DISABLE KEYS */;
/*!40000 ALTER TABLE `logdnetbans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail` (
  `messageid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `msgfrom` varchar(255) NOT NULL DEFAULT '0',
  `msgto` int(11) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `originator` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`messageid`),
  KEY `msgto` (`msgto`),
  KEY `seen` (`seen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail`
--

LOCK TABLES `mail` WRITE;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masters`
--

DROP TABLE IF EXISTS `masters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masters` (
  `creatureid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `creaturename` varchar(50) DEFAULT NULL,
  `creaturelevel` int(11) DEFAULT NULL,
  `creatureweapon` varchar(50) DEFAULT NULL,
  `creaturelose` varchar(120) DEFAULT NULL,
  `creaturewin` varchar(120) DEFAULT NULL,
  `creaturegold` int(11) DEFAULT NULL,
  `creatureexp` int(11) DEFAULT NULL,
  `creaturehealth` int(11) DEFAULT NULL,
  `creatureattack` int(11) DEFAULT NULL,
  `creaturedefense` int(11) DEFAULT NULL,
  PRIMARY KEY (`creatureid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masters`
--

LOCK TABLES `masters` WRITE;
/*!40000 ALTER TABLE `masters` DISABLE KEYS */;
INSERT INTO `masters` VALUES (1,'Mireraband',1,'Small Dagger','Well done %w`&, I should have guessed you\'d grown some.','As I thought, %w`^, your skills are no match for my own!',NULL,NULL,12,2,2),(2,'Fie',2,'Short Sword','Well done %w`&, you really know how to use your %x.','You should have known you were no match for my %X',NULL,NULL,22,4,4),(3,'Glynyc',3,'Hugely Spiked Mace','Aah, defeated by the likes of you!  Next thing you know, Mireraband will be hunting me down!','Haha, maybe you should go back to Mireraband\'s class.',NULL,NULL,33,6,6),(4,'Guth',4,'Spiked Club','Ha!  Hahaha, excellent fight %w`&!  Haven\'t had a battle like that since I was in the RAF!','Back in the RAF, we\'d have eaten the likes of you alive!  Go work on your skills some old boy!',NULL,NULL,44,8,8),(5,'Un�lith',5,'Thought Control','Your mind is greater than mine.  I concede defeat.','Your mental powers are lacking.  Meditate on this failure and perhaps some day you will defeat me.',NULL,NULL,55,10,10),(6,'Adwares',6,'Dwarven Battle Axe','Ach!  Y\' do hold yer %x with skeel!','Har!  Y\' do be needin moore praktise y\' wee cub!',NULL,NULL,66,12,12),(7,'Gerrard',7,'Battle Bow','Hmm, mayhaps I underestimated you.','As I thought.',NULL,NULL,77,14,14),(8,'Ceiloth',8,'Orkos Broadsword','Well done %w`&, I can see that great things lie in the future for you!','You are becoming powerful, but not yet that powerful.',NULL,NULL,88,16,16),(9,'Dwiredan',9,'Twin Swords','Perhaps I should have considered your %x...','Perhaps you\'ll reconsider my twin swords before you try that again?',NULL,NULL,99,18,18),(10,'Sensei Noetha',10,'Martial Arts Skills','Your style was superior, your form greater.  I bow to you.','Learn to adapt your style, and you shall prevail.',NULL,NULL,110,20,20),(11,'Celith',11,'Throwing Halos','Wow, how did you dodge all those halos?','Watch out for that last halo, it\'s coming back this way!',NULL,NULL,121,22,22),(12,'Gadriel the Elven Ranger',12,'Elven Long Bow','I can accept that you defeated me, because after all elves are immortal while you are not, so the victory will be mine.','Do not forget that elves are immortal.  Mortals will likely never defeat one of the fey.',NULL,NULL,132,24,24),(13,'Adoawyr',13,'Gargantuan Broad Sword','If I could have picked up this sword, I probably would have done better!','Haha, I couldn\'t even pick the sword UP and I still won!',NULL,NULL,143,26,26),(14,'Yoresh',14,'Death Touch','Well, you evaded my touch.  I salute you!','Watch out for my touch next time!',NULL,NULL,154,28,28);
/*!40000 ALTER TABLE `masters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moderatedcomments`
--

DROP TABLE IF EXISTS `moderatedcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moderatedcomments` (
  `modid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `comment` text DEFAULT NULL,
  `moderator` int(11) unsigned NOT NULL DEFAULT 0,
  `moddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`modid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moderatedcomments`
--

LOCK TABLES `moderatedcomments` WRITE;
/*!40000 ALTER TABLE `moderatedcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `moderatedcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_event_hooks`
--

DROP TABLE IF EXISTS `module_event_hooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_event_hooks` (
  `event_type` varchar(20) NOT NULL,
  `modulename` varchar(50) NOT NULL,
  `event_chance` text NOT NULL,
  KEY `modulename` (`modulename`),
  KEY `event_type` (`event_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_event_hooks`
--

LOCK TABLES `module_event_hooks` WRITE;
/*!40000 ALTER TABLE `module_event_hooks` DISABLE KEYS */;
INSERT INTO `module_event_hooks` VALUES ('forest','fairy','return 100;'),('forest','findgem','return 100;'),('travel','findgem','return 20;'),('forest','foilwench','return 100;'),('forest','glowingstream','return 100;'),('travel','glowingstream','return 100;'),('forest','goldmine','return 100;'),('forest','findgold','return 100;'),('travel','findgold','return 20;'),('forest','crazyaudrey','return 100;'),('forest','darkhorse','require_once(\"modules/darkhorse.php\");\n			return (darkhorse_tavernmount() ? 0 : 100);'),('travel','darkhorse','require_once(\"modules/darkhorse.php\");\n			return (darkhorse_tavernmount() ? 0 : 100);');
/*!40000 ALTER TABLE `module_event_hooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_hooks`
--

DROP TABLE IF EXISTS `module_hooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_hooks` (
  `modulename` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `function` varchar(50) NOT NULL,
  `whenactive` text NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 50,
  PRIMARY KEY (`modulename`,`location`,`function`),
  KEY `location` (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_hooks`
--

LOCK TABLES `module_hooks` WRITE;
/*!40000 ALTER TABLE `module_hooks` DISABLE KEYS */;
INSERT INTO `module_hooks` VALUES ('cedrikspotions','header-inn','cedrikspotions_dohook','',50),('cedrikspotions','hprecalc','cedrikspotions_dohook','',50),('cedrikspotions','newday-runonce','cedrikspotions_dohook','',50),('crazyaudrey','newday','crazyaudrey_dohook','',50),('crazyaudrey','newday-runonce','crazyaudrey_dohook','',50),('crazyaudrey','village','crazyaudrey_dohook','',50),('crazyaudrey','village-desc','crazyaudrey_dohook','',50),('dag','delete_character','dag_dohook','',50),('dag','dragonkill','dag_dohook','',50),('dag','inn','dag_dohook','',50),('dag','inn-desc','dag_dohook','',50),('dag','newday','dag_dohook','',50),('dag','pvpwin','dag_dohook','',50),('dag','showsettings','dag_dohook','',50),('dag','superuser','dag_dohook','',50),('darkhorse','forest','darkhorse_dohook','',50),('darkhorse','moderate','darkhorse_dohook','',50),('darkhorse','mountfeatures','darkhorse_dohook','',50),('drinks','ale','drinks_dohook','',50),('drinks','commentary','drinks_dohook','',50),('drinks','dragonkill','drinks_dohook','',50),('drinks','header-graveyard','drinks_dohook','',50),('drinks','newday','drinks_dohook','',50),('drinks','soberup','drinks_dohook','',50),('drinks','superuser','drinks_dohook','',50),('fairy','hprecalc','fairy_dohook','',50),('game_dice','darkhorsegame','game_dice_dohook','',50),('game_stones','darkhorsegame','game_stones_dohook','',50),('lovers','inn','lovers_dohook','',50),('lovers','newday','lovers_dohook','',50),('outhouse','forest','outhouse_dohook','',50),('outhouse','newday','outhouse_dohook','',50),('racedwarf','camplocs','racedwarf_dohook','',50),('racedwarf','changesetting','racedwarf_dohook','',50),('racedwarf','chooserace','racedwarf_dohook','',50),('racedwarf','creatureencounter','racedwarf_dohook','',50),('racedwarf','drinks-check','racedwarf_dohook','',50),('racedwarf','drinks-text','racedwarf_dohook','',50),('racedwarf','mercenarycamptext','racedwarf_dohook','',50),('racedwarf','moderate','racedwarf_dohook','',50),('racedwarf','raceminedeath','racedwarf_dohook','',50),('racedwarf','racenames','racedwarf_dohook','',50),('racedwarf','setrace','racedwarf_dohook','',50),('racedwarf','travel','racedwarf_dohook','',50),('racedwarf','validforestloc','racedwarf_dohook','',50),('racedwarf','validlocation','racedwarf_dohook','',50),('racedwarf','village','racedwarf_dohook','',50),('racedwarf','villagetext','racedwarf_dohook','',50),('raceelf','adjuststats','raceelf_dohook','',50),('raceelf','changesetting','raceelf_dohook','',50),('raceelf','chooserace','raceelf_dohook','',50),('raceelf','moderate','raceelf_dohook','',50),('raceelf','newday','raceelf_dohook','',50),('raceelf','pvpadjust','raceelf_dohook','',50),('raceelf','raceminedeath','raceelf_dohook','',50),('raceelf','racenames','raceelf_dohook','',50),('raceelf','setrace','raceelf_dohook','',50),('raceelf','travel','raceelf_dohook','',50),('raceelf','validforestloc','raceelf_dohook','',50),('raceelf','validlocation','raceelf_dohook','',50),('raceelf','villagetext','raceelf_dohook','',50),('raceelf','weaponstext','raceelf_dohook','',50),('racehuman','changesetting','racehuman_dohook','',50),('racehuman','chooserace','racehuman_dohook','',50),('racehuman','moderate','racehuman_dohook','',50),('racehuman','newday','racehuman_dohook','',50),('racehuman','raceminedeath','racehuman_dohook','',50),('racehuman','racenames','racehuman_dohook','',50),('racehuman','setrace','racehuman_dohook','',50),('racehuman','stablelocs','racehuman_dohook','',50),('racehuman','stabletext','racehuman_dohook','',50),('racehuman','travel','racehuman_dohook','',50),('racehuman','validforestloc','racehuman_dohook','',50),('racehuman','validlocation','racehuman_dohook','',50),('racehuman','villagetext','racehuman_dohook','',50),('racetroll','adjuststats','racetroll_dohook','',50),('racetroll','changesetting','racetroll_dohook','',50),('racetroll','chooserace','racetroll_dohook','',50),('racetroll','moderate','racetroll_dohook','',50),('racetroll','newday','racetroll_dohook','',50),('racetroll','pvpadjust','racetroll_dohook','',50),('racetroll','raceminedeath','racetroll_dohook','',50),('racetroll','racenames','racetroll_dohook','',50),('racetroll','setrace','racetroll_dohook','',50),('racetroll','travel','racetroll_dohook','',50),('racetroll','validforestloc','racetroll_dohook','',50),('racetroll','validlocation','racetroll_dohook','',50),('racetroll','villagetext','racetroll_dohook','',50),('sethsong','inn','sethsong_dohook','',50),('sethsong','newday','sethsong_dohook','',50),('specialtydarkarts','apply-specialties','specialtydarkarts_dohook','',50),('specialtydarkarts','choose-specialty','specialtydarkarts_dohook','',50),('specialtydarkarts','dragonkill','specialtydarkarts_dohook','',50),('specialtydarkarts','fightnav-specialties','specialtydarkarts_dohook','',50),('specialtydarkarts','incrementspecialty','specialtydarkarts_dohook','',50),('specialtydarkarts','newday','specialtydarkarts_dohook','',50),('specialtydarkarts','set-specialty','specialtydarkarts_dohook','',50),('specialtydarkarts','specialtycolor','specialtydarkarts_dohook','',50),('specialtydarkarts','specialtymodules','specialtydarkarts_dohook','',50),('specialtydarkarts','specialtynames','specialtydarkarts_dohook','',50),('specialtymysticpower','apply-specialties','specialtymysticpower_dohook','',50),('specialtymysticpower','choose-specialty','specialtymysticpower_dohook','',50),('specialtymysticpower','dragonkill','specialtymysticpower_dohook','',50),('specialtymysticpower','fightnav-specialties','specialtymysticpower_dohook','',50),('specialtymysticpower','incrementspecialty','specialtymysticpower_dohook','',50),('specialtymysticpower','newday','specialtymysticpower_dohook','',50),('specialtymysticpower','set-specialty','specialtymysticpower_dohook','',50),('specialtymysticpower','specialtycolor','specialtymysticpower_dohook','',50),('specialtymysticpower','specialtymodules','specialtymysticpower_dohook','',50),('specialtymysticpower','specialtynames','specialtymysticpower_dohook','',50),('specialtythiefskills','apply-specialties','specialtythiefskills_dohook','',50),('specialtythiefskills','choose-specialty','specialtythiefskills_dohook','',50),('specialtythiefskills','dragonkill','specialtythiefskills_dohook','',50),('specialtythiefskills','fightnav-specialties','specialtythiefskills_dohook','',50),('specialtythiefskills','incrementspecialty','specialtythiefskills_dohook','',50),('specialtythiefskills','newday','specialtythiefskills_dohook','',50),('specialtythiefskills','set-specialty','specialtythiefskills_dohook','',50),('specialtythiefskills','specialtycolor','specialtythiefskills_dohook','',50),('specialtythiefskills','specialtymodules','specialtythiefskills_dohook','',50),('specialtythiefskills','specialtynames','specialtythiefskills_dohook','',50);
/*!40000 ALTER TABLE `module_hooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_objprefs`
--

DROP TABLE IF EXISTS `module_objprefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_objprefs` (
  `modulename` varchar(50) NOT NULL,
  `objtype` varchar(50) NOT NULL,
  `setting` varchar(50) NOT NULL,
  `objid` int(11) unsigned NOT NULL DEFAULT 0,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`modulename`,`objtype`,`setting`,`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_objprefs`
--

LOCK TABLES `module_objprefs` WRITE;
/*!40000 ALTER TABLE `module_objprefs` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_objprefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_settings`
--

DROP TABLE IF EXISTS `module_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_settings` (
  `modulename` varchar(50) NOT NULL,
  `setting` varchar(50) NOT NULL,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`modulename`,`setting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_settings`
--

LOCK TABLES `module_settings` WRITE;
/*!40000 ALTER TABLE `module_settings` DISABLE KEYS */;
INSERT INTO `module_settings` VALUES ('cedrikspotions','atkmod','.75'),('cedrikspotions','carrydk','1'),('cedrikspotions','charmcost','2'),('cedrikspotions','charmgain','1'),('cedrikspotions','defmod','.75'),('cedrikspotions','forgcost','2'),('cedrikspotions','ischarm','1'),('cedrikspotions','isforget','1'),('cedrikspotions','ismax','1'),('cedrikspotions','istemp','1'),('cedrikspotions','istrans','1'),('cedrikspotions','maxcost','2'),('cedrikspotions','maxrand','5'),('cedrikspotions','minrand','2'),('cedrikspotions','randcost','2'),('cedrikspotions','random','0'),('cedrikspotions','survive','1'),('cedrikspotions','tempcost','2'),('cedrikspotions','tempgain','20'),('cedrikspotions','transcost','2'),('cedrikspotions','transmuteturns','10'),('cedrikspotions','vitalgain','1'),('crazyaudrey','animal','Kitten'),('crazyaudrey','animals','Kittens'),('crazyaudrey','buffname','Warm Fuzzies'),('crazyaudrey','cost','5'),('crazyaudrey','defaultanimal','Kitten'),('crazyaudrey','defaultanimals','Kittens'),('crazyaudrey','defaultbuffname','Warm Fuzzies'),('crazyaudrey','defaultsound','mew'),('crazyaudrey','gamedaysremaining','-1'),('crazyaudrey','lanimal','kitten'),('crazyaudrey','lanimals','kittens'),('crazyaudrey','profit','5'),('crazyaudrey','sound','mew'),('crazyaudrey','villagepercent','20'),('dag','bountyfee','10'),('dag','bountylevel','3'),('dag','bountymax','200'),('dag','bountymin','50'),('dag','maxbounties','5'),('darkhorse','tavernname','Dark Horse Tavern'),('drinks','hardlimit','3'),('drinks','maxdrunk','66'),('fairy','carrydk','1'),('fairy','fftoaward','1'),('fairy','hptoaward','1'),('findgold','maxgold','50'),('findgold','mingold','10'),('goldmine','alwaystether','10'),('goldmine','percentgemloss','0'),('goldmine','percentgoldloss','0'),('outhouse','badmusthit','50'),('outhouse','cost','5'),('outhouse','giveback','3'),('outhouse','givegempercent','25'),('outhouse','giveturnchance','0'),('outhouse','goldinhand','1'),('outhouse','goodmusthit','60'),('outhouse','takeback','1'),('racedwarf','minedeathchance','5'),('racedwarf','villagename','Qexelcrag'),('raceelf','minedeathchance','90'),('raceelf','villagename','Glorfindal'),('racehuman','bonus','2'),('racehuman','minedeathchance','90'),('racehuman','villagename','Romar'),('racetroll','minedeathchance','90'),('racetroll','villagename','Glukmoore'),('sethsong','bhploss','10'),('sethsong','goldloss','5'),('sethsong','hpgain','20'),('sethsong','maxgems','1'),('sethsong','maxgold','50'),('sethsong','mingems','1'),('sethsong','mingold','10'),('sethsong','shploss','20'),('sethsong','visits','1');
/*!40000 ALTER TABLE `module_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_userprefs`
--

DROP TABLE IF EXISTS `module_userprefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_userprefs` (
  `modulename` varchar(50) NOT NULL,
  `setting` varchar(50) NOT NULL,
  `userid` int(11) unsigned NOT NULL DEFAULT 0,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`modulename`,`setting`,`userid`),
  KEY `modulename` (`modulename`,`userid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_userprefs`
--

LOCK TABLES `module_userprefs` WRITE;
/*!40000 ALTER TABLE `module_userprefs` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_userprefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `modulename` varchar(50) NOT NULL,
  `formalname` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `moduleauthor` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `filename` varchar(255) NOT NULL,
  `installdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `installedby` varchar(50) NOT NULL,
  `filemoddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `extras` text DEFAULT NULL,
  `category` varchar(50) NOT NULL,
  `infokeys` text NOT NULL,
  `version` varchar(10) DEFAULT NULL,
  `download` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`modulename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES ('cedrikspotions','Cedrik\'s Potion Shop','','Eric Stevens<br>Modifications by: Chris Vorndran',1,'cedrikspotions.php','2020-08-12 19:09:49','`%Admin `&admin`0','0000-00-00 00:00:00',0,NULL,'Inn','|name|version|author|category|download|settings|prefs|description|requires|','2.6','core_module'),('crazyaudrey','Crazy Audrey\'s Petting Zoo','','Eric Stevens',1,'crazyaudrey.php','2020-08-12 19:09:49','`%Admin `&admin`0','2020-06-21 05:47:56',0,NULL,'Forest Specials','|name|version|author|category|download|settings|prefs|requires|description|','1.1','core_module'),('dag','Dag Durnick Bounties','','Darrel Morrone<br>Updates by Andrew Senger, JT Traub, and Eric Stevens',1,'dag.php','2020-08-12 19:09:49','`%Admin `&admin`0','0000-00-00 00:00:00',0,NULL,'Inn','|name|author|version|category|download|settings|prefs|description|requires|','1.3','core_module'),('darkhorse','Dark Horse Tavern','','Eric Stevens',1,'darkhorse.php','2020-08-12 19:09:50','`%Admin `&admin`0','2020-06-21 05:47:56',0,NULL,'Forest Specials','|name|version|author|category|download|settings|prefs-mounts|requires|description|','1.1','core_module'),('drinks','Exotic Drinks','','John J. Collins<br>Heavily modified by JT Traub',1,'drinks.php','2020-08-12 19:09:50','`%Admin `&admin`0','0000-00-00 00:00:00',0,NULL,'Inn','|name|author|category|download|settings|prefs|version|description|requires|','1.1','core_module'),('fairy','Forest Fairy','','Eric Stevens',1,'fairy.php','2020-08-12 19:09:50','`%Admin `&admin`0','0000-00-00 00:00:00',0,NULL,'Forest Specials','|name|version|author|category|download|settings|prefs|description|requires|','1.1','core_module'),('findgem','Find Gems','','Eric Stevens',1,'findgem.php','2020-08-12 19:09:50','`%Admin `&admin`0','0000-00-00 00:00:00',0,NULL,'Forest Specials','|name|version|author|category|download|description|requires|','1.1','core_module'),('findgold','Find Gold','','Eric Stevens',1,'findgold.php','2020-08-12 19:09:57','`%Admin `&admin`0','0000-00-00 00:00:00',0,NULL,'Forest Specials','|name|version|author|category|download|settings|description|requires|','1.1','core_module'),('foilwench','Foilwench','','Eric Stevens',1,'foilwench.php','2020-08-12 19:09:50','`%Admin `&admin`0','0000-00-00 00:00:00',0,NULL,'Forest Specials','|name|version|author|category|download|description|requires|','1.1','core_module'),('game_dice','Dice Game for DarkHorse','','Eric Stevens',1,'game_dice.php','2020-08-12 19:09:50','`%Admin `&admin`0','0000-00-00 00:00:00',0,NULL,'Darkhorse Game','|name|author|version|category|download|description|requires|','1.1','core_module'),('game_stones','Stones Game for DarkHorse','','Eric Stevens',1,'game_stones.php','2020-08-12 19:09:50','`%Admin `&admin`0','0000-00-00 00:00:00',0,NULL,'Darkhorse Game','|name|author|version|category|download|description|requires|','1.1','core_module'),('glowingstream','Glowing Stream','','Eric Stevens',1,'glowingstream.php','2020-08-12 19:09:50','`%Admin `&admin`0','0000-00-00 00:00:00',0,NULL,'Forest Specials','|name|version|author|category|download|description|requires|','1.1','core_module'),('goldmine','Gold Mine','','Ville Valtokari',1,'goldmine.php','2020-08-12 19:09:50','`%Admin `&admin`0','0000-00-00 00:00:00',0,NULL,'Forest Specials','|name|version|author|category|download|settings|prefs-mounts|description|requires|','1.0','core_module'),('lovers','Violet and Seth Lovers','','Eric Stevens',1,'lovers.php','2020-08-12 19:09:50','`%Admin `&admin`0','0000-00-00 00:00:00',0,NULL,'Inn','|name|author|version|category|download|prefs|description|requires|','1.0','core_module'),('outhouse','Gnomish Outhouse','','John Collins',1,'outhouse.php','2020-08-12 19:09:50','`%Admin `&admin`0','0000-00-00 00:00:00',0,NULL,'Forest','|name|author|version|category|download|prefs|settings|description|requires|','2.0','core_module'),('racedwarf','Race - Dwarf','','Eric Stevens',1,'racedwarf.php','2020-08-12 19:09:50','`%Admin `&admin`0','2020-06-21 05:47:57',0,NULL,'Races','|name|version|author|category|download|settings|prefs-drinks|requires|description|','1.1','core_module'),('raceelf','Race - Elf','','Eric Stevens',1,'raceelf.php','2020-08-12 19:09:50','`%Admin `&admin`0','2020-06-21 05:47:57',0,NULL,'Races','|name|version|author|category|download|settings|requires|description|','1.0','core_module'),('racehuman','Race - Human','','Eric Stevens',1,'racehuman.php','2020-08-12 19:09:50','`%Admin `&admin`0','2020-06-21 05:47:57',0,NULL,'Races','|name|version|author|category|download|settings|requires|description|','1.0','core_module'),('racetroll','Race - Troll','','Eric Stevens',1,'racetroll.php','2020-08-12 19:09:50','`%Admin `&admin`0','2020-06-21 05:47:57',0,NULL,'Races','|name|version|author|category|download|settings|requires|description|','1.0','core_module'),('sethsong','Seth the Bard\'s Songs','','Eric Stevens',1,'sethsong.php','2020-08-12 19:09:50','`%Admin `&admin`0','0000-00-00 00:00:00',0,NULL,'Inn','|name|version|author|category|download|settings|prefs|description|requires|','1.1','core_module'),('specialtydarkarts','Specialty - Dark Arts','','Eric Stevens',1,'specialtydarkarts.php','2020-08-12 19:09:50','`%Admin `&admin`0','0000-00-00 00:00:00',0,NULL,'Specialties','|name|author|version|download|category|prefs|description|requires|','1.1','core_module'),('specialtymysticpower','Specialty - Mystical Powers','','Eric Stevens',1,'specialtymysticpower.php','2020-08-12 19:09:50','`%Admin `&admin`0','0000-00-00 00:00:00',0,NULL,'Specialties','|name|author|version|download|category|prefs|description|requires|','1.0','core_module'),('specialtythiefskills','Specialty - Thieving Skills','','Eric Stevens',1,'specialtythiefskills.php','2020-08-12 19:09:51','`%Admin `&admin`0','0000-00-00 00:00:00',0,NULL,'Specialties','|name|author|version|download|category|prefs|description|requires|','1.0','core_module');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motd`
--

DROP TABLE IF EXISTS `motd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motd` (
  `motditem` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `motdtitle` varchar(200) DEFAULT NULL,
  `motdbody` text DEFAULT NULL,
  `motddate` datetime DEFAULT NULL,
  `motdtype` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `motdauthor` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`motditem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motd`
--

LOCK TABLES `motd` WRITE;
/*!40000 ALTER TABLE `motd` DISABLE KEYS */;
/*!40000 ALTER TABLE `motd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mounts`
--

DROP TABLE IF EXISTS `mounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mounts` (
  `mountid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mountname` varchar(50) NOT NULL,
  `mountdesc` text DEFAULT NULL,
  `mountcategory` varchar(50) NOT NULL,
  `mountbuff` text DEFAULT NULL,
  `mountcostgems` int(11) unsigned NOT NULL DEFAULT 0,
  `mountcostgold` int(11) unsigned NOT NULL DEFAULT 0,
  `mountactive` int(11) unsigned NOT NULL DEFAULT 1,
  `mountforestfights` int(11) NOT NULL DEFAULT 0,
  `newday` text NOT NULL,
  `recharge` text NOT NULL,
  `partrecharge` text NOT NULL,
  `mountfeedcost` int(11) unsigned NOT NULL DEFAULT 20,
  `mountlocation` varchar(25) NOT NULL DEFAULT 'all',
  `mountdkcost` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`mountid`),
  KEY `mountid` (`mountid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mounts`
--

LOCK TABLES `mounts` WRITE;
/*!40000 ALTER TABLE `mounts` DISABLE KEYS */;
INSERT INTO `mounts` VALUES (1,'Pony','This docile beast is young yet.','Horses','a:5:{s:4:\"name\";s:13:\"`&Pony Attack\";s:8:\"roundmsg\";s:26:\"Your pony fights with you!\";s:6:\"rounds\";s:2:\"20\";s:6:\"atkmod\";s:3:\"1.2\";s:8:\"activate\";s:7:\"offense\";}',6,0,1,1,'You strap your {weapon} to your pony\'s saddle bags, and head out for some adventure!','`&Remembering that is has been quite some time since you last fed your pony, you decide this is a perfect time to relax and allow it to graze the field a bit. You doze off enjoying this peaceful serenity.`0','`&You dismount in the field to allow your pony to graze for a moment even though it has recently been fully fed.  As you lean back in the grass to watch the clouds, your pony whickers softly and trots off into the underbrush.  You search for a while before returning to the fields hoping that it\'ll return.  A short time later, your pony trots back into the clearing holding its head high, looking much more energized and with a very equine grin on its face.`0',20,'all',0),(2,'Gelding','This powerful beast is fiercely loyal.','Horses','a:5:{s:4:\"name\";s:16:\"`&Gelding Attack\";s:8:\"roundmsg\";s:29:\"Your gelding fights with you!\";s:6:\"rounds\";s:2:\"40\";s:6:\"atkmod\";s:3:\"1.2\";s:8:\"activate\";s:7:\"offense\";}',10,0,1,2,'You strap your {weapon} to your gelding\'s saddle bags, and head out for some adventure!','`&Remembering that is has been quite some time since you last fed your gelding, you decide this is a perfect time to relax and allow it to graze the field a bit. You doze off enjoying this peaceful serenity.`0','`&You dismount in the field to allow your gelding to graze for a moment even though it has recently been fully fed.  As you lean back in the grass to watch the clouds, your gelding whickers softly and trots off into the underbrush.  You search for a while before returning to the fields hoping that it\'ll return.  A short time later, your gelding trots back into the clearing holding its head high, looking much more energized and with a very equine grin on its face.`n`nAnd here you thought geldings weren\'t equipped that way any longer!`0',25,'all',0),(3,'Stallion','This noble beast is huge and powerful!','Horses','a:5:{s:4:\"name\";s:17:\"`&Stallion Attack\";s:8:\"roundmsg\";s:30:\"Your stallion fights with you!\";s:6:\"rounds\";s:2:\"60\";s:6:\"atkmod\";s:3:\"1.2\";s:8:\"activate\";s:7:\"offense\";}',16,0,1,3,'You strap your {weapon} to your stallion\'s saddle bags, and head out for some adventure!','`&Remembering that is has been quite some time since you last fed your stallion, you decide this is a perfect time to relax and allow it to graze the field a bit. You doze off enjoying this peaceful serenity.`0','`&You dismount in the field to allow your stallion to graze for a moment even though it has recently been fully fed.  As you lean back in the grass to watch the clouds, your stallion whickers softly and trots off into the underbrush.  You search for a while before returning to the fields hoping that it\'ll return.  A short time later, your stallion trots back into the clearing holding its head high, looking much more energized and with a very equine grin on its face.`0',30,'all',0);
/*!40000 ALTER TABLE `mounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nastywords`
--

DROP TABLE IF EXISTS `nastywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nastywords` (
  `words` text DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nastywords`
--

LOCK TABLES `nastywords` WRITE;
/*!40000 ALTER TABLE `nastywords` DISABLE KEYS */;
INSERT INTO `nastywords` VALUES ('*damn* *dyke *fuck* *nigger* *phuck* *shit* amcik andskota arschloch arse* ass asshole atouche ayir bastard bitch* boiolas bollock* buceta butt* butt-pirate cabron cawk cazzo chink chraa chuj cipa clit cock* cum cunt* dago daygo dego dick* dike dildo dirsa dupa dziwka ejaculate ejackulate ekrem* ekto enculer faen fag* fanculo fanny fatass fcuk feces feg felcher ficken fitta fitte flikker foreskin phuck fuk* fut futkretzn fuxor gay gook guiena hell helvete hoer* honkey honky hor hore huevon hui injun jism jizz kanker* kawk kike klootzak knulle kraut kuk kuksuger kurac kurwa kusi* kyrp�* leitch lesbian lesbo mamhoon masturbat* merd merde mibun monkleigh mouliewop muie mulkku muschi nazis nepesaurio nigga* nigger nutsack orospu paska* pendejo penis perse phuck picka pierdol* pillu* pimmel pimpis piss* pizda poontsee poop porn preteen preud prick pron pula pule pusse pussy puta puto qahbeh queef* queer* qweef rautenberg schaffer scheiss* scheisse schlampe schmuck screw scrotum sharmuta sharmute shemale shipal shiz skribz skurwysyn slut smut sphencter shpincter spic spierdalaj splooge suka teets teez testicle tits titties titty twat twaty vittu votze wank* wetback* whoar whore wichser woose wop yed zabourah','nasty');
/*!40000 ALTER TABLE `nastywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `newsid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `newstext` text NOT NULL,
  `newsdate` date NOT NULL DEFAULT '0000-00-00',
  `accountid` int(11) unsigned NOT NULL DEFAULT 0,
  `arguments` text NOT NULL,
  `tlschema` varchar(255) NOT NULL DEFAULT 'news',
  PRIMARY KEY (`newsid`,`newsdate`),
  KEY `accountid` (`accountid`),
  KEY `newsdate` (`newsdate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'`^A strange awakening takes place in the world.`0','2020-08-12',0,'','');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paylog`
--

DROP TABLE IF EXISTS `paylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paylog` (
  `payid` int(11) NOT NULL AUTO_INCREMENT,
  `info` text NOT NULL,
  `response` text NOT NULL,
  `txnid` varchar(32) NOT NULL,
  `amount` float(9,2) NOT NULL DEFAULT 0.00,
  `name` varchar(50) NOT NULL,
  `acctid` int(11) unsigned NOT NULL DEFAULT 0,
  `processed` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `filed` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `txfee` float(9,2) NOT NULL DEFAULT 0.00,
  `processdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`payid`),
  KEY `txnid` (`txnid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paylog`
--

LOCK TABLES `paylog` WRITE;
/*!40000 ALTER TABLE `paylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `paylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petitions`
--

DROP TABLE IF EXISTS `petitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `petitions` (
  `petitionid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `author` int(11) unsigned NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(11) unsigned NOT NULL DEFAULT 0,
  `body` text DEFAULT NULL,
  `pageinfo` text DEFAULT NULL,
  `closedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `closeuserid` int(11) unsigned NOT NULL DEFAULT 0,
  `ip` varchar(40) NOT NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY (`petitionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petitions`
--

LOCK TABLES `petitions` WRITE;
/*!40000 ALTER TABLE `petitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `petitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollresults`
--

DROP TABLE IF EXISTS `pollresults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollresults` (
  `resultid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `choice` int(11) unsigned NOT NULL DEFAULT 0,
  `account` int(11) unsigned NOT NULL DEFAULT 0,
  `motditem` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`resultid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollresults`
--

LOCK TABLES `pollresults` WRITE;
/*!40000 ALTER TABLE `pollresults` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollresults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referers`
--

DROP TABLE IF EXISTS `referers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referers` (
  `refererid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uri` text DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `last` datetime DEFAULT NULL,
  `site` varchar(50) NOT NULL,
  `dest` varchar(255) DEFAULT NULL,
  `ip` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`refererid`),
  KEY `uri` (`uri`(100)),
  KEY `site` (`site`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referers`
--

LOCK TABLES `referers` WRITE;
/*!40000 ALTER TABLE `referers` DISABLE KEYS */;
/*!40000 ALTER TABLE `referers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `setting` varchar(20) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`setting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('allowclans','1'),('allowspecialswitch','1'),('automaster','1'),('barkeep','`)Cedrik'),('beta','0'),('betaperplayer','1'),('cachetranslations','0'),('charset','ISO-8859-1'),('collecttexts','0'),('daysperday','4'),('defaultlanguage','en'),('defaultskin','jade.htm'),('enablecompanions','1'),('enabletranslation','1'),('expirecontent','180'),('expirenewacct','10'),('expireoldacct','45'),('expiretrashacct','1'),('fightsforinterest','4'),('gameoffsetseconds','0'),('game_epoch','2020-07-13 00:00:00 +0000'),('gravefightsperday','10'),('homecurtime','1'),('homenewdaytime','1'),('homenewestplayer','1'),('homeskinselect','1'),('innname','The Boar\'s Head Inn'),('installer_version','1.1.2 Dragonprime Edition'),('lastdboptimize','2020-08-11 19:08:59'),('last_char_expire','2020-08-12 19:08:59'),('logdnet','0'),('loginbanner','*BETA* This is a BETA of this website, things are likely to change now and again, as it is under active development *BETA*'),('LOGINTIMEOUT','900'),('maxinterest','10'),('maxonline','0'),('mininterest','1'),('newdaycron','0'),('newdaySemaphore','2020-08-12 19:08:59'),('newestplayer',''),('oldmail','14'),('OnlineCount','0'),('OnlineCountLast','1597259479'),('paypalcurrency','USD'),('paypalemail',''),('permacollect','0'),('pvp','1'),('pvpday','3'),('resurrectionturns','-6'),('serverlanguages','en,English,fr,Fran�ais,dk,Danish,de,Deutsch,es,Espa�ol,it,Italian'),('serverurl','http://_/'),('show_notices','0'),('tl_maxallowed','0'),('turns','10'),('villagechance','0'),('villagename','Degolburg');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taunts`
--

DROP TABLE IF EXISTS `taunts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taunts` (
  `tauntid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `taunt` text DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tauntid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taunts`
--

LOCK TABLES `taunts` WRITE;
/*!40000 ALTER TABLE `taunts` DISABLE KEYS */;
INSERT INTO `taunts` VALUES (1,'`5\"`6Just wait for my revenge, `4%W`6. It will be swift!`5\" %w declares.','Bluspring'),(2,'`5\"`6I\'m really going to enjoy this new `4%x`6 that %w`6 had,`5\" exclaimed %W.','joe'),(3,'`5\"`6Aah, so `bthat\'s`b what `4%X`6 is for!`5\" exclaimed %W','joe'),(4,'`5\"`6Oh man!  I didn\'t think you had it in you, `5%W`6,`5\" %w exclaims.','Bluspring'),(5,'`5%W was overheard saying, \"`6%p `4%x`6 was no match for my `4%X`6!`5\"','Bluspring'),(6,'`5\"`6You know, you really shouldn\'t have a `4%x`6 unless you know how to use it,`5\" suggested %W.','Bluspring'),(7,'`5\"`6`bARRRGGGGGGG`b!!`5\" %w screams in frustration.','Bluspring'),(8,'`5\"`6How could I be so feeble?`5\" %w laments.','Bluspring'),(9,'`5\"`6I must not be as sturdy as I thought...!`5\" %w concedes.','Bluspring'),(10,'`5\"`6Watch your back, `4%W`6, I am coming for you!`5\" %w warns.','Bluspring'),(11,'`5\"`6This both sucks and blows!`5\" wails %w.','Bluspring'),(12,'`5\"`6I see London, I see France, I see `4%w\'s`6 underpants!`5\" reveals %W.','Bluspring'),(13,'`5\"`6The Healer\'s Hut can\'t help you now, `4%w`6!`5\" chides %W.','Bluspring'),(14,'`5%W smiles.  \"`6You are too slow.  You are too weak.`5\"','Bluspring'),(15,'`5%w bangs %p head against a stone...\"`6Stupid, stupid, stupid!`5\" %o was heard to say.','Bluspring'),(16,'`5\"`6My ego can\'t take much more of this bruising!`5\" exclaims %w.','Bluspring'),(17,'`5\"`6Why didn\'t I become a successful doctor like my father suggested?`5\" wonders %w aloud.','Bluspring'),(18,'`5\"`6Maybe `bnext`b time you won\'t be so cocky!`5\" laughs %W','Bluspring'),(19,'`5\"`6A baby could wield a `4%x `6better than that!`5\" %W proclaims.','Bluspring'),(20,'`5\"`6You should have just stayed in bed,`5\" %W suggests.','Bluspring'),(21,'`5\"`6Well isn\'t that a kick in the crotch?!`5\" %w observes.','Bluspring'),(22,'`5\"`6Come back when you learn how to fight,`5\" %W scoffs.','Bluspring'),(23,'`5\"`6Next time, eat your Wheaties,`5\" %W suggests.','Bluspring'),(24,'`5 \"`6You are dishonorable, `4%W`6!`5\" %w cries.','Bluspring'),(25,'`5\"`4%w`6, your lack of posture is a disgrace,`5\" %W states. ','Bluspring'),(26,'`5\"`6You know, `4%w`6 really had it coming to %s after all those things `bI`b said about `b%p`b mom`5,\" commented %W.','Joe');
/*!40000 ALTER TABLE `taunts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titles`
--

DROP TABLE IF EXISTS `titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titles` (
  `titleid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `dk` int(11) NOT NULL DEFAULT 0,
  `ref` varchar(100) NOT NULL,
  `male` varchar(25) NOT NULL,
  `female` varchar(25) NOT NULL,
  PRIMARY KEY (`titleid`),
  KEY `dk` (`dk`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titles`
--

LOCK TABLES `titles` WRITE;
/*!40000 ALTER TABLE `titles` DISABLE KEYS */;
INSERT INTO `titles` VALUES (1,0,'','Farmboy','Farmgirl'),(2,1,'','Page','Page'),(3,2,'','Squire','Squire'),(4,3,'','Gladiator','Gladiatrix'),(5,4,'','Legionnaire','Legioness'),(6,5,'','Centurion','Centurioness'),(7,6,'','Sir','Madam'),(8,7,'','Reeve','Reeve'),(9,8,'','Steward','Steward'),(10,9,'','Mayor','Mayoress'),(11,10,'','Baron','Baroness'),(12,11,'','Count','Countess'),(13,12,'','Viscount','Viscountess'),(14,13,'','Marquis','Marchioness'),(15,14,'','Chancellor','Chancelloress'),(16,15,'','Prince','Princess'),(17,16,'','King','Queen'),(18,17,'','Emperor','Empress'),(19,18,'','Angel','Angel'),(20,19,'','Archangel','Archangel'),(21,20,'','Principality','Principality'),(22,21,'','Power','Power'),(23,22,'','Virtue','Virtue'),(24,23,'','Dominion','Dominion'),(25,24,'','Throne','Throne'),(26,25,'','Cherub','Cherub'),(27,26,'','Seraph','Seraph'),(28,27,'','Demigod','Demigoddess'),(29,28,'','Titan','Titaness'),(30,29,'','Archtitan','Archtitaness'),(31,30,'','Undergod','Undergoddess'),(32,31,'','God','Goddess');
/*!40000 ALTER TABLE `titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(10) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `intext` blob NOT NULL,
  `outtext` blob NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `language` (`language`,`uri`),
  KEY `uri` (`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `untranslated`
--

DROP TABLE IF EXISTS `untranslated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `untranslated` (
  `intext` blob NOT NULL,
  `language` varchar(10) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  PRIMARY KEY (`intext`(200),`language`,`namespace`),
  KEY `language` (`language`),
  KEY `intext1` (`intext`(200),`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `untranslated`
--

LOCK TABLES `untranslated` WRITE;
/*!40000 ALTER TABLE `untranslated` DISABLE KEYS */;
/*!40000 ALTER TABLE `untranslated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapons`
--

DROP TABLE IF EXISTS `weapons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weapons` (
  `weaponid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weaponname` varchar(128) DEFAULT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  `damage` int(11) NOT NULL DEFAULT 1,
  `level` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`weaponid`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapons`
--

LOCK TABLES `weapons` WRITE;
/*!40000 ALTER TABLE `weapons` DISABLE KEYS */;
INSERT INTO `weapons` VALUES (1,'Rake',48,1,0),(2,'Trowel',225,2,0),(3,'Spade',585,3,0),(4,'Adze',990,4,0),(5,'Gardening Hoe',1575,5,0),(6,'Torch',2250,6,0),(7,'Pitchfork',2790,7,0),(8,'Shovel',3420,8,0),(9,'Hedge Trimmers',4230,9,0),(10,'Hatchet',5040,10,0),(11,'Carving Knife',5850,11,0),(12,'Rusty Iron Wood-Chopping Axe',6840,12,0),(13,'Dull Steel Wood-chopping Axe',8010,13,0),(14,'Sharp Steel Wood-chopping Axe',9000,14,0),(15,'Woodsman\'s Axe',10350,15,0),(16,'Pebbles',48,1,1),(17,'Stones',225,2,1),(18,'Rocks',585,3,1),(19,'Small Treebranch',990,4,1),(20,'Large Treebranch',1575,5,1),(21,'Thickly Padded Sparring Pole',2250,6,1),(22,'Thinly Padded Sparring Pole',2790,7,1),(23,'Wooden Stave',3420,8,1),(24,'Wooden Practice Sword',4230,9,1),(25,'Blunt Bronze Short Sword',5040,10,1),(26,'Well Crafted Bronze Short Sword',5850,11,1),(27,'Rusty Steel Short Sword',6840,12,1),(28,'Dull Steel Short Sword',8010,13,1),(29,'Sharp Steel Short Sword',9000,14,1),(30,'Pages\'s Short Sword',10350,15,1),(31,'Dull Bronze Sword',48,1,2),(32,'Bronze Sword',225,2,2),(33,'Well Crafted Bronze Sword',585,3,2),(34,'Dull Iron Sword',990,4,2),(35,'Iron Sword',1575,5,2),(36,'Enchanted Sword',9000,14,2),(37,'Well Crafted Iron Sword',2250,6,2),(38,'Rusty Steel Sword',2790,7,2),(39,'Dull Steel Sword',3420,8,2),(40,'Well Crafted Steel Sword',4230,9,2),(41,'Engraved Steel Sword',5040,10,2),(42,'Steel Sword with Jeweled Hilt',5850,11,2),(43,'Golden Hilted Sword',6840,12,2),(44,'Platinum Hilted Sword',8010,13,2),(45,'Adept\'s Sword',10350,15,2),(46,'Steel Longsword',48,1,3),(47,'Etched Steel Longsword',585,3,3),(48,'Polished Steel Longsword',225,2,3),(49,'Well Balanced Steel Longsword',990,4,3),(50,'Perfectly Balanced Steel Longsword',1575,5,3),(51,'Engraved Steel Longsword',2250,6,3),(52,'Longsword with Silver-plated Hilt',2790,7,3),(53,'Longsword with Gold-plated Hilt',3420,8,3),(54,'Longsword with Solid Gold Hilt',4230,9,3),(55,'Longsword with Solid Platinum Hilt',5040,10,3),(56,'Moonsilver Longsword',5850,11,3),(57,'Autumngold Longsword',6840,12,3),(58,'Elfsilver Longsword',8010,13,3),(59,'Enchanted Longsword',9000,14,3),(60,'Wolfmaster\'s Longsword',10350,15,3),(61,'Poorly Balanced Bastard Sword',48,1,4),(62,'Tarnished Bastard Sword',225,2,4),(63,'Iron Bastard Sword',585,3,4),(64,'Steel Bastard Sword',990,4,4),(65,'Well Balanced Steel Bastard Sword',1575,5,4),(66,'Perfectly Balanced Bastard Sword',2250,6,4),(67,'Rune-etched Bastard Sword',2790,7,4),(68,'Bronze-inlay Bastard Sword',3420,8,4),(69,'Silver-inlay Bastard Sword',4230,9,4),(70,'Gold-inlay Bastard Sword',5040,10,4),(71,'Nightsilver Bastard Sword',5850,11,4),(72,'Morning-gold Bastard Sword',6840,12,4),(73,'Truesplendor Bastard Sword',8010,13,4),(74,'Enchanted Elfgold Bastard Sword',9000,14,4),(75,'Noble\'s Bastard Sword',10350,15,4),(76,'Tarnished Iron Claymore',48,1,5),(77,'Polished Iron Claymore',225,2,5),(78,'Rusty Steel Claymore',585,3,5),(79,'Steel Claymore',990,4,5),(80,'Finely Crafted Steel Claymore',1575,5,5),(81,'Scottish Broadsword',2250,6,5),(82,'Viking War Sword',2790,7,5),(83,'Barbarian\'s Sword',3420,8,5),(84,'Scottish Basket-Hilt Claymore',4230,9,5),(85,'Agincourt Steel Sword',5040,10,5),(86,'Celtic Combat Sword',5850,11,5),(87,'Norseman\'s Sword',6840,12,5),(88,'Knight\'s Sword',8010,13,5),(89,'Heraldic Lion Claymore',9000,14,5),(90,'Dragon Soldier\'s Claymore',10350,15,5),(91,'Two Broken Short Swords',48,1,6),(92,'Two Short Swords',225,2,6),(93,'Iron Scimitars',585,3,6),(94,'Balanced Scimitars',990,4,6),(95,'Tarnished Steel Scimitars',1575,5,6),(96,'Rusty Steel Scimitars',2250,6,6),(97,'Steel Scimitars',2790,7,6),(98,'Bronze Hilted Steel Scimitars',3420,8,6),(99,'Gold Hilted Steel Scimitars',4230,9,6),(100,'Platinum Hilted Steel Scimitars',5040,10,6),(101,'Well Crafted Adamantite Scimitars',5850,11,6),(102,'Perfectly Crafted Adamantite Scimitars',6840,12,6),(103,'Enchanted Scimitars',8010,13,6),(104,'Drow Crafted Scimitars',9000,14,6),(105,'Unicorn Blood-Forged Scimitars',10350,15,6),(106,'Chipped Iron Axe',48,1,7),(107,'Iron Axe',225,2,7),(108,'Rusty Steel Axe',585,3,7),(109,'Fine Steel Axe',990,4,7),(110,'Lumberjack\'s Axe',1575,5,7),(111,'Low Quality Battle Axe',2250,6,7),(112,'Medium Quality Battle Axe',2790,7,7),(113,'High Quality Battle Axe',3420,8,7),(114,'Double Bladed Axe',4230,9,7),(115,'Double Bladed Battle Axe',5040,10,7),(116,'Gold Plated Battle Axe',5850,11,7),(117,'Platinum Hilted Battle Axe',6840,12,7),(118,'Enchanted Battle Axe',8010,13,7),(119,'Dwarf Smith\'s Battle Axe',9000,14,7),(120,'Dwarf Warrior\'s Battle Axe',10350,15,7),(121,'Broken Iron Mace',48,1,8),(122,'Tarnished Iron Mace',225,2,8),(123,'Polished Iron Mace',585,3,8),(124,'Well Crafted Iron Mace',990,4,8),(125,'Polished Steel Mace',1575,5,8),(126,'Well Crafted Steel Mace',2250,6,8),(127,'Poorly Balanced Double Mace',2790,7,8),(128,'Well Balanced Double Mace',3420,8,8),(129,'Battle Mace',4230,9,8),(130,'War Chieftain\'s Battle Mace',5040,10,8),(131,'War Chieftain\'s Morning Star',5850,11,8),(132,'Adamantite Morning Star',6840,12,8),(133,'Dwarf Crafted Morning Star',8010,13,8),(134,'Dwarf Warlord\'s Morning Star',9000,14,8),(135,'Enchanted Morning Star',10350,15,8),(136,'Boot Knife',48,1,9),(137,'Target Knife',225,2,9),(138,'Blackjack',585,3,9),(139,'Throwing Star',990,4,9),(140,'Hira-Shuriken',1575,5,9),(141,'Throwing Spike',2250,6,9),(142,'Atlatl',2790,7,9),(143,'Qilamitautit Bolo',3420,8,9),(144,'War Quoait',4230,9,9),(145,'Cha Kran',5040,10,9),(146,'Fei Piau',5850,11,9),(147,'Jen Piau',6840,12,9),(148,'Gau dim Piau',8010,13,9),(149,'Enchanted Throwing Axe',9000,14,9),(150,'Teksolo\'s Ninja Stars',10350,15,9),(151,'Farmer\'s Bow & Wooden Arrows',48,1,10),(152,'Farmer\'s Bow & Stone Tipped Arrows',225,2,10),(153,'Farmer\'s Bow & Steel Tipped Arrows',585,3,10),(154,'Hunter\'s Bow & Wooden Arrows',990,4,10),(155,'Hunter\'s Bow & Stone Tipped Arrows',1575,5,10),(156,'Hunter\'s Bow & Steel Tipped Arrows',2250,6,10),(157,'Ranger\'s Bow & Wooden Arrows',2790,7,10),(158,'Ranger\'s Bow & Stone Tipped Arrows',3420,8,10),(159,'Ranger\'s Bow & Steel Tipped Arrows',4230,9,10),(160,'Longbow',5040,10,10),(161,'Crossbow',5850,11,10),(162,'Elvish Longbow',6840,12,10),(163,'Elvish Longbow & Flame Tipped Arrows',8010,13,10),(164,'Elvish Longbow & Enchanted Arrows',9000,14,10),(165,'Longbow of the Elf King',10350,15,10),(166,'MightyE\'s Long Sword',225,2,11),(167,'MightyE\'s Short Sword',48,1,11),(168,'MightyE\'s Bastard Sword',585,3,11),(169,'MightyE\'s Scimitars',990,4,11),(170,'MightyE\'s Battle Axe',1575,5,11),(171,'MightyE\'s Throwing Hammer',2250,6,11),(172,'MightyE\'s Morning Star',2790,7,11),(173,'MightyE\'s Compound Bow',3420,8,11),(174,'MightyE\'s Rapier',4230,9,11),(175,'MightyE\'s Sabre',5040,10,11),(176,'MightyE\'s Light Sabre',5850,11,11),(177,'MightyE\'s Wakizashi',6840,12,11),(178,'MightyE\'s 2-Handed War Sword',8010,13,11),(179,'MightyE\'s 2-handed War Axe',9000,14,11),(180,'MightyE\'s Claymore',10350,15,11),(181,'Spell of Fire',48,1,12),(182,'Spell of Earthquake',225,2,12),(183,'Spell of Flood',585,3,12),(184,'Spell of Hurricane',990,4,12),(185,'Spell of Mind Control',1575,5,12),(186,'Spell of Lightning',2250,6,12),(187,'Spell of Weakness',2790,7,12),(188,'Spell of Fear',3420,8,12),(189,'Spell of Poison',4230,9,12),(190,'Spell of Spirit Possession',5040,10,12),(191,'Spell of Despair',5850,11,12),(192,'Spell of Bat Summoning',6840,12,12),(193,'Spell of Wolf Summoning',8010,13,12),(194,'Spell of Unicorn Summoning',9000,14,12),(195,'Spell of Dragon Summoning',10350,15,12);
/*!40000 ALTER TABLE `weapons` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-12 19:58:00
