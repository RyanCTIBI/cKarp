-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.8-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for akmm6dtx
CREATE DATABASE IF NOT EXISTS `akmm6dtx` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `akmm6dtx`;


-- Dumping structure for table akmm6dtx.address
CREATE TABLE IF NOT EXISTS `address` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `addrid` int(11) NOT NULL,
  `street1` varchar(32) NOT NULL,
  `city` varchar(27) NOT NULL,
  `country` varchar(25) NOT NULL,
  `phoneext` varchar(6) NOT NULL,
  `ptrcount` smallint(6) NOT NULL,
  `_unused1` smallint(6) NOT NULL,
  `state` varchar(22) NOT NULL,
  `zipcode` varchar(16) NOT NULL,
  `phone` varchar(18) NOT NULL,
  `street2` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.address: ~0 rows (approximately)
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.aging
CREATE TABLE IF NOT EXISTS `aging` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `guarid` int(11) NOT NULL,
  `aging0to30` decimal(10,0) NOT NULL,
  `aging31to60` decimal(10,0) NOT NULL,
  `aging61to90` decimal(10,0) NOT NULL,
  `aging91plus` decimal(10,0) NOT NULL,
  `_agingunused` decimal(10,0) NOT NULL,
  `agingdate` datetime DEFAULT NULL,
  `lastpaydate` datetime DEFAULT NULL,
  `lastpayamt` decimal(10,0) NOT NULL,
  `lastinspaydate` datetime DEFAULT NULL,
  `lastinspayamt` decimal(10,0) NOT NULL,
  `lastbillingdate` datetime DEFAULT NULL,
  `provid1` varchar(5) NOT NULL,
  `provamt1` decimal(10,0) NOT NULL,
  `provid2` varchar(5) NOT NULL,
  `provamt2` decimal(10,0) NOT NULL,
  `provid3` varchar(5) NOT NULL,
  `provamt3` decimal(10,0) NOT NULL,
  `provid4` varchar(5) NOT NULL,
  `provamt4` decimal(10,0) NOT NULL,
  `provid5` varchar(5) NOT NULL,
  `provamt5` decimal(10,0) NOT NULL,
  `provid6` varchar(5) NOT NULL,
  `provamt6` decimal(10,0) NOT NULL,
  `provid7` varchar(5) NOT NULL,
  `provamt7` decimal(10,0) NOT NULL,
  `provid8` varchar(5) NOT NULL,
  `provamt8` decimal(10,0) NOT NULL,
  `provid9` varchar(5) NOT NULL,
  `provamt9` decimal(10,0) NOT NULL,
  `provid10` varchar(5) NOT NULL,
  `provamt10` decimal(10,0) NOT NULL,
  `_unused1` int(11) NOT NULL,
  `_unused2` smallint(6) NOT NULL,
  `_unused3` smallint(6) NOT NULL,
  `_unused4` smallint(6) NOT NULL,
  `_unused5` smallint(6) NOT NULL,
  `_unused6` varchar(5) NOT NULL,
  `billingtype` smallint(6) NOT NULL,
  `_unused7` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.aging: ~0 rows (approximately)
/*!40000 ALTER TABLE `aging` DISABLE KEYS */;
/*!40000 ALTER TABLE `aging` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.appt
CREATE TABLE IF NOT EXISTS `appt` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `apptid` int(11) NOT NULL,
  `apptdate` datetime DEFAULT NULL,
  `rsctype` smallint(6) NOT NULL,
  `opid` varchar(5) NOT NULL,
  `rsctype2` smallint(6) NOT NULL,
  `provid` varchar(5) NOT NULL,
  `otherid` smallint(6) NOT NULL,
  `apptbrokenclass` smallint(6) NOT NULL,
  `patname` varchar(42) NOT NULL,
  `patid` int(11) NOT NULL,
  `apptlen` smallint(6) NOT NULL,
  `amt` decimal(10,0) NOT NULL,
  `brokendate` datetime DEFAULT NULL,
  `apptflag` smallint(6) NOT NULL,
  `reserved2` varchar(7) NOT NULL,
  `phone` varchar(18) NOT NULL,
  `apptreason` varchar(62) NOT NULL,
  `timehr` smallint(6) NOT NULL,
  `timemin` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `appttype` smallint(6) NOT NULL,
  `timeblock` smallint(6) NOT NULL,
  `newpataddrid` int(11) NOT NULL,
  `autoupdatecc` smallint(6) NOT NULL,
  `setamt` smallint(6) NOT NULL,
  `refbytype` smallint(6) NOT NULL,
  `labcaseappt` tinyint(1) NOT NULL,
  `addlprov` varchar(5) NOT NULL,
  `refid` int(11) NOT NULL,
  `followup` smallint(6) NOT NULL,
  `codeid1` int(11) NOT NULL,
  `codeid2` int(11) NOT NULL,
  `codeid3` int(11) NOT NULL,
  `codeid4` int(11) NOT NULL,
  `codeid5` int(11) NOT NULL,
  `codeid6` int(11) NOT NULL,
  `codeid7` int(11) NOT NULL,
  `codeid8` int(11) NOT NULL,
  `codeid9` int(11) NOT NULL,
  `codeid10` int(11) NOT NULL,
  `codeid11` int(11) NOT NULL,
  `codeid12` int(11) NOT NULL,
  `codeid13` int(11) NOT NULL,
  `codeid14` int(11) NOT NULL,
  `codeid15` int(11) NOT NULL,
  `codeid16` int(11) NOT NULL,
  `codeid17` int(11) NOT NULL,
  `codeid18` int(11) NOT NULL,
  `codeid19` int(11) NOT NULL,
  `codeid20` int(11) NOT NULL,
  `apptclass` smallint(6) NOT NULL,
  `rsctype3` smallint(6) NOT NULL,
  `staffid` varchar(5) NOT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `codetype1` smallint(6) NOT NULL,
  `codetype2` smallint(6) NOT NULL,
  `codetype3` smallint(6) NOT NULL,
  `codetype4` smallint(6) NOT NULL,
  `codetype5` smallint(6) NOT NULL,
  `codetype6` smallint(6) NOT NULL,
  `codetype7` smallint(6) NOT NULL,
  `codetype8` smallint(6) NOT NULL,
  `codetype9` smallint(6) NOT NULL,
  `codetype10` smallint(6) NOT NULL,
  `codetype11` smallint(6) NOT NULL,
  `codetype12` smallint(6) NOT NULL,
  `codetype13` smallint(6) NOT NULL,
  `codetype14` smallint(6) NOT NULL,
  `codetype15` smallint(6) NOT NULL,
  `codetype16` smallint(6) NOT NULL,
  `codetype17` smallint(6) NOT NULL,
  `codetype18` smallint(6) NOT NULL,
  `codetype19` smallint(6) NOT NULL,
  `codetype20` smallint(6) NOT NULL,
  `createdate` datetime DEFAULT NULL,
  `createdbyuserid` varchar(5) NOT NULL,
  `pinboard` smallint(6) NOT NULL,
  `workstationid` smallint(6) NOT NULL,
  `orgdate` datetime DEFAULT NULL,
  `orgtimehr` smallint(6) NOT NULL,
  `orgtimemin` smallint(6) NOT NULL,
  `createtimehr` smallint(6) NOT NULL,
  `createtimemin` smallint(6) NOT NULL,
  `pattern` blob NOT NULL,
  `reserved` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.appt: ~0 rows (approximately)
/*!40000 ALTER TABLE `appt` DISABLE KEYS */;
/*!40000 ALTER TABLE `appt` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.apptevent
CREATE TABLE IF NOT EXISTS `apptevent` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `appteventrecid` int(11) NOT NULL,
  `opid` varchar(5) NOT NULL,
  `eventdate` datetime DEFAULT NULL,
  `starttime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `createdate` datetime DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  `closeopflag` smallint(6) NOT NULL,
  `shownotesoneventflag` smallint(6) NOT NULL,
  `centerdescriptflag` smallint(6) NOT NULL,
  `color` int(11) NOT NULL,
  `descript` varchar(62) NOT NULL,
  `pinboardevent` smallint(6) NOT NULL,
  `workstationid` smallint(6) NOT NULL,
  `origeventdate` datetime DEFAULT NULL,
  `eventseriesid` int(11) NOT NULL,
  `reserved` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.apptevent: ~0 rows (approximately)
/*!40000 ALTER TABLE `apptevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `apptevent` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.appthist
CREATE TABLE IF NOT EXISTS `appthist` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `apptid` int(11) NOT NULL,
  `parentapptid` int(11) NOT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedtime` int(11) NOT NULL,
  `patid` int(11) NOT NULL,
  `userid` varchar(5) NOT NULL,
  `provid` varchar(5) NOT NULL,
  `opid` varchar(5) NOT NULL,
  `staffid` varchar(5) NOT NULL,
  `apptreason` varchar(62) NOT NULL,
  `apptlen` smallint(6) NOT NULL,
  `status` varchar(8) NOT NULL,
  `schedflag` smallint(6) NOT NULL,
  `appttype` varchar(21) NOT NULL,
  `apptdate` datetime DEFAULT NULL,
  `timehr` smallint(6) NOT NULL,
  `timemin` smallint(6) NOT NULL,
  `labcaseappt` smallint(6) NOT NULL,
  `notechange` smallint(6) NOT NULL,
  `createflag` smallint(6) NOT NULL,
  `lastflag` smallint(6) NOT NULL,
  `deletedflag` smallint(6) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createduserid` varchar(5) NOT NULL,
  `note` varchar(8193) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.appthist: ~0 rows (approximately)
/*!40000 ALTER TABLE `appthist` DISABLE KEYS */;
/*!40000 ALTER TABLE `appthist` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.clinicalnote
CREATE TABLE IF NOT EXISTS `clinicalnote` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `cnotesid` int(11) NOT NULL,
  `patid` int(11) NOT NULL,
  `provid` varchar(5) NOT NULL,
  `createdatetime` datetime DEFAULT NULL,
  `entrydatetime` datetime DEFAULT NULL,
  `signatureid` int(11) NOT NULL,
  `lockeddate` datetime DEFAULT NULL,
  `_reserved` varchar(43) NOT NULL,
  `notetext` varchar(8193) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.clinicalnote: ~0 rows (approximately)
/*!40000 ALTER TABLE `clinicalnote` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinicalnote` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.clinicalnotesup
CREATE TABLE IF NOT EXISTS `clinicalnotesup` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `cnotessupid` int(11) NOT NULL,
  `recordtype` int(11) NOT NULL,
  `imageindex` smallint(6) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `position` smallint(6) NOT NULL,
  `descript` varchar(32) NOT NULL,
  `_reserved` varchar(21) NOT NULL,
  `xmltext` varchar(4001) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.clinicalnotesup: ~0 rows (approximately)
/*!40000 ALTER TABLE `clinicalnotesup` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinicalnotesup` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.cncategory
CREATE TABLE IF NOT EXISTS `cncategory` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `categoryid` int(11) NOT NULL,
  `imageindex` smallint(6) NOT NULL,
  `position` int(11) NOT NULL,
  `descript` varchar(53) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.cncategory: ~0 rows (approximately)
/*!40000 ALTER TABLE `cncategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `cncategory` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.comm
CREATE TABLE IF NOT EXISTS `comm` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `stationid` smallint(6) NOT NULL,
  `_unused1` smallint(6) NOT NULL,
  `changedate` datetime DEFAULT NULL,
  `displaymode` smallint(6) NOT NULL,
  `displayop` varchar(5) NOT NULL,
  `displayprov` varchar(5) NOT NULL,
  `commcount` smallint(6) NOT NULL,
  `commtype` smallint(6) NOT NULL,
  `apptid1` int(11) NOT NULL,
  `apptid2` int(11) NOT NULL,
  `apptid3` int(11) NOT NULL,
  `apptid4` int(11) NOT NULL,
  `apptid5` int(11) NOT NULL,
  `apptid6` int(11) NOT NULL,
  `apptid7` int(11) NOT NULL,
  `apptid8` int(11) NOT NULL,
  `apptid9` int(11) NOT NULL,
  `apptid10` int(11) NOT NULL,
  `apptid11` int(11) NOT NULL,
  `apptid12` int(11) NOT NULL,
  `apptid13` int(11) NOT NULL,
  `apptid14` int(11) NOT NULL,
  `apptid15` int(11) NOT NULL,
  `status1` smallint(6) NOT NULL,
  `status2` smallint(6) NOT NULL,
  `status3` smallint(6) NOT NULL,
  `status4` smallint(6) NOT NULL,
  `status5` smallint(6) NOT NULL,
  `status6` smallint(6) NOT NULL,
  `status7` smallint(6) NOT NULL,
  `status8` smallint(6) NOT NULL,
  `status9` smallint(6) NOT NULL,
  `status10` smallint(6) NOT NULL,
  `status11` smallint(6) NOT NULL,
  `status12` smallint(6) NOT NULL,
  `status13` smallint(6) NOT NULL,
  `status14` smallint(6) NOT NULL,
  `status15` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.comm: ~0 rows (approximately)
/*!40000 ALTER TABLE `comm` DISABLE KEYS */;
/*!40000 ALTER TABLE `comm` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.consent
CREATE TABLE IF NOT EXISTS `consent` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `consentformid` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `name` varchar(31) NOT NULL,
  `version` int(11) NOT NULL,
  `excludeproccode` tinyint(1) NOT NULL,
  `_unused` varchar(20) NOT NULL,
  `consenttext` varchar(8193) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.consent: ~0 rows (approximately)
/*!40000 ALTER TABLE `consent` DISABLE KEYS */;
/*!40000 ALTER TABLE `consent` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.contact
CREATE TABLE IF NOT EXISTS `contact` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `contactid` int(11) NOT NULL,
  `_unused1` int(11) NOT NULL,
  `contactdate` datetime DEFAULT NULL,
  `contacttime` int(11) NOT NULL,
  `patid` int(11) NOT NULL,
  `provid` varchar(5) NOT NULL,
  `_oldtitle` varchar(21) NOT NULL,
  `title` varchar(81) NOT NULL,
  `_unused2` smallint(6) NOT NULL,
  `_unused3` smallint(6) NOT NULL,
  `_unused4` int(11) NOT NULL,
  `_unused5` int(11) NOT NULL,
  `contacttype` smallint(6) NOT NULL,
  `provtype` smallint(6) NOT NULL,
  `datatype` smallint(6) NOT NULL,
  `refid` int(11) NOT NULL,
  `_unused6` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.contact: ~0 rows (approximately)
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.crexam
CREATE TABLE IF NOT EXISTS `crexam` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `patid` int(11) NOT NULL,
  `examdate` datetime DEFAULT NULL,
  `datestarted` datetime DEFAULT NULL,
  `provid` varchar(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `examtype` smallint(6) NOT NULL,
  `sentdate` datetime DEFAULT NULL,
  `stuff` varchar(705) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.crexam: ~0 rows (approximately)
/*!40000 ALTER TABLE `crexam` DISABLE KEYS */;
/*!40000 ALTER TABLE `crexam` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.def2
CREATE TABLE IF NOT EXISTS `def2` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `deftype` smallint(6) NOT NULL,
  `defid` smallint(6) NOT NULL,
  `name` varchar(17) NOT NULL,
  `recallid` smallint(6) NOT NULL,
  `providfrom` varchar(5) NOT NULL,
  `providto` varchar(5) NOT NULL,
  `status` smallint(6) NOT NULL,
  `billingtypefrom` smallint(6) NOT NULL,
  `billingtypeto` smallint(6) NOT NULL,
  `linkedappt` smallint(6) NOT NULL,
  `duebeforeunit` smallint(6) NOT NULL,
  `duebeforeqty` smallint(6) NOT NULL,
  `dueafterunit` smallint(6) NOT NULL,
  `dueafterqty` smallint(6) NOT NULL,
  `priorfromunit` smallint(6) NOT NULL,
  `priorfromqty` smallint(6) NOT NULL,
  `priortounit` smallint(6) NOT NULL,
  `priortoqty` smallint(6) NOT NULL,
  `visitfromunit` smallint(6) NOT NULL,
  `visitfromqty` smallint(6) NOT NULL,
  `visittounit` smallint(6) NOT NULL,
  `visittoqty` smallint(6) NOT NULL,
  `sortorder1` smallint(6) NOT NULL,
  `sortorder2` smallint(6) NOT NULL,
  `sortorder3` smallint(6) NOT NULL,
  `sortorder4` smallint(6) NOT NULL,
  `sortorder5` smallint(6) NOT NULL,
  `duedatefromrange` datetime DEFAULT NULL,
  `duedatetorange` datetime DEFAULT NULL,
  `searchtype` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.def2: ~0 rows (approximately)
/*!40000 ALTER TABLE `def2` DISABLE KEYS */;
/*!40000 ALTER TABLE `def2` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.dentition
CREATE TABLE IF NOT EXISTS `dentition` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `patid` int(11) NOT NULL,
  `changedate` datetime DEFAULT NULL,
  `toothstates` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.dentition: ~0 rows (approximately)
/*!40000 ALTER TABLE `dentition` DISABLE KEYS */;
/*!40000 ALTER TABLE `dentition` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.diaglog
CREATE TABLE IF NOT EXISTS `diaglog` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `procid` int(11) NOT NULL,
  `claimid` int(11) NOT NULL,
  `patid` int(11) NOT NULL,
  `codes1` varchar(11) NOT NULL,
  `codes2` varchar(11) NOT NULL,
  `codes3` varchar(11) NOT NULL,
  `codes4` varchar(11) NOT NULL,
  `codes5` varchar(11) NOT NULL,
  `codes6` varchar(11) NOT NULL,
  `codes7` varchar(11) NOT NULL,
  `codes8` varchar(11) NOT NULL,
  `codesource1` smallint(6) NOT NULL,
  `codesource2` smallint(6) NOT NULL,
  `codesource3` smallint(6) NOT NULL,
  `codesource4` smallint(6) NOT NULL,
  `_unused1` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.diaglog: ~0 rows (approximately)
/*!40000 ALTER TABLE `diaglog` DISABLE KEYS */;
/*!40000 ALTER TABLE `diaglog` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.diagx
CREATE TABLE IF NOT EXISTS `diagx` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `codeid` int(11) NOT NULL,
  `adacode` varchar(11) NOT NULL,
  `diagcode` varchar(11) NOT NULL,
  `diagxflag` tinyint(1) NOT NULL,
  `diagxcodesource` smallint(6) NOT NULL,
  `_unused1` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.diagx: ~0 rows (approximately)
/*!40000 ALTER TABLE `diagx` DISABLE KEYS */;
/*!40000 ALTER TABLE `diagx` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.docattach
CREATE TABLE IF NOT EXISTS `docattach` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `attachid` int(11) NOT NULL,
  `docid` int(11) NOT NULL,
  `attachtotype` int(11) NOT NULL,
  `attachtoentityid` int(11) NOT NULL,
  `_unusedmodifieddate` datetime DEFAULT NULL,
  `signatureid` int(11) NOT NULL,
  `_reserved` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.docattach: ~0 rows (approximately)
/*!40000 ALTER TABLE `docattach` DISABLE KEYS */;
/*!40000 ALTER TABLE `docattach` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.doccat
CREATE TABLE IF NOT EXISTS `doccat` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `dcdoctypeid` int(11) NOT NULL,
  `name` varchar(42) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.doccat: ~0 rows (approximately)
/*!40000 ALTER TABLE `doccat` DISABLE KEYS */;
/*!40000 ALTER TABLE `doccat` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.document
CREATE TABLE IF NOT EXISTS `document` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `docid` int(11) NOT NULL,
  `doctypeid` int(11) NOT NULL,
  `descript` varchar(42) NOT NULL,
  `pages` int(11) NOT NULL,
  `createdate` datetime DEFAULT NULL,
  `lockeddate` datetime DEFAULT NULL,
  `annotationid` int(11) NOT NULL,
  `docfmt` smallint(6) NOT NULL,
  `_unused1` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.document: ~0 rows (approximately)
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
/*!40000 ALTER TABLE `document` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.dxport
CREATE TABLE IF NOT EXISTS `dxport` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `portid` int(11) NOT NULL,
  `exportdate` datetime DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `startprov` varchar(5) NOT NULL,
  `endprov` varchar(5) NOT NULL,
  `production` int(11) NOT NULL,
  `collection` int(11) NOT NULL,
  `othercollection` int(11) NOT NULL,
  `filename` varchar(81) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.dxport: ~0 rows (approximately)
/*!40000 ALTER TABLE `dxport` DISABLE KEYS */;
/*!40000 ALTER TABLE `dxport` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.eattach
CREATE TABLE IF NOT EXISTS `eattach` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `eattachid` int(11) NOT NULL,
  `entityid` int(11) NOT NULL,
  `attachedsource` int(11) NOT NULL,
  `attachmenttype` int(11) NOT NULL,
  `docid` int(11) NOT NULL,
  `attachmentdate` datetime DEFAULT NULL,
  `path_cnum` varchar(261) NOT NULL,
  `_unused2` smallint(6) NOT NULL,
  `x12indexid` smallint(6) NOT NULL,
  `_unused1` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.eattach: ~0 rows (approximately)
/*!40000 ALTER TABLE `eattach` DISABLE KEYS */;
/*!40000 ALTER TABLE `eattach` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.employer
CREATE TABLE IF NOT EXISTS `employer` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `emptype` smallint(6) NOT NULL,
  `_unused1` smallint(6) NOT NULL,
  `empid` int(11) NOT NULL,
  `name` varchar(33) NOT NULL,
  `street1` varchar(32) NOT NULL,
  `city` varchar(27) NOT NULL,
  `country` varchar(25) NOT NULL,
  `phoneext` varchar(6) NOT NULL,
  `_unused2` smallint(6) NOT NULL,
  `state` varchar(22) NOT NULL,
  `zipcode` varchar(16) NOT NULL,
  `phone` varchar(18) NOT NULL,
  `street2` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.employer: ~0 rows (approximately)
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.erxmedicine
CREATE TABLE IF NOT EXISTS `erxmedicine` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `medid` int(11) NOT NULL,
  `medguid` varchar(37) NOT NULL,
  `lastupload` datetime DEFAULT NULL,
  `source` int(11) NOT NULL,
  `patid` int(11) NOT NULL,
  `provid1` varchar(6) NOT NULL,
  `provid2` varchar(6) NOT NULL,
  `prescripdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `expiredate` datetime DEFAULT NULL,
  `status` int(11) NOT NULL,
  `medname` varchar(51) NOT NULL,
  `ndccode` varchar(12) NOT NULL,
  `medispanparid` varchar(8) NOT NULL,
  `txmethod` int(11) NOT NULL,
  `icd9code` varchar(12) NOT NULL,
  `strength` varchar(12) NOT NULL,
  `strengthuom` varchar(12) NOT NULL,
  `medform` varchar(22) NOT NULL,
  `route` varchar(22) NOT NULL,
  `sigtext` varchar(102) NOT NULL,
  `refills` varchar(102) NOT NULL,
  `quantity` int(11) NOT NULL,
  `daysofsupply` int(11) NOT NULL,
  `pharmcomments` varchar(514) NOT NULL,
  `daw` tinyint(1) NOT NULL,
  `pharmname` varchar(102) NOT NULL,
  `_unused1` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.erxmedicine: ~0 rows (approximately)
/*!40000 ALTER TABLE `erxmedicine` DISABLE KEYS */;
/*!40000 ALTER TABLE `erxmedicine` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.erxpatient
CREATE TABLE IF NOT EXISTS `erxpatient` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `erxpatid` int(11) NOT NULL,
  `patid` int(11) NOT NULL,
  `patguid` varchar(37) NOT NULL,
  `licenseguid` varchar(37) NOT NULL,
  `lastupload` datetime DEFAULT NULL,
  `_unused1` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.erxpatient: ~0 rows (approximately)
/*!40000 ALTER TABLE `erxpatient` DISABLE KEYS */;
/*!40000 ALTER TABLE `erxpatient` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.erxprovinfo
CREATE TABLE IF NOT EXISTS `erxprovinfo` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `providerid` varchar(5) NOT NULL,
  `deaschedule2` tinyint(1) NOT NULL,
  `deaschedule3` tinyint(1) NOT NULL,
  `deaschedule4` tinyint(1) NOT NULL,
  `deaschedule5` tinyint(1) NOT NULL,
  `suffix` varchar(8) NOT NULL,
  `email` varchar(102) NOT NULL,
  `deaexpiration` datetime DEFAULT NULL,
  `statelicensestate` varchar(4) NOT NULL,
  `statelicenseexpiration` datetime DEFAULT NULL,
  `specialitycd` varchar(12) NOT NULL,
  `fullnpi` varchar(52) NOT NULL,
  `fulldea` varchar(52) NOT NULL,
  `_unused2` int(11) NOT NULL,
  `allscriptsid` int(11) NOT NULL,
  `fax` varchar(12) NOT NULL,
  `_unused1` varchar(56) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.erxprovinfo: ~0 rows (approximately)
/*!40000 ALTER TABLE `erxprovinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `erxprovinfo` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.erxscripts
CREATE TABLE IF NOT EXISTS `erxscripts` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `allscriptsid` int(11) NOT NULL,
  `licenseguid` varchar(37) NOT NULL,
  `partnerguid` varchar(37) NOT NULL,
  `lastupload` datetime DEFAULT NULL,
  `islicenseactive` tinyint(1) NOT NULL,
  `grouping` int(11) NOT NULL,
  `expirationdate` datetime DEFAULT NULL,
  `allowedusers` smallint(6) NOT NULL,
  `currentusers` smallint(6) NOT NULL,
  `warndays` smallint(6) NOT NULL,
  `issiteenabled` int(11) NOT NULL,
  `_unused1` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.erxscripts: ~0 rows (approximately)
/*!40000 ALTER TABLE `erxscripts` DISABLE KEYS */;
/*!40000 ALTER TABLE `erxscripts` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.erxuser
CREATE TABLE IF NOT EXISTS `erxuser` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `erxuserid` int(11) NOT NULL,
  `urscid` varchar(5) NOT NULL,
  `userguid` varchar(37) NOT NULL,
  `username` varchar(102) NOT NULL,
  `partnerguid` varchar(37) NOT NULL,
  `licenseguid` varchar(37) NOT NULL,
  `typeid` int(11) NOT NULL,
  `lastupload` datetime DEFAULT NULL,
  `adminrights` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `primaryflag` tinyint(1) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `password` varchar(12) NOT NULL,
  `_unused1` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.erxuser: ~0 rows (approximately)
/*!40000 ALTER TABLE `erxuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `erxuser` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.erxusertype
CREATE TABLE IF NOT EXISTS `erxusertype` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `typeid` int(11) NOT NULL,
  `description` varchar(102) NOT NULL,
  `_unused1` varchar(51) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.erxusertype: ~0 rows (approximately)
/*!40000 ALTER TABLE `erxusertype` DISABLE KEYS */;
/*!40000 ALTER TABLE `erxusertype` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.feeschedule
CREATE TABLE IF NOT EXISTS `feeschedule` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `proccodeid` int(11) NOT NULL,
  `feeschedcategoryid` smallint(6) NOT NULL,
  `amt` decimal(10,0) NOT NULL,
  `amt2` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.feeschedule: ~0 rows (approximately)
/*!40000 ALTER TABLE `feeschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `feeschedule` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.feeschedulenames
CREATE TABLE IF NOT EXISTS `feeschedulenames` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `feeschedcategoryid` smallint(6) NOT NULL,
  `feename` varchar(9) NOT NULL,
  `_unused1` varchar(101) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.feeschedulenames: ~0 rows (approximately)
/*!40000 ALTER TABLE `feeschedulenames` DISABLE KEYS */;
/*!40000 ALTER TABLE `feeschedulenames` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.fulldef
CREATE TABLE IF NOT EXISTS `fulldef` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `deftype` smallint(6) NOT NULL,
  `defid` smallint(6) NOT NULL,
  `descript` varchar(53) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.fulldef: ~0 rows (approximately)
/*!40000 ALTER TABLE `fulldef` DISABLE KEYS */;
/*!40000 ALTER TABLE `fulldef` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.fullnotes
CREATE TABLE IF NOT EXISTS `fullnotes` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `notetype` smallint(6) NOT NULL,
  `_unused1` smallint(6) NOT NULL,
  `noteid` int(11) NOT NULL,
  `notedate` datetime DEFAULT NULL,
  `notetext` varchar(8191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.fullnotes: ~0 rows (approximately)
/*!40000 ALTER TABLE `fullnotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `fullnotes` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.fullproclog
CREATE TABLE IF NOT EXISTS `fullproclog` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `patid` int(11) NOT NULL,
  `procid` int(11) NOT NULL,
  `guarid` int(11) NOT NULL,
  `chartstatus` smallint(6) NOT NULL,
  `authstatus` smallint(6) NOT NULL,
  `procdate` datetime DEFAULT NULL,
  `proccodeid` int(11) NOT NULL,
  `preauthid` int(11) NOT NULL,
  `claimid` int(11) NOT NULL,
  `proclogclass` smallint(6) NOT NULL,
  `proclogorder` smallint(6) NOT NULL,
  `provid` varchar(5) NOT NULL,
  `history` tinyint(1) NOT NULL,
  `authstatus2` smallint(6) NOT NULL,
  `amt` decimal(10,0) NOT NULL,
  `amtpriminspaid` decimal(10,0) NOT NULL,
  `amtsecinspaid` decimal(10,0) NOT NULL,
  `amtpreauth` decimal(10,0) NOT NULL,
  `createdate` datetime DEFAULT NULL,
  `amtsecpreauthdollar` smallint(6) NOT NULL,
  `paintflag` tinyint(1) NOT NULL,
  `amtsecpreauthcents` smallint(6) NOT NULL,
  `materialcost` decimal(10,0) NOT NULL,
  `labexpense` decimal(10,0) NOT NULL,
  `cdareason` smallint(6) NOT NULL,
  `cdalabcode` smallint(6) NOT NULL,
  `toothrangestart` smallint(6) NOT NULL,
  `toothrangeend` smallint(6) NOT NULL,
  `surfacestring` blob NOT NULL,
  `surfm` smallint(6) NOT NULL,
  `surfo` tinyint(1) NOT NULL,
  `surfd` tinyint(1) NOT NULL,
  `surfl` tinyint(1) NOT NULL,
  `surff` tinyint(1) NOT NULL,
  `surf5` tinyint(1) NOT NULL,
  `amtsecpreauth` decimal(10,0) NOT NULL,
  `invalidasofflagstpdate` datetime DEFAULT NULL,
  `medproctype` tinyint(1) NOT NULL,
  `srflag` smallint(6) NOT NULL,
  `donotbillinsflag` tinyint(1) NOT NULL,
  `diag` tinyint(1) NOT NULL,
  `refid` int(11) NOT NULL,
  `reftype` smallint(6) NOT NULL,
  `labfee2` decimal(10,0) NOT NULL,
  `cdalabcode2` varchar(2) NOT NULL,
  `srflagex` int(11) NOT NULL,
  `txcaseid` int(11) NOT NULL,
  `txcaseindex` smallint(6) NOT NULL,
  `checknum` varchar(22) NOT NULL,
  `appliedtopa` tinyint(1) NOT NULL,
  `startcompdatereq` smallint(6) NOT NULL,
  `completiondate` datetime DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `primestoverride4orphaned` decimal(10,0) NOT NULL,
  `secestoverride4orphaned` decimal(10,0) NOT NULL,
  `_unused` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.fullproclog: ~0 rows (approximately)
/*!40000 ALTER TABLE `fullproclog` DISABLE KEYS */;
/*!40000 ALTER TABLE `fullproclog` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.gratacts
CREATE TABLE IF NOT EXISTS `gratacts` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `gratactsid` int(11) NOT NULL,
  `refid` int(11) NOT NULL,
  `gratid` int(11) NOT NULL,
  `gratdate` datetime DEFAULT NULL,
  `amt` decimal(10,0) NOT NULL,
  `provid` varchar(5) NOT NULL,
  `_unused1` varchar(27) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.gratacts: ~0 rows (approximately)
/*!40000 ALTER TABLE `gratacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `gratacts` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.gratuity
CREATE TABLE IF NOT EXISTS `gratuity` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `gratid` int(11) NOT NULL,
  `descript` varchar(34) NOT NULL,
  `amt` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.gratuity: ~0 rows (approximately)
/*!40000 ALTER TABLE `gratuity` DISABLE KEYS */;
/*!40000 ALTER TABLE `gratuity` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.guestimate
CREATE TABLE IF NOT EXISTS `guestimate` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `insid` int(11) NOT NULL,
  `adacode` varchar(11) NOT NULL,
  `amt` decimal(10,0) NOT NULL,
  `percentage` smallint(6) NOT NULL,
  `_unused1` smallint(6) NOT NULL,
  `gdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.guestimate: ~0 rows (approximately)
/*!40000 ALTER TABLE `guestimate` DISABLE KEYS */;
/*!40000 ALTER TABLE `guestimate` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.histlog
CREATE TABLE IF NOT EXISTS `histlog` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `patid` int(11) NOT NULL,
  `histdate` varchar(21) NOT NULL,
  `provid` varchar(11) NOT NULL,
  `descript` varchar(101) NOT NULL,
  `debit` varchar(16) NOT NULL,
  `credit` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.histlog: ~0 rows (approximately)
/*!40000 ALTER TABLE `histlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `histlog` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.histpat
CREATE TABLE IF NOT EXISTS `histpat` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `patid` int(11) NOT NULL,
  `guarid` int(11) NOT NULL,
  `lastname` varchar(41) NOT NULL,
  `firstname` varchar(41) NOT NULL,
  `mi` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.histpat: ~0 rows (approximately)
/*!40000 ALTER TABLE `histpat` DISABLE KEYS */;
/*!40000 ALTER TABLE `histpat` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.inscarrier
CREATE TABLE IF NOT EXISTS `inscarrier` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `insid` int(11) NOT NULL,
  `empid` int(11) NOT NULL,
  `insconame` varchar(33) NOT NULL,
  `groupname` varchar(33) NOT NULL,
  `street1` varchar(32) NOT NULL,
  `city` varchar(27) NOT NULL,
  `country` varchar(25) NOT NULL,
  `phoneext` varchar(6) NOT NULL,
  `contact` varchar(32) NOT NULL,
  `initadacodechar` varchar(2) NOT NULL,
  `groupnum` varchar(26) NOT NULL,
  `unionnum` varchar(8) NOT NULL,
  `renewmon` smallint(6) NOT NULL,
  `claimfmt` smallint(6) NOT NULL,
  `elecfmt` smallint(6) NOT NULL,
  `altproccodeid` smallint(6) NOT NULL,
  `feeschtype` smallint(6) NOT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `maxcovperson` decimal(10,0) NOT NULL,
  `maxcovfam` decimal(10,0) NOT NULL,
  `instableid` int(11) NOT NULL,
  `timelimit` smallint(6) NOT NULL,
  `_unused1` smallint(6) NOT NULL,
  `xray` smallint(6) NOT NULL,
  `inscov` smallint(6) NOT NULL,
  `secinscov` smallint(6) NOT NULL,
  `_unused2` smallint(6) NOT NULL,
  `state` varchar(22) NOT NULL,
  `zipcode` varchar(16) NOT NULL,
  `phone` varchar(18) NOT NULL,
  `street2` varchar(32) NOT NULL,
  `feesched` smallint(6) NOT NULL,
  `instype` smallint(6) NOT NULL,
  `carrieridnum` varchar(11) NOT NULL,
  `secnum` varchar(12) NOT NULL,
  `ucr` smallint(6) NOT NULL,
  `trojannum` varchar(9) NOT NULL,
  `dentwellnessindex` smallint(6) NOT NULL,
  `payerid` varchar(7) NOT NULL,
  `insflag` smallint(6) NOT NULL,
  `stddedperperson` decimal(10,0) NOT NULL,
  `prvdedperperson` decimal(10,0) NOT NULL,
  `otherdedperperson` decimal(10,0) NOT NULL,
  `stddedperpersonlt` decimal(10,0) NOT NULL,
  `prvdedperpersonlt` decimal(10,0) NOT NULL,
  `otherdedperpersonlt` decimal(10,0) NOT NULL,
  `stddedperfam` decimal(10,0) NOT NULL,
  `prvdedperfam` decimal(10,0) NOT NULL,
  `otherdedperfam` decimal(10,0) NOT NULL,
  `claimtype` smallint(6) NOT NULL,
  `hmocode` varchar(15) NOT NULL,
  `donotbillinsflag` tinyint(1) NOT NULL,
  `diagprint` smallint(6) NOT NULL,
  `nationalplanid` varchar(22) NOT NULL,
  `donotincludegroupplannameflag` smallint(6) NOT NULL,
  `isrealtimeprovider` smallint(6) NOT NULL,
  `claimoptions` int(11) NOT NULL,
  `sourceofpayment` varchar(4) NOT NULL,
  `_unused3` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.inscarrier: ~0 rows (approximately)
/*!40000 ALTER TABLE `inscarrier` DISABLE KEYS */;
/*!40000 ALTER TABLE `inscarrier` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.instab2
CREATE TABLE IF NOT EXISTS `instab2` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `instabid` int(11) NOT NULL,
  `begproc` varchar(11) NOT NULL,
  `endproc` varchar(11) NOT NULL,
  `copayment` decimal(10,0) NOT NULL,
  `percentpay` smallint(6) NOT NULL,
  `preauthreq` smallint(6) NOT NULL,
  `name` varchar(17) NOT NULL,
  `cutoffage` smallint(6) NOT NULL,
  `dedtype` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.instab2: ~0 rows (approximately)
/*!40000 ALTER TABLE `instab2` DISABLE KEYS */;
/*!40000 ALTER TABLE `instab2` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.insured
CREATE TABLE IF NOT EXISTS `insured` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `insuredid` int(11) NOT NULL,
  `insplanid` int(11) NOT NULL,
  `inspartyid` int(11) NOT NULL,
  `fambenefits` decimal(10,0) NOT NULL,
  `sigonfile` smallint(6) NOT NULL,
  `idnum` varchar(26) NOT NULL,
  `ptrcount` smallint(6) NOT NULL,
  `idnum2` varchar(3) NOT NULL,
  `ins` smallint(6) NOT NULL,
  `_unused1` varchar(14) NOT NULL,
  `famstddedmet` decimal(10,0) NOT NULL,
  `famprvdedmet` decimal(10,0) NOT NULL,
  `famotherdedmet` decimal(10,0) NOT NULL,
  `fambenefitslastyr` decimal(10,0) NOT NULL,
  `famstddedlastyr` decimal(10,0) NOT NULL,
  `famprvdedlastyr` decimal(10,0) NOT NULL,
  `famotherdedlastyr` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.insured: ~0 rows (approximately)
/*!40000 ALTER TABLE `insured` DISABLE KEYS */;
/*!40000 ALTER TABLE `insured` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.lcmcase
CREATE TABLE IF NOT EXISTS `lcmcase` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `caseid` int(11) NOT NULL,
  `labid` int(11) NOT NULL,
  `patid` int(11) NOT NULL,
  `createdate` datetime DEFAULT NULL,
  `finisheddate` datetime DEFAULT NULL,
  `categoryid` int(11) NOT NULL,
  `tpprocid` int(11) NOT NULL,
  `provid` varchar(5) NOT NULL,
  `casenum` varchar(11) NOT NULL,
  `caseguid` varchar(37) NOT NULL,
  `flags` int(11) NOT NULL,
  `_unused1` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.lcmcase: ~0 rows (approximately)
/*!40000 ALTER TABLE `lcmcase` DISABLE KEYS */;
/*!40000 ALTER TABLE `lcmcase` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.lcmdef
CREATE TABLE IF NOT EXISTS `lcmdef` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `lcmdefid` int(11) NOT NULL,
  `lcmtype` smallint(6) NOT NULL,
  `groupid` int(11) NOT NULL,
  `name` varchar(33) NOT NULL,
  `_unused1` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.lcmdef: ~0 rows (approximately)
/*!40000 ALTER TABLE `lcmdef` DISABLE KEYS */;
/*!40000 ALTER TABLE `lcmdef` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.lcminfo
CREATE TABLE IF NOT EXISTS `lcminfo` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `lcmlabid` int(11) NOT NULL,
  `rscid` varchar(5) NOT NULL,
  `username` varchar(257) NOT NULL,
  `password` varchar(52) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.lcminfo: ~0 rows (approximately)
/*!40000 ALTER TABLE `lcminfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `lcminfo` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.lcmlab
CREATE TABLE IF NOT EXISTS `lcmlab` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `lcmlabid` int(11) NOT NULL,
  `name` varchar(33) NOT NULL,
  `street1` varchar(33) NOT NULL,
  `street2` varchar(33) NOT NULL,
  `city` varchar(27) NOT NULL,
  `state` varchar(22) NOT NULL,
  `zipcode` varchar(16) NOT NULL,
  `phone` varchar(18) NOT NULL,
  `phoneext` varchar(6) NOT NULL,
  `contact` varchar(33) NOT NULL,
  `emailaddr` varchar(61) NOT NULL,
  `fax` varchar(18) NOT NULL,
  `defshadeguideid` int(11) NOT NULL,
  `defshipperid` int(11) NOT NULL,
  `flags` smallint(6) NOT NULL,
  `internetlabid` varchar(17) NOT NULL,
  `defreceiveshipperid` int(11) NOT NULL,
  `_unused` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.lcmlab: ~0 rows (approximately)
/*!40000 ALTER TABLE `lcmlab` DISABLE KEYS */;
/*!40000 ALTER TABLE `lcmlab` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.lcmlink
CREATE TABLE IF NOT EXISTS `lcmlink` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `linktype` smallint(6) NOT NULL,
  `item1id` int(11) NOT NULL,
  `item2id` int(11) NOT NULL,
  `linkdata` int(11) NOT NULL,
  `_unused1` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.lcmlink: ~0 rows (approximately)
/*!40000 ALTER TABLE `lcmlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `lcmlink` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.lcmlog
CREATE TABLE IF NOT EXISTS `lcmlog` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `caselogid` int(11) NOT NULL,
  `caseid` int(11) NOT NULL,
  `shipmethodid` int(11) NOT NULL,
  `logtype` smallint(6) NOT NULL,
  `logdate` datetime DEFAULT NULL,
  `logtime` varchar(3) NOT NULL,
  `estreceivedate` datetime DEFAULT NULL,
  `estreceivetime` varchar(3) NOT NULL,
  `labestrecdate` datetime DEFAULT NULL,
  `cost` decimal(10,0) NOT NULL,
  `trackingnum` varchar(46) NOT NULL,
  `provid` varchar(5) NOT NULL,
  `flags` smallint(6) NOT NULL,
  `lastactiondate` datetime DEFAULT NULL,
  `_unused1` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.lcmlog: ~0 rows (approximately)
/*!40000 ALTER TABLE `lcmlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `lcmlog` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.lcmship
CREATE TABLE IF NOT EXISTS `lcmship` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `lcmshipid` int(11) NOT NULL,
  `name` varchar(33) NOT NULL,
  `pickuptime` varchar(3) NOT NULL,
  `dropofftime` varchar(3) NOT NULL,
  `lcmshiptype` smallint(6) NOT NULL,
  `flags` smallint(6) NOT NULL,
  `_unused` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.lcmship: ~0 rows (approximately)
/*!40000 ALTER TABLE `lcmship` DISABLE KEYS */;
/*!40000 ALTER TABLE `lcmship` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.medcode
CREATE TABLE IF NOT EXISTS `medcode` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `databaseid` int(11) NOT NULL,
  `medcodetype` int(11) NOT NULL,
  `medcode` varchar(11) NOT NULL,
  `descript` varchar(52) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.medcode: ~0 rows (approximately)
/*!40000 ALTER TABLE `medcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `medcode` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.medlog
CREATE TABLE IF NOT EXISTS `medlog` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `procid` int(11) NOT NULL,
  `claimid` int(11) NOT NULL,
  `patid` int(11) NOT NULL,
  `enddate` datetime DEFAULT NULL,
  `amacptcode` varchar(11) NOT NULL,
  `icd9cmcode1` varchar(11) NOT NULL,
  `icd9cmcode2` varchar(11) NOT NULL,
  `icd9cmcode3` varchar(11) NOT NULL,
  `icd9cmcode4` varchar(11) NOT NULL,
  `modifiers1` varchar(11) NOT NULL,
  `modifiers2` varchar(11) NOT NULL,
  `modifiers3` varchar(11) NOT NULL,
  `servicetype` varchar(5) NOT NULL,
  `serviceplace` varchar(5) NOT NULL,
  `numofunits` smallint(6) NOT NULL,
  `authstatus` smallint(6) NOT NULL,
  `preauthid` int(11) NOT NULL,
  `authstatus2` smallint(6) NOT NULL,
  `amtpriminspaid` decimal(10,0) NOT NULL,
  `amtsecinspaid` decimal(10,0) NOT NULL,
  `amtpreauth` decimal(10,0) NOT NULL,
  `amtsecinspreauthbills` smallint(6) NOT NULL,
  `amtsecinspreauthcents` smallint(6) NOT NULL,
  `amtsecinspreauth` decimal(10,0) NOT NULL,
  `anestminutes` smallint(6) NOT NULL,
  `icdcodesource` smallint(6) NOT NULL,
  `_unused1` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.medlog: ~0 rows (approximately)
/*!40000 ALTER TABLE `medlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `medlog` ENABLE KEYS */;


-- Dumping structure for table akmm6dtx.medxcode
CREATE TABLE IF NOT EXISTS `medxcode` (
  `automodifiedtimestamp` datetime DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `databaseid` int(11) NOT NULL,
  `medcodextype` int(11) NOT NULL,
  `medcode1` varchar(11) NOT NULL,
  `medcode2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table akmm6dtx.medxcode: ~0 rows (approximately)
/*!40000 ALTER TABLE `medxcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `medxcode` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
