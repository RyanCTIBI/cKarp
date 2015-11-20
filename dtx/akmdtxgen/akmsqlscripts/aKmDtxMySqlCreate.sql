###################################################################
###    address - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:19


CREATE TABLE IF NOT EXISTS address (
	`automodifiedtimestamp` DATETIME NULL,
	`addrid` INT NOT NULL,
	`street1` VARCHAR(32) NOT NULL,
	`city` VARCHAR(27) NOT NULL,
	`country` VARCHAR(25) NOT NULL,
	`phoneext` VARCHAR(6) NOT NULL,
	`ptrcount` SMALLINT NOT NULL,
	`_unused1` SMALLINT NOT NULL,
	`state` VARCHAR(22) NOT NULL,
	`zipcode` VARCHAR(16) NOT NULL,
	`phone` VARCHAR(18) NOT NULL,
	`street2` VARCHAR(32) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:19
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    aging - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:19


CREATE TABLE IF NOT EXISTS aging (
	`automodifiedtimestamp` DATETIME NULL,
	`guarid` INT NOT NULL,
	`aging0to30` DECIMAL NOT NULL,
	`aging31to60` DECIMAL NOT NULL,
	`aging61to90` DECIMAL NOT NULL,
	`aging91plus` DECIMAL NOT NULL,
	`_agingunused` DECIMAL NOT NULL,
	`agingdate` DATETIME NULL,
	`lastpaydate` DATETIME NULL,
	`lastpayamt` DECIMAL NOT NULL,
	`lastinspaydate` DATETIME NULL,
	`lastinspayamt` DECIMAL NOT NULL,
	`lastbillingdate` DATETIME NULL,
	`provid1` VARCHAR(5) NOT NULL,
	`provamt1` DECIMAL NOT NULL,
	`provid2` VARCHAR(5) NOT NULL,
	`provamt2` DECIMAL NOT NULL,
	`provid3` VARCHAR(5) NOT NULL,
	`provamt3` DECIMAL NOT NULL,
	`provid4` VARCHAR(5) NOT NULL,
	`provamt4` DECIMAL NOT NULL,
	`provid5` VARCHAR(5) NOT NULL,
	`provamt5` DECIMAL NOT NULL,
	`provid6` VARCHAR(5) NOT NULL,
	`provamt6` DECIMAL NOT NULL,
	`provid7` VARCHAR(5) NOT NULL,
	`provamt7` DECIMAL NOT NULL,
	`provid8` VARCHAR(5) NOT NULL,
	`provamt8` DECIMAL NOT NULL,
	`provid9` VARCHAR(5) NOT NULL,
	`provamt9` DECIMAL NOT NULL,
	`provid10` VARCHAR(5) NOT NULL,
	`provamt10` DECIMAL NOT NULL,
	`_unused1` INT NOT NULL,
	`_unused2` SMALLINT NOT NULL,
	`_unused3` SMALLINT NOT NULL,
	`_unused4` SMALLINT NOT NULL,
	`_unused5` SMALLINT NOT NULL,
	`_unused6` VARCHAR(5) NOT NULL,
	`billingtype` SMALLINT NOT NULL,
	`_unused7` SMALLINT NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:19
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    appt - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:19


CREATE TABLE IF NOT EXISTS appt (
	`automodifiedtimestamp` DATETIME NULL,
	`apptid` INT NOT NULL,
	`apptdate` DATETIME NULL,
	`rsctype` SMALLINT NOT NULL,
	`opid` VARCHAR(5) NOT NULL,
	`rsctype2` SMALLINT NOT NULL,
	`provid` VARCHAR(5) NOT NULL,
	`otherid` SMALLINT NOT NULL,
	`apptbrokenclass` SMALLINT NOT NULL,
	`patname` VARCHAR(42) NOT NULL,
	`patid` INT NOT NULL,
	`apptlen` SMALLINT NOT NULL,
	`amt` DECIMAL NOT NULL,
	`brokendate` DATETIME NULL,
	`apptflag` SMALLINT NOT NULL,
	`reserved2` VARCHAR(7) NOT NULL,
	`phone` VARCHAR(18) NOT NULL,
	`apptreason` VARCHAR(62) NOT NULL,
	`timehr` SMALLINT NOT NULL,
	`timemin` SMALLINT NOT NULL,
	`status` SMALLINT NOT NULL,
	`appttype` SMALLINT NOT NULL,
	`timeblock` SMALLINT NOT NULL,
	`newpataddrid` INT NOT NULL,
	`autoupdatecc` SMALLINT NOT NULL,
	`setamt` SMALLINT NOT NULL,
	`refbytype` SMALLINT NOT NULL,
	`labcaseappt` BOOL NOT NULL,
	`addlprov` VARCHAR(5) NOT NULL,
	`refid` INT NOT NULL,
	`followup` SMALLINT NOT NULL,
	`codeid1` INT NOT NULL,
	`codeid2` INT NOT NULL,
	`codeid3` INT NOT NULL,
	`codeid4` INT NOT NULL,
	`codeid5` INT NOT NULL,
	`codeid6` INT NOT NULL,
	`codeid7` INT NOT NULL,
	`codeid8` INT NOT NULL,
	`codeid9` INT NOT NULL,
	`codeid10` INT NOT NULL,
	`codeid11` INT NOT NULL,
	`codeid12` INT NOT NULL,
	`codeid13` INT NOT NULL,
	`codeid14` INT NOT NULL,
	`codeid15` INT NOT NULL,
	`codeid16` INT NOT NULL,
	`codeid17` INT NOT NULL,
	`codeid18` INT NOT NULL,
	`codeid19` INT NOT NULL,
	`codeid20` INT NOT NULL,
	`apptclass` SMALLINT NOT NULL,
	`rsctype3` SMALLINT NOT NULL,
	`staffid` VARCHAR(5) NOT NULL,
	`modifieddate` DATETIME NULL,
	`codetype1` SMALLINT NOT NULL,
	`codetype2` SMALLINT NOT NULL,
	`codetype3` SMALLINT NOT NULL,
	`codetype4` SMALLINT NOT NULL,
	`codetype5` SMALLINT NOT NULL,
	`codetype6` SMALLINT NOT NULL,
	`codetype7` SMALLINT NOT NULL,
	`codetype8` SMALLINT NOT NULL,
	`codetype9` SMALLINT NOT NULL,
	`codetype10` SMALLINT NOT NULL,
	`codetype11` SMALLINT NOT NULL,
	`codetype12` SMALLINT NOT NULL,
	`codetype13` SMALLINT NOT NULL,
	`codetype14` SMALLINT NOT NULL,
	`codetype15` SMALLINT NOT NULL,
	`codetype16` SMALLINT NOT NULL,
	`codetype17` SMALLINT NOT NULL,
	`codetype18` SMALLINT NOT NULL,
	`codetype19` SMALLINT NOT NULL,
	`codetype20` SMALLINT NOT NULL,
	`createdate` DATETIME NULL,
	`createdbyuserid` VARCHAR(5) NOT NULL,
	`pinboard` SMALLINT NOT NULL,
	`workstationid` SMALLINT NOT NULL,
	`orgdate` DATETIME NULL,
	`orgtimehr` SMALLINT NOT NULL,
	`orgtimemin` SMALLINT NOT NULL,
	`createtimehr` SMALLINT NOT NULL,
	`createtimemin` SMALLINT NOT NULL,
	`pattern` BLOB NOT NULL,
	`reserved` VARCHAR(11) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:19
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    apptevent - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:19


CREATE TABLE IF NOT EXISTS apptevent (
	`automodifiedtimestamp` DATETIME NULL,
	`appteventrecid` INT NOT NULL,
	`opid` VARCHAR(5) NOT NULL,
	`eventdate` DATETIME NULL,
	`starttime` INT NOT NULL,
	`endtime` INT NOT NULL,
	`createdate` DATETIME NULL,
	`createtime` INT NOT NULL,
	`closeopflag` SMALLINT NOT NULL,
	`shownotesoneventflag` SMALLINT NOT NULL,
	`centerdescriptflag` SMALLINT NOT NULL,
	`color` INT NOT NULL,
	`descript` VARCHAR(62) NOT NULL,
	`pinboardevent` SMALLINT NOT NULL,
	`workstationid` SMALLINT NOT NULL,
	`origeventdate` DATETIME NULL,
	`eventseriesid` INT NOT NULL,
	`reserved` VARCHAR(22) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:19
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    appthist - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:19


CREATE TABLE IF NOT EXISTS appthist (
	`automodifiedtimestamp` DATETIME NULL,
	`apptid` INT NOT NULL,
	`parentapptid` INT NOT NULL,
	`modifieddate` DATETIME NULL,
	`modifiedtime` INT NOT NULL,
	`patid` INT NOT NULL,
	`userid` VARCHAR(5) NOT NULL,
	`provid` VARCHAR(5) NOT NULL,
	`opid` VARCHAR(5) NOT NULL,
	`staffid` VARCHAR(5) NOT NULL,
	`apptreason` VARCHAR(62) NOT NULL,
	`apptlen` SMALLINT NOT NULL,
	`status` VARCHAR(8) NOT NULL,
	`schedflag` SMALLINT NOT NULL,
	`appttype` VARCHAR(21) NOT NULL,
	`apptdate` DATETIME NULL,
	`timehr` SMALLINT NOT NULL,
	`timemin` SMALLINT NOT NULL,
	`labcaseappt` SMALLINT NOT NULL,
	`notechange` SMALLINT NOT NULL,
	`createflag` SMALLINT NOT NULL,
	`lastflag` SMALLINT NOT NULL,
	`deletedflag` SMALLINT NOT NULL,
	`createddate` DATETIME NULL,
	`createduserid` VARCHAR(5) NOT NULL,
	`note` VARCHAR(8193) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:19
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    clinicalnote - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:19


CREATE TABLE IF NOT EXISTS clinicalnote (
	`automodifiedtimestamp` DATETIME NULL,
	`cnotesid` INT NOT NULL,
	`patid` INT NOT NULL,
	`provid` VARCHAR(5) NOT NULL,
	`createdatetime` DATETIME NULL,
	`entrydatetime` DATETIME NULL,
	`signatureid` INT NOT NULL,
	`lockeddate` DATETIME NULL,
	`_reserved` VARCHAR(43) NOT NULL,
	`notetext` VARCHAR(8193) NULL
);


##### toK! 19 / 11 / 2015 16: 26:19
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    clinicalnotesup - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:19


CREATE TABLE IF NOT EXISTS clinicalnotesup (
	`automodifiedtimestamp` DATETIME NULL,
	`cnotessupid` INT NOT NULL,
	`recordtype` INT NOT NULL,
	`imageindex` SMALLINT NOT NULL,
	`categoryid` INT NOT NULL,
	`position` SMALLINT NOT NULL,
	`descript` VARCHAR(32) NOT NULL,
	`_reserved` VARCHAR(21) NOT NULL,
	`xmltext` VARCHAR(4001) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:19
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    cncategory - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:19


CREATE TABLE IF NOT EXISTS cncategory (
	`automodifiedtimestamp` DATETIME NULL,
	`categoryid` INT NOT NULL,
	`imageindex` SMALLINT NOT NULL,
	`position` INT NOT NULL,
	`descript` VARCHAR(53) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:19
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    comm - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:19


CREATE TABLE IF NOT EXISTS comm (
	`automodifiedtimestamp` DATETIME NULL,
	`stationid` SMALLINT NOT NULL,
	`_unused1` SMALLINT NOT NULL,
	`changedate` DATETIME NULL,
	`displaymode` SMALLINT NOT NULL,
	`displayop` VARCHAR(5) NOT NULL,
	`displayprov` VARCHAR(5) NOT NULL,
	`commcount` SMALLINT NOT NULL,
	`commtype` SMALLINT NOT NULL,
	`apptid1` INT NOT NULL,
	`apptid2` INT NOT NULL,
	`apptid3` INT NOT NULL,
	`apptid4` INT NOT NULL,
	`apptid5` INT NOT NULL,
	`apptid6` INT NOT NULL,
	`apptid7` INT NOT NULL,
	`apptid8` INT NOT NULL,
	`apptid9` INT NOT NULL,
	`apptid10` INT NOT NULL,
	`apptid11` INT NOT NULL,
	`apptid12` INT NOT NULL,
	`apptid13` INT NOT NULL,
	`apptid14` INT NOT NULL,
	`apptid15` INT NOT NULL,
	`status1` SMALLINT NOT NULL,
	`status2` SMALLINT NOT NULL,
	`status3` SMALLINT NOT NULL,
	`status4` SMALLINT NOT NULL,
	`status5` SMALLINT NOT NULL,
	`status6` SMALLINT NOT NULL,
	`status7` SMALLINT NOT NULL,
	`status8` SMALLINT NOT NULL,
	`status9` SMALLINT NOT NULL,
	`status10` SMALLINT NOT NULL,
	`status11` SMALLINT NOT NULL,
	`status12` SMALLINT NOT NULL,
	`status13` SMALLINT NOT NULL,
	`status14` SMALLINT NOT NULL,
	`status15` SMALLINT NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    consent - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS consent (
	`automodifiedtimestamp` DATETIME NULL,
	`consentformid` INT NOT NULL,
	`active` BOOL NOT NULL,
	`name` VARCHAR(31) NOT NULL,
	`version` INT NOT NULL,
	`excludeproccode` BOOL NOT NULL,
	`_unused` VARCHAR(20) NOT NULL,
	`consenttext` VARCHAR(8193) NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    contact - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS contact (
	`automodifiedtimestamp` DATETIME NULL,
	`contactid` INT NOT NULL,
	`_unused1` INT NOT NULL,
	`contactdate` DATETIME NULL,
	`contacttime` INT NOT NULL,
	`patid` INT NOT NULL,
	`provid` VARCHAR(5) NOT NULL,
	`_oldtitle` VARCHAR(21) NOT NULL,
	`title` VARCHAR(81) NOT NULL,
	`_unused2` SMALLINT NOT NULL,
	`_unused3` SMALLINT NOT NULL,
	`_unused4` INT NOT NULL,
	`_unused5` INT NOT NULL,
	`contacttype` SMALLINT NOT NULL,
	`provtype` SMALLINT NOT NULL,
	`datatype` SMALLINT NOT NULL,
	`refid` INT NOT NULL,
	`_unused6` VARCHAR(21) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    crexam - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS crexam (
	`automodifiedtimestamp` DATETIME NULL,
	`patid` INT NOT NULL,
	`examdate` DATETIME NULL,
	`datestarted` DATETIME NULL,
	`provid` VARCHAR(6) NOT NULL,
	`status` SMALLINT NOT NULL,
	`examtype` SMALLINT NOT NULL,
	`sentdate` DATETIME NULL,
	`stuff` VARCHAR(705) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    def2 - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS def2 (
	`automodifiedtimestamp` DATETIME NULL,
	`deftype` SMALLINT NOT NULL,
	`defid` SMALLINT NOT NULL,
	`name` VARCHAR(17) NOT NULL,
	`recallid` SMALLINT NOT NULL,
	`providfrom` VARCHAR(5) NOT NULL,
	`providto` VARCHAR(5) NOT NULL,
	`status` SMALLINT NOT NULL,
	`billingtypefrom` SMALLINT NOT NULL,
	`billingtypeto` SMALLINT NOT NULL,
	`linkedappt` SMALLINT NOT NULL,
	`duebeforeunit` SMALLINT NOT NULL,
	`duebeforeqty` SMALLINT NOT NULL,
	`dueafterunit` SMALLINT NOT NULL,
	`dueafterqty` SMALLINT NOT NULL,
	`priorfromunit` SMALLINT NOT NULL,
	`priorfromqty` SMALLINT NOT NULL,
	`priortounit` SMALLINT NOT NULL,
	`priortoqty` SMALLINT NOT NULL,
	`visitfromunit` SMALLINT NOT NULL,
	`visitfromqty` SMALLINT NOT NULL,
	`visittounit` SMALLINT NOT NULL,
	`visittoqty` SMALLINT NOT NULL,
	`sortorder1` SMALLINT NOT NULL,
	`sortorder2` SMALLINT NOT NULL,
	`sortorder3` SMALLINT NOT NULL,
	`sortorder4` SMALLINT NOT NULL,
	`sortorder5` SMALLINT NOT NULL,
	`duedatefromrange` DATETIME NULL,
	`duedatetorange` DATETIME NULL,
	`searchtype` SMALLINT NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    dentition - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS dentition (
	`automodifiedtimestamp` DATETIME NULL,
	`patid` INT NOT NULL,
	`changedate` DATETIME NULL,
	`toothstates` BLOB NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    diaglog - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS diaglog (
	`automodifiedtimestamp` DATETIME NULL,
	`procid` INT NOT NULL,
	`claimid` INT NOT NULL,
	`patid` INT NOT NULL,
	`codes1` VARCHAR(11) NOT NULL,
	`codes2` VARCHAR(11) NOT NULL,
	`codes3` VARCHAR(11) NOT NULL,
	`codes4` VARCHAR(11) NOT NULL,
	`codes5` VARCHAR(11) NOT NULL,
	`codes6` VARCHAR(11) NOT NULL,
	`codes7` VARCHAR(11) NOT NULL,
	`codes8` VARCHAR(11) NOT NULL,
	`codesource1` SMALLINT NOT NULL,
	`codesource2` SMALLINT NOT NULL,
	`codesource3` SMALLINT NOT NULL,
	`codesource4` SMALLINT NOT NULL,
	`_unused1` VARCHAR(17) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    diagx - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS diagx (
	`automodifiedtimestamp` DATETIME NULL,
	`codeid` INT NOT NULL,
	`adacode` VARCHAR(11) NOT NULL,
	`diagcode` VARCHAR(11) NOT NULL,
	`diagxflag` BOOL NOT NULL,
	`diagxcodesource` SMALLINT NOT NULL,
	`_unused1` VARCHAR(10) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    docattach - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS docattach (
	`automodifiedtimestamp` DATETIME NULL,
	`attachid` INT NOT NULL,
	`docid` INT NOT NULL,
	`attachtotype` INT NOT NULL,
	`attachtoentityid` INT NOT NULL,
	`_unusedmodifieddate` DATETIME NULL,
	`signatureid` INT NOT NULL,
	`_reserved` VARCHAR(11) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    doccat - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS doccat (
	`automodifiedtimestamp` DATETIME NULL,
	`dcdoctypeid` INT NOT NULL,
	`name` VARCHAR(42) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    document - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS document (
	`automodifiedtimestamp` DATETIME NULL,
	`docid` INT NOT NULL,
	`doctypeid` INT NOT NULL,
	`descript` VARCHAR(42) NOT NULL,
	`pages` INT NOT NULL,
	`createdate` DATETIME NULL,
	`lockeddate` DATETIME NULL,
	`annotationid` INT NOT NULL,
	`docfmt` SMALLINT NOT NULL,
	`_unused1` VARCHAR(20) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    dxport - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS dxport (
	`automodifiedtimestamp` DATETIME NULL,
	`portid` INT NOT NULL,
	`exportdate` DATETIME NULL,
	`startdate` DATETIME NULL,
	`enddate` DATETIME NULL,
	`startprov` VARCHAR(5) NOT NULL,
	`endprov` VARCHAR(5) NOT NULL,
	`production` INT NOT NULL,
	`collection` INT NOT NULL,
	`othercollection` INT NOT NULL,
	`filename` VARCHAR(81) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    eattach - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS eattach (
	`automodifiedtimestamp` DATETIME NULL,
	`eattachid` INT NOT NULL,
	`entityid` INT NOT NULL,
	`attachedsource` INT NOT NULL,
	`attachmenttype` INT NOT NULL,
	`docid` INT NOT NULL,
	`attachmentdate` DATETIME NULL,
	`path_cnum` VARCHAR(261) NOT NULL,
	`_unused2` SMALLINT NOT NULL,
	`x12indexid` SMALLINT NOT NULL,
	`_unused1` VARCHAR(31) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    employer - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS employer (
	`automodifiedtimestamp` DATETIME NULL,
	`emptype` SMALLINT NOT NULL,
	`_unused1` SMALLINT NOT NULL,
	`empid` INT NOT NULL,
	`name` VARCHAR(33) NOT NULL,
	`street1` VARCHAR(32) NOT NULL,
	`city` VARCHAR(27) NOT NULL,
	`country` VARCHAR(25) NOT NULL,
	`phoneext` VARCHAR(6) NOT NULL,
	`_unused2` SMALLINT NOT NULL,
	`state` VARCHAR(22) NOT NULL,
	`zipcode` VARCHAR(16) NOT NULL,
	`phone` VARCHAR(18) NOT NULL,
	`street2` VARCHAR(32) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    erxmedicine - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS erxmedicine (
	`automodifiedtimestamp` DATETIME NULL,
	`medid` INT NOT NULL,
	`medguid` VARCHAR(37) NOT NULL,
	`lastupload` DATETIME NULL,
	`source` INT NOT NULL,
	`patid` INT NOT NULL,
	`provid1` VARCHAR(6) NOT NULL,
	`provid2` VARCHAR(6) NOT NULL,
	`prescripdate` DATETIME NULL,
	`enddate` DATETIME NULL,
	`expiredate` DATETIME NULL,
	`status` INT NOT NULL,
	`medname` VARCHAR(51) NOT NULL,
	`ndccode` VARCHAR(12) NOT NULL,
	`medispanparid` VARCHAR(8) NOT NULL,
	`txmethod` INT NOT NULL,
	`icd9code` VARCHAR(12) NOT NULL,
	`strength` VARCHAR(12) NOT NULL,
	`strengthuom` VARCHAR(12) NOT NULL,
	`medform` VARCHAR(22) NOT NULL,
	`route` VARCHAR(22) NOT NULL,
	`sigtext` VARCHAR(102) NOT NULL,
	`refills` VARCHAR(102) NOT NULL,
	`quantity` INT NOT NULL,
	`daysofsupply` INT NOT NULL,
	`pharmcomments` VARCHAR(514) NOT NULL,
	`daw` BOOL NOT NULL,
	`pharmname` VARCHAR(102) NOT NULL,
	`_unused1` VARCHAR(13) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    erxpatient - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS erxpatient (
	`automodifiedtimestamp` DATETIME NULL,
	`erxpatid` INT NOT NULL,
	`patid` INT NOT NULL,
	`patguid` VARCHAR(37) NOT NULL,
	`licenseguid` VARCHAR(37) NOT NULL,
	`lastupload` DATETIME NULL,
	`_unused1` VARCHAR(21) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    erxprovinfo - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS erxprovinfo (
	`automodifiedtimestamp` DATETIME NULL,
	`providerid` VARCHAR(5) NOT NULL,
	`deaschedule2` BOOL NOT NULL,
	`deaschedule3` BOOL NOT NULL,
	`deaschedule4` BOOL NOT NULL,
	`deaschedule5` BOOL NOT NULL,
	`suffix` VARCHAR(8) NOT NULL,
	`email` VARCHAR(102) NOT NULL,
	`deaexpiration` DATETIME NULL,
	`statelicensestate` VARCHAR(4) NOT NULL,
	`statelicenseexpiration` DATETIME NULL,
	`specialitycd` VARCHAR(12) NOT NULL,
	`fullnpi` VARCHAR(52) NOT NULL,
	`fulldea` VARCHAR(52) NOT NULL,
	`_unused2` INT NOT NULL,
	`allscriptsid` INT NOT NULL,
	`fax` VARCHAR(12) NOT NULL,
	`_unused1` VARCHAR(56) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    erxscripts - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS erxscripts (
	`automodifiedtimestamp` DATETIME NULL,
	`allscriptsid` INT NOT NULL,
	`licenseguid` VARCHAR(37) NOT NULL,
	`partnerguid` VARCHAR(37) NOT NULL,
	`lastupload` DATETIME NULL,
	`islicenseactive` BOOL NOT NULL,
	`grouping` INT NOT NULL,
	`expirationdate` DATETIME NULL,
	`allowedusers` SMALLINT NOT NULL,
	`currentusers` SMALLINT NOT NULL,
	`warndays` SMALLINT NOT NULL,
	`issiteenabled` INT NOT NULL,
	`_unused1` VARCHAR(10) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    erxuser - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS erxuser (
	`automodifiedtimestamp` DATETIME NULL,
	`erxuserid` INT NOT NULL,
	`urscid` VARCHAR(5) NOT NULL,
	`userguid` VARCHAR(37) NOT NULL,
	`username` VARCHAR(102) NOT NULL,
	`partnerguid` VARCHAR(37) NOT NULL,
	`licenseguid` VARCHAR(37) NOT NULL,
	`typeid` INT NOT NULL,
	`lastupload` DATETIME NULL,
	`adminrights` BOOL NOT NULL,
	`enabled` BOOL NOT NULL,
	`primaryflag` BOOL NOT NULL,
	`confirmed` BOOL NOT NULL,
	`password` VARCHAR(12) NOT NULL,
	`_unused1` VARCHAR(9) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    erxusertype - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS erxusertype (
	`automodifiedtimestamp` DATETIME NULL,
	`typeid` INT NOT NULL,
	`description` VARCHAR(102) NOT NULL,
	`_unused1` VARCHAR(51) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    feeschedule - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS feeschedule (
	`automodifiedtimestamp` DATETIME NULL,
	`proccodeid` INT NOT NULL,
	`feeschedcategoryid` SMALLINT NOT NULL,
	`amt` DECIMAL NOT NULL,
	`amt2` DECIMAL NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    feeschedulenames - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS feeschedulenames (
	`automodifiedtimestamp` DATETIME NULL,
	`feeschedcategoryid` SMALLINT NOT NULL,
	`feename` VARCHAR(9) NOT NULL,
	`_unused1` VARCHAR(101) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    fulldef - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS fulldef (
	`automodifiedtimestamp` DATETIME NULL,
	`deftype` SMALLINT NOT NULL,
	`defid` SMALLINT NOT NULL,
	`descript` VARCHAR(53) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:20
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    fullnotes - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:20


CREATE TABLE IF NOT EXISTS fullnotes (
	`automodifiedtimestamp` DATETIME NULL,
	`notetype` SMALLINT NOT NULL,
	`_unused1` SMALLINT NOT NULL,
	`noteid` INT NOT NULL,
	`notedate` DATETIME NULL,
	`notetext` VARCHAR(8191) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    fullproclog - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS fullproclog (
	`automodifiedtimestamp` DATETIME NULL,
	`patid` INT NOT NULL,
	`procid` INT NOT NULL,
	`guarid` INT NOT NULL,
	`chartstatus` SMALLINT NOT NULL,
	`authstatus` SMALLINT NOT NULL,
	`procdate` DATETIME NULL,
	`proccodeid` INT NOT NULL,
	`preauthid` INT NOT NULL,
	`claimid` INT NOT NULL,
	`proclogclass` SMALLINT NOT NULL,
	`proclogorder` SMALLINT NOT NULL,
	`provid` VARCHAR(5) NOT NULL,
	`history` BOOL NOT NULL,
	`authstatus2` SMALLINT NOT NULL,
	`amt` DECIMAL NOT NULL,
	`amtpriminspaid` DECIMAL NOT NULL,
	`amtsecinspaid` DECIMAL NOT NULL,
	`amtpreauth` DECIMAL NOT NULL,
	`createdate` DATETIME NULL,
	`amtsecpreauthdollar` SMALLINT NOT NULL,
	`paintflag` BOOL NOT NULL,
	`amtsecpreauthcents` SMALLINT NOT NULL,
	`materialcost` DECIMAL NOT NULL,
	`labexpense` DECIMAL NOT NULL,
	`cdareason` SMALLINT NOT NULL,
	`cdalabcode` SMALLINT NOT NULL,
	`toothrangestart` SMALLINT NOT NULL,
	`toothrangeend` SMALLINT NOT NULL,
	`surfacestring` BLOB NOT NULL,
	`surfm` SMALLINT NOT NULL,
	`surfo` BOOL NOT NULL,
	`surfd` BOOL NOT NULL,
	`surfl` BOOL NOT NULL,
	`surff` BOOL NOT NULL,
	`surf5` BOOL NOT NULL,
	`amtsecpreauth` DECIMAL NOT NULL,
	`invalidasofflagstpdate` DATETIME NULL,
	`medproctype` BOOL NOT NULL,
	`srflag` SMALLINT NOT NULL,
	`donotbillinsflag` BOOL NOT NULL,
	`diag` BOOL NOT NULL,
	`refid` INT NOT NULL,
	`reftype` SMALLINT NOT NULL,
	`labfee2` DECIMAL NOT NULL,
	`cdalabcode2` VARCHAR(2) NOT NULL,
	`srflagex` INT NOT NULL,
	`txcaseid` INT NOT NULL,
	`txcaseindex` SMALLINT NOT NULL,
	`checknum` VARCHAR(22) NOT NULL,
	`appliedtopa` BOOL NOT NULL,
	`startcompdatereq` SMALLINT NOT NULL,
	`completiondate` DATETIME NULL,
	`startdate` DATETIME NULL,
	`primestoverride4orphaned` DECIMAL NOT NULL,
	`secestoverride4orphaned` DECIMAL NOT NULL,
	`_unused` VARCHAR(3) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    gratacts - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS gratacts (
	`automodifiedtimestamp` DATETIME NULL,
	`gratactsid` INT NOT NULL,
	`refid` INT NOT NULL,
	`gratid` INT NOT NULL,
	`gratdate` DATETIME NULL,
	`amt` DECIMAL NOT NULL,
	`provid` VARCHAR(5) NOT NULL,
	`_unused1` VARCHAR(27) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    gratuity - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS gratuity (
	`automodifiedtimestamp` DATETIME NULL,
	`gratid` INT NOT NULL,
	`descript` VARCHAR(34) NOT NULL,
	`amt` DECIMAL NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    guestimate - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS guestimate (
	`automodifiedtimestamp` DATETIME NULL,
	`insid` INT NOT NULL,
	`adacode` VARCHAR(11) NOT NULL,
	`amt` DECIMAL NOT NULL,
	`percentage` SMALLINT NOT NULL,
	`_unused1` SMALLINT NOT NULL,
	`gdate` DATETIME NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    histlog - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS histlog (
	`automodifiedtimestamp` DATETIME NULL,
	`patid` INT NOT NULL,
	`histdate` VARCHAR(21) NOT NULL,
	`provid` VARCHAR(11) NOT NULL,
	`descript` VARCHAR(101) NOT NULL,
	`debit` VARCHAR(16) NOT NULL,
	`credit` VARCHAR(16) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    histpat - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS histpat (
	`automodifiedtimestamp` DATETIME NULL,
	`patid` INT NOT NULL,
	`guarid` INT NOT NULL,
	`lastname` VARCHAR(41) NOT NULL,
	`firstname` VARCHAR(41) NOT NULL,
	`mi` VARCHAR(3) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    inscarrier - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS inscarrier (
	`automodifiedtimestamp` DATETIME NULL,
	`insid` INT NOT NULL,
	`empid` INT NOT NULL,
	`insconame` VARCHAR(33) NOT NULL,
	`groupname` VARCHAR(33) NOT NULL,
	`street1` VARCHAR(32) NOT NULL,
	`city` VARCHAR(27) NOT NULL,
	`country` VARCHAR(25) NOT NULL,
	`phoneext` VARCHAR(6) NOT NULL,
	`contact` VARCHAR(32) NOT NULL,
	`initadacodechar` VARCHAR(2) NOT NULL,
	`groupnum` VARCHAR(26) NOT NULL,
	`unionnum` VARCHAR(8) NOT NULL,
	`renewmon` SMALLINT NOT NULL,
	`claimfmt` SMALLINT NOT NULL,
	`elecfmt` SMALLINT NOT NULL,
	`altproccodeid` SMALLINT NOT NULL,
	`feeschtype` SMALLINT NOT NULL,
	`lastupdate` DATETIME NULL,
	`maxcovperson` DECIMAL NOT NULL,
	`maxcovfam` DECIMAL NOT NULL,
	`instableid` INT NOT NULL,
	`timelimit` SMALLINT NOT NULL,
	`_unused1` SMALLINT NOT NULL,
	`xray` SMALLINT NOT NULL,
	`inscov` SMALLINT NOT NULL,
	`secinscov` SMALLINT NOT NULL,
	`_unused2` SMALLINT NOT NULL,
	`state` VARCHAR(22) NOT NULL,
	`zipcode` VARCHAR(16) NOT NULL,
	`phone` VARCHAR(18) NOT NULL,
	`street2` VARCHAR(32) NOT NULL,
	`feesched` SMALLINT NOT NULL,
	`instype` SMALLINT NOT NULL,
	`carrieridnum` VARCHAR(11) NOT NULL,
	`secnum` VARCHAR(12) NOT NULL,
	`ucr` SMALLINT NOT NULL,
	`trojannum` VARCHAR(9) NOT NULL,
	`dentwellnessindex` SMALLINT NOT NULL,
	`payerid` VARCHAR(7) NOT NULL,
	`insflag` SMALLINT NOT NULL,
	`stddedperperson` DECIMAL NOT NULL,
	`prvdedperperson` DECIMAL NOT NULL,
	`otherdedperperson` DECIMAL NOT NULL,
	`stddedperpersonlt` DECIMAL NOT NULL,
	`prvdedperpersonlt` DECIMAL NOT NULL,
	`otherdedperpersonlt` DECIMAL NOT NULL,
	`stddedperfam` DECIMAL NOT NULL,
	`prvdedperfam` DECIMAL NOT NULL,
	`otherdedperfam` DECIMAL NOT NULL,
	`claimtype` SMALLINT NOT NULL,
	`hmocode` VARCHAR(15) NOT NULL,
	`donotbillinsflag` BOOL NOT NULL,
	`diagprint` SMALLINT NOT NULL,
	`nationalplanid` VARCHAR(22) NOT NULL,
	`donotincludegroupplannameflag` SMALLINT NOT NULL,
	`isrealtimeprovider` SMALLINT NOT NULL,
	`claimoptions` INT NOT NULL,
	`sourceofpayment` VARCHAR(4) NOT NULL,
	`_unused3` VARCHAR(7) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    instab2 - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS instab2 (
	`automodifiedtimestamp` DATETIME NULL,
	`instabid` INT NOT NULL,
	`begproc` VARCHAR(11) NOT NULL,
	`endproc` VARCHAR(11) NOT NULL,
	`copayment` DECIMAL NOT NULL,
	`percentpay` SMALLINT NOT NULL,
	`preauthreq` SMALLINT NOT NULL,
	`name` VARCHAR(17) NOT NULL,
	`cutoffage` SMALLINT NOT NULL,
	`dedtype` SMALLINT NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    insured - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS insured (
	`automodifiedtimestamp` DATETIME NULL,
	`insuredid` INT NOT NULL,
	`insplanid` INT NOT NULL,
	`inspartyid` INT NOT NULL,
	`fambenefits` DECIMAL NOT NULL,
	`sigonfile` SMALLINT NOT NULL,
	`idnum` VARCHAR(26) NOT NULL,
	`ptrcount` SMALLINT NOT NULL,
	`idnum2` VARCHAR(3) NOT NULL,
	`ins` SMALLINT NOT NULL,
	`_unused1` VARCHAR(14) NOT NULL,
	`famstddedmet` DECIMAL NOT NULL,
	`famprvdedmet` DECIMAL NOT NULL,
	`famotherdedmet` DECIMAL NOT NULL,
	`fambenefitslastyr` DECIMAL NOT NULL,
	`famstddedlastyr` DECIMAL NOT NULL,
	`famprvdedlastyr` DECIMAL NOT NULL,
	`famotherdedlastyr` DECIMAL NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    lcmcase - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS lcmcase (
	`automodifiedtimestamp` DATETIME NULL,
	`caseid` INT NOT NULL,
	`labid` INT NOT NULL,
	`patid` INT NOT NULL,
	`createdate` DATETIME NULL,
	`finisheddate` DATETIME NULL,
	`categoryid` INT NOT NULL,
	`tpprocid` INT NOT NULL,
	`provid` VARCHAR(5) NOT NULL,
	`casenum` VARCHAR(11) NOT NULL,
	`caseguid` VARCHAR(37) NOT NULL,
	`flags` INT NOT NULL,
	`_unused1` VARCHAR(31) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    lcmdef - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS lcmdef (
	`automodifiedtimestamp` DATETIME NULL,
	`lcmdefid` INT NOT NULL,
	`lcmtype` SMALLINT NOT NULL,
	`groupid` INT NOT NULL,
	`name` VARCHAR(33) NOT NULL,
	`_unused1` VARCHAR(11) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    lcminfo - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS lcminfo (
	`automodifiedtimestamp` DATETIME NULL,
	`lcmlabid` INT NOT NULL,
	`rscid` VARCHAR(5) NOT NULL,
	`username` VARCHAR(257) NOT NULL,
	`password` VARCHAR(52) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    lcmlab - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS lcmlab (
	`automodifiedtimestamp` DATETIME NULL,
	`lcmlabid` INT NOT NULL,
	`name` VARCHAR(33) NOT NULL,
	`street1` VARCHAR(33) NOT NULL,
	`street2` VARCHAR(33) NOT NULL,
	`city` VARCHAR(27) NOT NULL,
	`state` VARCHAR(22) NOT NULL,
	`zipcode` VARCHAR(16) NOT NULL,
	`phone` VARCHAR(18) NOT NULL,
	`phoneext` VARCHAR(6) NOT NULL,
	`contact` VARCHAR(33) NOT NULL,
	`emailaddr` VARCHAR(61) NOT NULL,
	`fax` VARCHAR(18) NOT NULL,
	`defshadeguideid` INT NOT NULL,
	`defshipperid` INT NOT NULL,
	`flags` SMALLINT NOT NULL,
	`internetlabid` VARCHAR(17) NOT NULL,
	`defreceiveshipperid` INT NOT NULL,
	`_unused` VARCHAR(31) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    lcmlink - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS lcmlink (
	`automodifiedtimestamp` DATETIME NULL,
	`linktype` SMALLINT NOT NULL,
	`item1id` INT NOT NULL,
	`item2id` INT NOT NULL,
	`linkdata` INT NOT NULL,
	`_unused1` VARCHAR(11) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    lcmlog - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS lcmlog (
	`automodifiedtimestamp` DATETIME NULL,
	`caselogid` INT NOT NULL,
	`caseid` INT NOT NULL,
	`shipmethodid` INT NOT NULL,
	`logtype` SMALLINT NOT NULL,
	`logdate` DATETIME NULL,
	`logtime` VARCHAR(3) NOT NULL,
	`estreceivedate` DATETIME NULL,
	`estreceivetime` VARCHAR(3) NOT NULL,
	`labestrecdate` DATETIME NULL,
	`cost` DECIMAL NOT NULL,
	`trackingnum` VARCHAR(46) NOT NULL,
	`provid` VARCHAR(5) NOT NULL,
	`flags` SMALLINT NOT NULL,
	`lastactiondate` DATETIME NULL,
	`_unused1` VARCHAR(17) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    lcmship - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS lcmship (
	`automodifiedtimestamp` DATETIME NULL,
	`lcmshipid` INT NOT NULL,
	`name` VARCHAR(33) NOT NULL,
	`pickuptime` VARCHAR(3) NOT NULL,
	`dropofftime` VARCHAR(3) NOT NULL,
	`lcmshiptype` SMALLINT NOT NULL,
	`flags` SMALLINT NOT NULL,
	`_unused` VARCHAR(21) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    medcode - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS medcode (
	`automodifiedtimestamp` DATETIME NULL,
	`uid` INT NOT NULL,
	`databaseid` INT NOT NULL,
	`medcodetype` INT NOT NULL,
	`medcode` VARCHAR(11) NOT NULL,
	`descript` VARCHAR(52) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    medlog - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS medlog (
	`automodifiedtimestamp` DATETIME NULL,
	`procid` INT NOT NULL,
	`claimid` INT NOT NULL,
	`patid` INT NOT NULL,
	`enddate` DATETIME NULL,
	`amacptcode` VARCHAR(11) NOT NULL,
	`icd9cmcode1` VARCHAR(11) NOT NULL,
	`icd9cmcode2` VARCHAR(11) NOT NULL,
	`icd9cmcode3` VARCHAR(11) NOT NULL,
	`icd9cmcode4` VARCHAR(11) NOT NULL,
	`modifiers1` VARCHAR(11) NOT NULL,
	`modifiers2` VARCHAR(11) NOT NULL,
	`modifiers3` VARCHAR(11) NOT NULL,
	`servicetype` VARCHAR(5) NOT NULL,
	`serviceplace` VARCHAR(5) NOT NULL,
	`numofunits` SMALLINT NOT NULL,
	`authstatus` SMALLINT NOT NULL,
	`preauthid` INT NOT NULL,
	`authstatus2` SMALLINT NOT NULL,
	`amtpriminspaid` DECIMAL NOT NULL,
	`amtsecinspaid` DECIMAL NOT NULL,
	`amtpreauth` DECIMAL NOT NULL,
	`amtsecinspreauthbills` SMALLINT NOT NULL,
	`amtsecinspreauthcents` SMALLINT NOT NULL,
	`amtsecinspreauth` DECIMAL NOT NULL,
	`anestminutes` SMALLINT NOT NULL,
	`icdcodesource` SMALLINT NOT NULL,
	`_unused1` VARCHAR(18) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    medxcode - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS medxcode (
	`automodifiedtimestamp` DATETIME NULL,
	`uid` INT NOT NULL,
	`databaseid` INT NOT NULL,
	`medcodextype` INT NOT NULL,
	`medcode1` VARCHAR(11) NOT NULL,
	`medcode2` VARCHAR(11) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    netid - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS netid (
	`automodifiedtimestamp` DATETIME NULL,
	`type` SMALLINT NOT NULL,
	`netid` SMALLINT NOT NULL,
	`usage` SMALLINT NOT NULL,
	`_unused1` VARCHAR(4) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    notation - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS notation (
	`automodifiedtimestamp` DATETIME NULL,
	`notationid` INT NOT NULL,
	`notationtype` SMALLINT NOT NULL,
	`entityid` INT NOT NULL,
	`modifiedtimestamp` DATETIME NULL,
	`strokes` BLOB NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    options - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS options (
	`automodifiedtimestamp` DATETIME NULL,
	`optionsection` VARCHAR(51) NOT NULL,
	`optionkey` VARCHAR(51) NOT NULL,
	`optionvalue` VARCHAR(4097) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    paintx - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS paintx (
	`automodifiedtimestamp` DATETIME NULL,
	`toothimageid` SMALLINT NOT NULL,
	`paintcatetoryid` SMALLINT NOT NULL,
	`surfacesbitmask` SMALLINT NOT NULL,
	`cmdcount` SMALLINT NOT NULL,
	`paintxdata` BLOB NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    palink - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS palink (
	`automodifiedtimestamp` DATETIME NULL,
	`uid` INT NOT NULL,
	`alertuid` INT NOT NULL,
	`guarid` INT NOT NULL,
	`patid` INT NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:21
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    patalerts - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:21


CREATE TABLE IF NOT EXISTS patalerts (
	`automodifiedtimestamp` DATETIME NULL,
	`alertid` INT NOT NULL,
	`patid` INT NOT NULL,
	`descript` VARCHAR(17) NOT NULL,
	`displayareas1` INT NOT NULL,
	`displayareas2` INT NOT NULL,
	`startdate` DATETIME NULL,
	`enddate` DATETIME NULL,
	`always` SMALLINT NOT NULL,
	`_unused1` VARCHAR(4) NOT NULL,
	`apptsymbol` SMALLINT NOT NULL,
	`_unused2` VARCHAR(4) NOT NULL,
	`balance` SMALLINT NOT NULL,
	`_unused3` VARCHAR(4) NOT NULL,
	`noshowtoday` DATETIME NULL,
	`guarid` INT NOT NULL,
	`createdate` DATETIME NULL,
	`modifieddate` DATETIME NULL,
	`alerttype` SMALLINT NOT NULL,
	`_unused4` VARCHAR(21) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:22
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    patient - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:22


CREATE TABLE IF NOT EXISTS patient (
	`automodifiedtimestamp` DATETIME NULL,
	`patid` INT NOT NULL,
	`famid` INT NOT NULL,
	`lastname` VARCHAR(22) NOT NULL,
	`firstname` VARCHAR(17) NOT NULL,
	`mi` VARCHAR(3) NOT NULL,
	`prefname` VARCHAR(17) NOT NULL,
	`salutation` VARCHAR(33) NOT NULL,
	`workext` VARCHAR(6) NOT NULL,
	`besttime` VARCHAR(12) NOT NULL,
	`chartnum` VARCHAR(21) NOT NULL,
	`ssn` VARCHAR(11) NOT NULL,
	`provid1` VARCHAR(5) NOT NULL,
	`provid2` VARCHAR(5) NOT NULL,
	`isguar` BOOL NOT NULL,
	`isinssubcriber` BOOL NOT NULL,
	`isheadofhouse` BOOL NOT NULL,
	`gender` SMALLINT NOT NULL,
	`status` SMALLINT NOT NULL,
	`fampos` SMALLINT NOT NULL,
	`priminscdadepcode` SMALLINT NOT NULL,
	`secinscdadepcode` SMALLINT NOT NULL,
	`premed` SMALLINT NOT NULL,
	`addrid` INT NOT NULL,
	`birthdate` DATETIME NULL,
	`empid` INT NOT NULL,
	`guarid` INT NOT NULL,
	`firstvisitdate` DATETIME NULL,
	`lastvisitdate` DATETIME NULL,
	`medalertmask1` INT NOT NULL,
	`medalertmask2` INT NOT NULL,
	`refid` INT NOT NULL,
	`refbyid` INT NOT NULL,
	`reftoid` INT NOT NULL,
	`reftodate` DATETIME NULL,
	`consentdate` DATETIME NULL,
	`priminsrel` SMALLINT NOT NULL,
	`secinsrel` SMALLINT NOT NULL,
	`priminsuredid` INT NOT NULL,
	`primbenefits` DECIMAL NOT NULL,
	`secinsuredid` INT NOT NULL,
	`secbenefits` DECIMAL NOT NULL,
	`claiminfid` INT NOT NULL,
	`workphone` VARCHAR(18) NOT NULL,
	`feeschtype` SMALLINT NOT NULL,
	`feesched` SMALLINT NOT NULL,
	`missedappt` SMALLINT NOT NULL,
	`lastmissedappt` DATETIME NULL,
	`title` VARCHAR(11) NOT NULL,
	`id2` VARCHAR(17) NOT NULL,
	`titleflag` SMALLINT NOT NULL,
	`ezdwinpatid` INT NOT NULL,
	`primmedinsrel` SMALLINT NOT NULL,
	`secmedinsrel` SMALLINT NOT NULL,
	`primmedinsuredid` INT NOT NULL,
	`secmedinsuredid` INT NOT NULL,
	`language` SMALLINT NOT NULL,
	`emailaddr` VARCHAR(61) NOT NULL,
	`driverslicense` VARCHAR(26) NOT NULL,
	`fax` VARCHAR(18) NOT NULL,
	`pager` VARCHAR(18) NOT NULL,
	`otherphone` VARCHAR(18) NOT NULL,
	`primstdded` DECIMAL NOT NULL,
	`primprvded` DECIMAL NOT NULL,
	`primotherded` DECIMAL NOT NULL,
	`secstdded` DECIMAL NOT NULL,
	`secprvded` DECIMAL NOT NULL,
	`secotherded` DECIMAL NOT NULL,
	`primstddedlt` DECIMAL NOT NULL,
	`primprvdedlt` DECIMAL NOT NULL,
	`primotherdedlt` DECIMAL NOT NULL,
	`secstddedlt` DECIMAL NOT NULL,
	`secprvdedlt` DECIMAL NOT NULL,
	`secotherdedlt` DECIMAL NOT NULL,
	`primstddedlastyr` DECIMAL NOT NULL,
	`primprvdedlastyr` DECIMAL NOT NULL,
	`primotherdedlastyr` DECIMAL NOT NULL,
	`secstddedlastyr` DECIMAL NOT NULL,
	`secprvdedlastyr` DECIMAL NOT NULL,
	`secotherdedlastyr` DECIMAL NOT NULL,
	`primbenefitslastyr` DECIMAL NOT NULL,
	`secbenefitslastyr` DECIMAL NOT NULL,
	`patalert` SMALLINT NOT NULL,
	`privacyflags` SMALLINT NOT NULL,
	`_unused1` VARCHAR(3) NOT NULL,
	`patguid` VARCHAR(37) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:22
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    payplan - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:22


CREATE TABLE IF NOT EXISTS payplan (
	`automodifiedtimestamp` DATETIME NULL,
	`patid` INT NOT NULL,
	`guarid` INT NOT NULL,
	`provid` VARCHAR(5) NOT NULL,
	`payplandate` DATETIME NULL,
	`total` DECIMAL NOT NULL,
	`chargeamt` DECIMAL NOT NULL,
	`firstchargedate` DATETIME NULL,
	`initcharge` DECIMAL NOT NULL,
	`lastchargedate` DATETIME NULL,
	`lastcharge` DECIMAL NOT NULL,
	`totalcharges` DECIMAL NOT NULL,
	`proccode` VARCHAR(11) NOT NULL,
	`totalchargesnum` SMALLINT NOT NULL,
	`chargesmadenum` SMALLINT NOT NULL,
	`chargesremnum` SMALLINT NOT NULL,
	`autoflag` SMALLINT NOT NULL,
	`payplantype` SMALLINT NOT NULL,
	`_unused1` SMALLINT NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:22
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    pelink - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:22


CREATE TABLE IF NOT EXISTS pelink (
	`automodifiedtimestamp` DATETIME NULL,
	`procid` INT NOT NULL,
	`topicid` INT NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:22
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    periomouth - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:22


CREATE TABLE IF NOT EXISTS periomouth (
	`automodifiedtimestamp` DATETIME NULL,
	`patid` INT NOT NULL,
	`periodate` DATETIME NULL,
	`provid` VARCHAR(5) NOT NULL,
	`casetype` SMALLINT NOT NULL,
	`patstatus` SMALLINT NOT NULL,
	`periostatus` SMALLINT NOT NULL,
	`notes` BLOB NOT NULL,
	`history` BOOL NOT NULL,
	`examdata` BLOB NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:22
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    petopic - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:22


CREATE TABLE IF NOT EXISTS petopic (
	`automodifiedtimestamp` DATETIME NULL,
	`topicid` INT NOT NULL,
	`categoryid` SMALLINT NOT NULL,
	`title` VARCHAR(81) NOT NULL,
	`multimediafilename` VARCHAR(141) NOT NULL,
	`printgraphicfilename` VARCHAR(141) NOT NULL,
	`printtextfilename` VARCHAR(141) NOT NULL,
	`topictype` SMALLINT NOT NULL,
	`_reservedforfuture` VARCHAR(20) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:22
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    pmtagree - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:22


CREATE TABLE IF NOT EXISTS pmtagree (
	`automodifiedtimestamp` DATETIME NULL,
	`agreementid` INT NOT NULL,
	`agreementtype` SMALLINT NOT NULL,
	`guarid` INT NOT NULL,
	`agreementdate` DATETIME NULL,
	`pabalance` DECIMAL NOT NULL,
	`paymentamt` DECIMAL NOT NULL,
	`firstpaymentdate` DATETIME NULL,
	`interval` SMALLINT NOT NULL,
	`paymentcount` SMALLINT NOT NULL,
	`minbalancetocharge` DECIMAL NOT NULL,
	`financecharge` DECIMAL NOT NULL,
	`_unused1` INT NOT NULL,
	`latecharge` DECIMAL NOT NULL,
	`minlatecharge` DECIMAL NOT NULL,
	`graceperiod` SMALLINT NOT NULL,
	`descript` VARCHAR(33) NOT NULL,
	`_unused2` INT NOT NULL,
	`_unused3` VARCHAR(21) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:22
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    pq_form - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:22


CREATE TABLE IF NOT EXISTS pq (
	`automodifiedtimestamp` DATETIME NULL,
	`formuniqueid` INT NOT NULL,
	`formid` INT NOT NULL,
	`formversion` INT NOT NULL,
	`versiondate` DATETIME NULL,
	`isactive` BOOL NOT NULL,
	`formrespondenttype` SMALLINT NOT NULL,
	`categoryid` SMALLINT NOT NULL,
	`formflags` INT NOT NULL,
	`formname` VARCHAR(42) NOT NULL,
	`formguid` VARCHAR(38) NOT NULL,
	`monthstoexpiration` SMALLINT NOT NULL,
	`_unused1` VARCHAR(21) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:22
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    pq_formquest - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:22


CREATE TABLE IF NOT EXISTS pq (
	`automodifiedtimestamp` DATETIME NULL,
	`formquestionuid` INT NOT NULL,
	`formuniqueid` INT NOT NULL,
	`questionuniqueid` INT NOT NULL,
	`questionorder` SMALLINT NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:22
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    pq_question - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:22


CREATE TABLE IF NOT EXISTS pq (
	`automodifiedtimestamp` DATETIME NULL,
	`questionuniqueid` INT NOT NULL,
	`questionid` INT NOT NULL,
	`questionversion` INT NOT NULL,
	`versiondate` DATETIME NULL,
	`questiontype` SMALLINT NOT NULL,
	`questioninfo` VARCHAR(4097) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:22
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    pq_response - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:22


CREATE TABLE IF NOT EXISTS pq (
	`automodifiedtimestamp` DATETIME NULL,
	`responseuniqueid` INT NOT NULL,
	`responsesetuniqueid` INT NOT NULL,
	`questionuniqueid` INT NOT NULL,
	`responsetype` SMALLINT NOT NULL,
	`_responsechangeflag` BOOL NOT NULL,
	`responseinfo` VARCHAR(4097) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:22
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    pq_responseset - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:22


CREATE TABLE IF NOT EXISTS pq (
	`automodifiedtimestamp` DATETIME NULL,
	`responsesetuniqueid` INT NOT NULL,
	`respondenttype` SMALLINT NOT NULL,
	`respondentpatid` INT NOT NULL,
	`respondentprovid` VARCHAR(5) NOT NULL,
	`formuniqueid` INT NOT NULL,
	`responsedate` DATETIME NULL,
	`responsetime` INT NOT NULL,
	`source` SMALLINT NOT NULL,
	`responsesetflags` INT NOT NULL,
	`patsignatureid` INT NOT NULL,
	`responsesetprovid` VARCHAR(5) NOT NULL,
	`provsignatureid` INT NOT NULL,
	`signrelationtopat` VARCHAR(31) NOT NULL,
	`witnesssignatureid` INT NOT NULL,
	`entrydate` DATETIME NULL,
	`entrytime` INT NOT NULL,
	`modifieddate` DATETIME NULL,
	`modifiedtime` INT NOT NULL,
	`apptdate` DATETIME NULL,
	`newpatguid` VARCHAR(38) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:22
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    proccode - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:22


CREATE TABLE IF NOT EXISTS proccode (
	`automodifiedtimestamp` DATETIME NULL,
	`adacode` VARCHAR(11) NOT NULL,
	`abbrevdescript` VARCHAR(11) NOT NULL,
	`alt1` VARCHAR(11) NOT NULL,
	`alt2` VARCHAR(11) NOT NULL,
	`alt3` VARCHAR(11) NOT NULL,
	`proccodeid` INT NOT NULL,
	`category` SMALLINT NOT NULL,
	`multicode` BOOL NOT NULL,
	`permanent` SMALLINT NOT NULL,
	`multicodetype` SMALLINT NOT NULL,
	`passvalue` SMALLINT NOT NULL,
	`nestmulticode` SMALLINT NOT NULL,
	`currentmulitcode` SMALLINT NOT NULL,
	`startcompdatereq` SMALLINT NOT NULL,
	`_unused1` VARCHAR(4) NOT NULL,
	`bicuspidcode` VARCHAR(11) NOT NULL,
	`labexpense` DECIMAL NOT NULL,
	`matexpense` DECIMAL NOT NULL,
	`noteid` INT NOT NULL,
	`paintid` SMALLINT NOT NULL,
	`descript` VARCHAR(101) NOT NULL,
	`followup` SMALLINT NOT NULL,
	`condition` SMALLINT NOT NULL,
	`treatmentarea` SMALLINT NOT NULL,
	`removetooth` SMALLINT NOT NULL,
	`notetoclin` SMALLINT NOT NULL,
	`rangestart` SMALLINT NOT NULL,
	`rangeend` SMALLINT NOT NULL,
	`chartshow` BOOL NOT NULL,
	`addtlcodesflag` SMALLINT NOT NULL,
	`mapcode1` VARCHAR(11) NOT NULL,
	`mapcode2` VARCHAR(11) NOT NULL,
	`mapcode3` VARCHAR(11) NOT NULL,
	`mapcode4` VARCHAR(11) NOT NULL,
	`mapcode5` VARCHAR(11) NOT NULL,
	`notinsrelated` SMALLINT NOT NULL,
	`minlen` SMALLINT NOT NULL,
	`pattern1` SMALLINT NOT NULL,
	`pattern2` SMALLINT NOT NULL,
	`pattern3` SMALLINT NOT NULL,
	`pattern4` SMALLINT NOT NULL,
	`pattern5` SMALLINT NOT NULL,
	`pattern6` SMALLINT NOT NULL,
	`appttype` SMALLINT NOT NULL,
	`printnote` SMALLINT NOT NULL,
	`autorecall` SMALLINT NOT NULL,
	`rvu` SMALLINT NOT NULL,
	`tooth1` SMALLINT NOT NULL,
	`tooth2` SMALLINT NOT NULL,
	`tooth3` SMALLINT NOT NULL,
	`tooth4` SMALLINT NOT NULL,
	`tooth5` SMALLINT NOT NULL,
	`tooth6` SMALLINT NOT NULL,
	`tooth7` SMALLINT NOT NULL,
	`tooth8` SMALLINT NOT NULL,
	`medcrosscode` SMALLINT NOT NULL,
	`donotbillinsflag` BOOL NOT NULL,
	`diagflag` SMALLINT NOT NULL,
	`diagcode` SMALLINT NOT NULL,
	`treatflag` SMALLINT NOT NULL,
	`diagnotetoclin` SMALLINT NOT NULL,
	`antcode` VARCHAR(11) NOT NULL,
	`postcode` VARCHAR(11) NOT NULL,
	`primcode` VARCHAR(11) NOT NULL,
	`permcode` VARCHAR(11) NOT NULL,
	`laymandescript` VARCHAR(152) NOT NULL,
	`multinumofcodes` SMALLINT NOT NULL,
	`multicode1id` INT NOT NULL,
	`multicode1infoa` SMALLINT NOT NULL,
	`multicode1infob` SMALLINT NOT NULL,
	`multicode2id` INT NOT NULL,
	`multicode2infoa` SMALLINT NOT NULL,
	`multicode2infob` SMALLINT NOT NULL,
	`multicode3id` INT NOT NULL,
	`multicode3infoa` SMALLINT NOT NULL,
	`multicode3infob` SMALLINT NOT NULL,
	`multicode4id` INT NOT NULL,
	`multicode4infoa` SMALLINT NOT NULL,
	`multicode4infob` SMALLINT NOT NULL,
	`multicode5id` INT NOT NULL,
	`multicode5infoa` SMALLINT NOT NULL,
	`multicode5infob` SMALLINT NOT NULL,
	`multicode6id` INT NOT NULL,
	`multicode6infoa` SMALLINT NOT NULL,
	`multicode6infob` SMALLINT NOT NULL,
	`multicode7id` INT NOT NULL,
	`multicode7infoa` SMALLINT NOT NULL,
	`multicode7infob` SMALLINT NOT NULL,
	`multicode8id` INT NOT NULL,
	`multicode8infoa` SMALLINT NOT NULL,
	`multicode8infob` SMALLINT NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:22
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    provinsid - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:22


CREATE TABLE IF NOT EXISTS provinsid (
	`automodifiedtimestamp` DATETIME NULL,
	`type` SMALLINT NOT NULL,
	`provid` VARCHAR(5) NOT NULL,
	`insid` INT NOT NULL,
	`defid` SMALLINT NOT NULL,
	`providnum` VARCHAR(31) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:22
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    quicklabel - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:22


CREATE TABLE IF NOT EXISTS quicklabel (
	`automodifiedtimestamp` DATETIME NULL,
	`quicklabelid` INT NOT NULL,
	`defaultlabel` BOOL NOT NULL,
	`showinlist` BOOL NOT NULL,
	`labelname` VARCHAR(42) NOT NULL,
	`previewheight` SMALLINT NOT NULL,
	`previewwidth` SMALLINT NOT NULL,
	`numcopies` SMALLINT NOT NULL,
	`labeltext` VARCHAR(4097) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:22
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    recallpending - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:22


CREATE TABLE IF NOT EXISTS recallpending (
	`automodifiedtimestamp` DATETIME NULL,
	`recallid` SMALLINT NOT NULL,
	`patid` INT NOT NULL,
	`guarid` INT NOT NULL,
	`apptid` INT NOT NULL,
	`_unused1` SMALLINT NOT NULL,
	`setdate` DATETIME NULL,
	`duedate` DATETIME NULL,
	`_unused2` SMALLINT NOT NULL,
	`priordate` DATETIME NULL,
	`provtype` SMALLINT NOT NULL,
	`provid` VARCHAR(5) NOT NULL,
	`_unused3` SMALLINT NOT NULL,
	`appttime` SMALLINT NOT NULL,
	`appttimepattern0` SMALLINT NOT NULL,
	`appttimepattern1` SMALLINT NOT NULL,
	`appttimepattern2` SMALLINT NOT NULL,
	`appttimepattern3` SMALLINT NOT NULL,
	`appttimepattern4` SMALLINT NOT NULL,
	`appttimepattern5` SMALLINT NOT NULL,
	`status` SMALLINT NOT NULL,
	`_unused4` INT NOT NULL,
	`_unused5` INT NOT NULL,
	`_unused6` INT NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:22
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    recalltype - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:22


CREATE TABLE IF NOT EXISTS recalltype (
	`automodifiedtimestamp` DATETIME NULL,
	`recallid` SMALLINT NOT NULL,
	`patid` INT NOT NULL,
	`name` VARCHAR(14) NOT NULL,
	`descript` VARCHAR(32) NOT NULL,
	`flags` SMALLINT NOT NULL,
	`color` INT NOT NULL,
	`unit` SMALLINT NOT NULL,
	`qty` SMALLINT NOT NULL,
	`provtype` SMALLINT NOT NULL,
	`provid` VARCHAR(5) NOT NULL,
	`_unused1` SMALLINT NOT NULL,
	`appttime` SMALLINT NOT NULL,
	`appttimepattern1` SMALLINT NOT NULL,
	`appttimepattern2` SMALLINT NOT NULL,
	`appttimepattern3` SMALLINT NOT NULL,
	`appttimepattern4` SMALLINT NOT NULL,
	`appttimepattern5` SMALLINT NOT NULL,
	`appttimepattern6` SMALLINT NOT NULL,
	`status` SMALLINT NOT NULL,
	`_unused2` INT NOT NULL,
	`_unused3` INT NOT NULL,
	`_unused4` INT NOT NULL,
	`_unused5` INT NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:22
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    refacts - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:22


CREATE TABLE IF NOT EXISTS refacts (
	`automodifiedtimestamp` DATETIME NULL,
	`refactsid` INT NOT NULL,
	`refid` INT NOT NULL,
	`patid` INT NOT NULL,
	`refactstype` SMALLINT NOT NULL,
	`refactdate` DATETIME NULL,
	`refbytype` SMALLINT NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:22
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    referral - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:22


CREATE TABLE IF NOT EXISTS referral (
	`automodifiedtimestamp` DATETIME NULL,
	`reftype` SMALLINT NOT NULL,
	`_unused1` SMALLINT NOT NULL,
	`refid` INT NOT NULL,
	`lastname` VARCHAR(33) NOT NULL,
	`firstname` VARCHAR(17) NOT NULL,
	`mi` VARCHAR(3) NOT NULL,
	`specialtyid` SMALLINT NOT NULL,
	`_unused2` VARCHAR(21) NOT NULL,
	`salutation` VARCHAR(33) NOT NULL,
	`title` VARCHAR(22) NOT NULL,
	`addrid` INT NOT NULL,
	`_lastgratdate` DATETIME NULL,
	`_grat` VARCHAR(33) NOT NULL,
	`totalrefby` SMALLINT NOT NULL,
	`totalrefto` SMALLINT NOT NULL,
	`ptrcount` SMALLINT NOT NULL,
	`email` VARCHAR(61) NOT NULL,
	`fax` VARCHAR(18) NOT NULL,
	`otherphone` VARCHAR(18) NOT NULL,
	`nonpersonflag` BOOL NOT NULL,
	`emailaddr2` VARCHAR(61) NOT NULL,
	`contactid` VARCHAR(21) NOT NULL,
	`sendemail` BOOL NOT NULL,
	`useemail` BOOL NOT NULL,
	`_unused3` VARCHAR(21) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    reports - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS reports (
	`automodifiedtimestamp` DATETIME NULL,
	`rptid` INT NOT NULL,
	`rptstatus` SMALLINT NOT NULL,
	`rpttype` SMALLINT NOT NULL,
	`rptdate` DATETIME NULL,
	`rptname` VARCHAR(81) NOT NULL,
	`descript` VARCHAR(81) NOT NULL,
	`rptdata` BLOB NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    reqclaimattach - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS reqclaimattach (
	`automodifiedtimestamp` DATETIME NULL,
	`payorid` VARCHAR(7) NOT NULL,
	`adacode` VARCHAR(11) NOT NULL,
	`description` VARCHAR(33) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    rsc - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


## [ERROR::rsc] The table does not exists in the database.
###################################################################
###    rscuse - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS rscuse (
	`automodifiedtimestamp` DATETIME NULL,
	`rscdate` DATETIME NULL,
	`rsctype` SMALLINT NOT NULL,
	`rscid` VARCHAR(5) NOT NULL,
	`rscdata` BLOB NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    signature - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS signature (
	`automodifiedtimestamp` DATETIME NULL,
	`signatureid` INT NOT NULL,
	`name` VARCHAR(62) NOT NULL,
	`signdate` DATETIME NULL,
	`signtime` INT NOT NULL,
	`width` INT NOT NULL,
	`height` INT NOT NULL,
	`_reservedforfuture` VARCHAR(21) NOT NULL,
	`datatype` INT NOT NULL,
	`signaturedata` BLOB NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    signedconsent - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS signedconsent (
	`automodifiedtimestamp` DATETIME NULL,
	`signedconsentid` INT NOT NULL,
	`consenttype` INT NOT NULL,
	`consentformid` INT NOT NULL,
	`ownerobjectid` INT NOT NULL,
	`patsignatureid` INT NOT NULL,
	`patsignerrelationship` VARCHAR(31) NOT NULL,
	`praticesignatureid` INT NOT NULL,
	`_reservedforfuture` VARCHAR(31) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    tcattach - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS tcattach (
	`automodifiedtimestamp` DATETIME NULL,
	`attach2id` VARCHAR(5) NOT NULL,
	`punchdate` DATETIME NULL,
	
	`ptype1` SMALLINT NOT NULL,
	
	`ptype2` SMALLINT NOT NULL,
	
	`ptype3` SMALLINT NOT NULL,
	
	`ptype4` SMALLINT NOT NULL,
	
	`ptype5` SMALLINT NOT NULL,
	
	`ptype6` SMALLINT NOT NULL,
	
	`ptype7` SMALLINT NOT NULL,
	
	`ptype8` SMALLINT NOT NULL,
	
	`ptype9` SMALLINT NOT NULL,
	
	`ptype10` SMALLINT NOT NULL,
	
	`ptype11` SMALLINT NOT NULL,
	
	`ptype12` SMALLINT NOT NULL,
	
	`ptype13` SMALLINT NOT NULL,
	
	`ptype14` SMALLINT NOT NULL,
	
	`ptype15` SMALLINT NOT NULL,
	
	`ptype16` SMALLINT NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    tcsetup - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS tcsetup (
	`automodifiedtimestamp` DATETIME NULL,
	`attach2id` VARCHAR(5) NOT NULL,
	`workweekhours` SMALLINT NOT NULL,
	`overtimepayrate` SMALLINT NOT NULL,
	`includeinreports` BOOL NOT NULL,
	
	`issalaried` BOOL NOT NULL,
	`payrate` DECIMAL NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    toothplace - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS toothplace (
	`automodifiedtimestamp` DATETIME NULL,
	`patid` INT NOT NULL,
	`toothnum` SMALLINT NOT NULL,
	
	
	
	
	
	
	
	`_reserved` VARCHAR(33) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    totals - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS totals (
	`automodifiedtimestamp` DATETIME NULL,
	`totalstype` SMALLINT NOT NULL,
	`mon` SMALLINT NOT NULL,
	`yr` SMALLINT NOT NULL,
	`provid` VARCHAR(5) NOT NULL,
	`begmon` SMALLINT NOT NULL,
	`begyr` SMALLINT NOT NULL,
	`totalcharges` DECIMAL NOT NULL,
	`chargesins` DECIMAL NOT NULL,
	`chargesadj` DECIMAL NOT NULL,
	`financecharges` DECIMAL NOT NULL,
	`payments` DECIMAL NOT NULL,
	`paymentsins` DECIMAL NOT NULL,
	`paymentsadj` DECIMAL NOT NULL,
	`chargesspecialadjmtd` DECIMAL NOT NULL,
	`paymentsspecialadjmtd` DECIMAL NOT NULL,
	`latechargesmtd` DECIMAL NOT NULL,
	`latechargesytd` DECIMAL NOT NULL,
	`currentpaymentagreementbalance` DECIMAL NOT NULL,
	`_unused1` INT NOT NULL,
	`rec0` DECIMAL NOT NULL,
	`rec30` DECIMAL NOT NULL,
	`rec60` DECIMAL NOT NULL,
	`rec90` DECIMAL NOT NULL,
	`_rec120` DECIMAL NOT NULL,
	`payplan` DECIMAL NOT NULL,
	`currentcreditbalance` DECIMAL NOT NULL,
	`begbalance` DECIMAL NOT NULL,
	`_treatplan` DECIMAL NOT NULL,
	`_schedtreatplan` INT NOT NULL,
	`newpatcount` INT NOT NULL,
	`deletedpatcount` INT NOT NULL,
	`referredpatcount` INT NOT NULL,
	`activepatcount` INT NOT NULL,
	`totalpatcount` INT NOT NULL,
	`insuredpatcount` INT NOT NULL,
	`malepatcount` INT NOT NULL,
	`femalepatcount` INT NOT NULL,
	`under12patcount` INT NOT NULL,
	`over65patcount` INT NOT NULL,
	`familycount` INT NOT NULL,
	`missedpaymentcount` INT NOT NULL,
	`_recalls` INT NOT NULL,
	`_recallscomp` INT NOT NULL,
	`_recallspastcomp` INT NOT NULL,
	`_unused2` INT NOT NULL,
	`_unused3` INT NOT NULL,
	`_unused4` INT NOT NULL,
	`latecharges` DECIMAL NOT NULL,
	`_unused5` DECIMAL NOT NULL,
	`yrbegbalance` DECIMAL NOT NULL,
	`chargesytd` DECIMAL NOT NULL,
	`chargesinsytd` DECIMAL NOT NULL,
	`chargesadjytd` DECIMAL NOT NULL,
	`financechargeytd` DECIMAL NOT NULL,
	`paymentsytd` DECIMAL NOT NULL,
	`paymentsinsytd` DECIMAL NOT NULL,
	`paymentsadjytd` DECIMAL NOT NULL,
	`newpatcountytd` INT NOT NULL,
	`deletedpatcountytd` INT NOT NULL,
	`referredpatcountytd` INT NOT NULL,
	`missedpaymentcountytd` INT NOT NULL,
	`_yrrecallcount` INT NOT NULL,
	`_yrrecallcountcomp` INT NOT NULL,
	`_yrrecallcountpastcomp` INT NOT NULL,
	`chargesspecialadjytd` DECIMAL NOT NULL,
	`paymentsspecialadjytd` DECIMAL NOT NULL,
	`_unused6` INT NOT NULL,
	`_unused7` INT NOT NULL,
	`_unused8` INT NOT NULL,
	`_unused9` INT NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    txcase - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS txcase (
	`automodifiedtimestamp` DATETIME NULL,
	`txcaseid` INT NOT NULL,
	`patid` INT NOT NULL,
	`priority` SMALLINT NOT NULL,
	`status` SMALLINT NOT NULL,
	`descript` VARCHAR(81) NOT NULL,
	`createdate` DATETIME NULL,
	`financedescriptid` SMALLINT NOT NULL,
	`financeexpdate` DATETIME NULL,
	`_unused` INT NOT NULL,
	`txcaseindex` SMALLINT NOT NULL,
	`_unused2` SMALLINT NOT NULL,
	`isdefault` BOOL NOT NULL,
	`_unused3` VARCHAR(58) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    txcasecase - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS txcasecase (
	`automodifiedtimestamp` DATETIME NULL,
	`caselinkid` INT NOT NULL,
	`color` INT NOT NULL,
	`txcaseid1` INT NOT NULL,
	`txcaseid2` INT NOT NULL,
	`txcaseid3` INT NOT NULL,
	`txcaseid4` INT NOT NULL,
	`recommendedid` INT NOT NULL,
	`_unused` VARCHAR(21) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    txcasestatus - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS txcasestatus (
	`automodifiedtimestamp` DATETIME NULL,
	`casestatusid` INT NOT NULL,
	`caseid` INT NOT NULL,
	`modifieddate` DATETIME NULL,
	`status` SMALLINT NOT NULL,
	`comment` VARCHAR(152) NOT NULL,
	`_unused0` VARCHAR(21) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_adjustment_types - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS v (
	`modified_time_stamp` DATETIME NULL,
	`def_id` SMALLINT NOT NULL,
	`descript` VARCHAR(53) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_appointment - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS v (
	`modified_time_stamp` DATETIME NULL,
	`appointment_id` INT NOT NULL,
	`appointment_date` DATETIME NULL,
	`operatory_id` VARCHAR(5) NOT NULL,
	`provider_id` VARCHAR(5) NOT NULL,
	`provider_last_name` VARCHAR(22) NOT NULL,
	`provider_first_name` VARCHAR(17) NOT NULL,
	`provider_mi` VARCHAR(3) NOT NULL,
	`patient_id` INT NOT NULL,
	`patient_guid` VARCHAR(37) NULL,
	`patient_name` VARCHAR(42) NOT NULL,
	`patient_phone` VARCHAR(18) NOT NULL,
	`length` SMALLINT NOT NULL,
	`reason` VARCHAR(62) NOT NULL,
	`start_hour` SMALLINT NOT NULL,
	`start_minute` SMALLINT NOT NULL,
	`status_id` SMALLINT NOT NULL,
	`status_description` VARCHAR(53) NOT NULL,
	`amount` DECIMAL NOT NULL,
	`appt_broken_class` SMALLINT NOT NULL,
	`broken_date` DATETIME NULL,
	`appt_flag` SMALLINT NOT NULL,
	`auto_update_cc` SMALLINT NOT NULL,
	`ref_by_type` SMALLINT NOT NULL,
	`ref_id` INT NOT NULL,
	`lab_case_appt` BOOL NOT NULL,
	`create_date` DATETIME NULL,
	`created_by_user` VARCHAR(5) NOT NULL,
	`pinboard` SMALLINT NOT NULL,
	`note` VARCHAR(8191) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_appointment_checklist - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS v (
	`modified_time_stamp` DATETIME NULL,
	`def_id` SMALLINT NOT NULL,
	`descript` VARCHAR(53) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_appointment_types - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS v (
	`modified_time_stamp` DATETIME NULL,
	`def_id` SMALLINT NOT NULL,
	`descript` VARCHAR(53) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_appt_book_events - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS v (
	`modified_time_stamp` DATETIME NULL,
	`event_id` INT NOT NULL,
	`operatory_id` VARCHAR(5) NOT NULL,
	`event_date` DATETIME NULL,
	`start_time` INT NOT NULL,
	`end_time` INT NOT NULL,
	`close_op_flag` SMALLINT NOT NULL,
	`center_descript_flag` SMALLINT NOT NULL,
	`color` INT NOT NULL,
	`descript` VARCHAR(62) NOT NULL,
	`pinboard` SMALLINT NOT NULL,
	`orig_event_date` DATETIME NULL,
	`event_series_id` INT NOT NULL,
	`note` VARCHAR(8191) NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_appt_status_codes - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS v (
	`defid` SMALLINT NOT NULL,
	`descript` VARCHAR(52) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_billing_types - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS v (
	`modified_time_stamp` DATETIME NULL,
	`def_id` SMALLINT NOT NULL,
	`descript` VARCHAR(53) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_clinical_notes - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS v (
	`modified_time_stamp` DATETIME NULL,
	`cnotes_id` INT NOT NULL,
	`patient_id` INT NOT NULL,
	`patient_guid` VARCHAR(37) NOT NULL,
	`last_name` VARCHAR(22) NOT NULL,
	`first_name` VARCHAR(17) NOT NULL,
	`mi` VARCHAR(3) NOT NULL,
	`provider_id` VARCHAR(5) NOT NULL,
	`create_date_time_stamp` DATETIME NULL,
	`entry_date_time_stamp` DATETIME NULL,
	`note_text` VARCHAR(8193) NULL,
	`note_locked` BOOL NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_document_types - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS v (
	`dc_doctype_id` INT NOT NULL,
	`doctype_desc` VARCHAR(42) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_employers - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS v (
	`modified_time_stamp` DATETIME NULL,
	`employer_id` INT NOT NULL,
	`employer_name` VARCHAR(33) NOT NULL,
	`address_line1` VARCHAR(32) NOT NULL,
	`address_line2` VARCHAR(32) NOT NULL,
	`city` VARCHAR(27) NOT NULL,
	`state` VARCHAR(22) NOT NULL,
	`zip_code` VARCHAR(16) NOT NULL,
	`phone` VARCHAR(18) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_guarantor_balance - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS v (
	`guar_id` INT NOT NULL,
	`guar_guid` VARCHAR(37) NOT NULL,
	`last_name` VARCHAR(22) NOT NULL,
	`first_name` VARCHAR(17) NOT NULL,
	`mi` VARCHAR(3) NOT NULL,
	`balance_0_30_days` DECIMAL NOT NULL,
	`balance_31_60_days` DECIMAL NOT NULL,
	`balance_61_90_days` DECIMAL NOT NULL,
	`balance_91_plus_days` DECIMAL NOT NULL,
	`last_payment_received_date` DATETIME NULL,
	`last_payment_amount` DECIMAL NOT NULL,
	`email` VARCHAR(61) NOT NULL,
	`mobile_phone` VARCHAR(18) NOT NULL,
	`birth_date` DATETIME NULL,
	`status` SMALLINT NOT NULL,
	`social_sec_num` VARCHAR(11) NOT NULL,
	`billing_type_description` VARCHAR(53) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:23
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_initial_reasons - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:23


CREATE TABLE IF NOT EXISTS v (
	`modified_time_stamp` DATETIME NULL,
	`def_id` SMALLINT NOT NULL,
	`descript` VARCHAR(53) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:24
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_insurance_plans - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:24


CREATE TABLE IF NOT EXISTS v (
	`ins_id` INT NOT NULL,
	`ins_co_name` VARCHAR(33) NOT NULL,
	`group_name` VARCHAR(33) NOT NULL,
	`group_number` VARCHAR(26) NOT NULL,
	`union_number` VARCHAR(8) NOT NULL,
	`address_line1` VARCHAR(32) NOT NULL,
	`address_line2` VARCHAR(32) NOT NULL,
	`city` VARCHAR(27) NOT NULL,
	`state` VARCHAR(22) NOT NULL,
	`zipcode` VARCHAR(16) NOT NULL,
	`phone` VARCHAR(18) NOT NULL,
	`phone_ext` VARCHAR(6) NOT NULL,
	`contact` VARCHAR(32) NOT NULL,
	`renew_month` SMALLINT NOT NULL,
	`last_update` DATETIME NULL,
	`max_cov_person` DECIMAL NOT NULL,
	`max_cov_fam` DECIMAL NOT NULL,
	`time_limit` SMALLINT NOT NULL,
	`source_of_payment` VARCHAR(4) NOT NULL,
	`ins_flag` SMALLINT NOT NULL,
	`std_ded_perperson` DECIMAL NOT NULL,
	`prv_ded_perperson` DECIMAL NOT NULL,
	`other_ded_perperson` DECIMAL NOT NULL,
	`std_ded_perperson_lt` DECIMAL NOT NULL,
	`prv_ded_perperson_lt` DECIMAL NOT NULL,
	`other_ded_perperson_lt` DECIMAL NOT NULL,
	`std_ded_perfam` DECIMAL NOT NULL,
	`prv_ded_perfam` DECIMAL NOT NULL,
	`other_ded_perfam` DECIMAL NOT NULL,
	`do_not_bill_ins_flag` BOOL NOT NULL,
	`diag_print_flag` SMALLINT NOT NULL,
	`do_not_include_group` SMALLINT NOT NULL,
	`national_plan_id` VARCHAR(22) NOT NULL,
	`insurance_table_id` INT NOT NULL,
	`employer_id` INT NOT NULL,
	`payor_id` VARCHAR(7) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:24
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_operatory - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:24


CREATE TABLE IF NOT EXISTS v (
	`op_id` VARCHAR(5) NOT NULL,
	`op_title` VARCHAR(22) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:24
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_patient - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:24


CREATE TABLE IF NOT EXISTS v (
	`patient_id` INT NOT NULL,
	`patient_guid` VARCHAR(37) NOT NULL,
	`last_name` VARCHAR(22) NOT NULL,
	`first_name` VARCHAR(17) NOT NULL,
	`mi` VARCHAR(3) NOT NULL,
	`preferred_name` VARCHAR(17) NOT NULL,
	`salutation` VARCHAR(33) NOT NULL,
	`title` VARCHAR(11) NOT NULL,
	`guar_id` INT NOT NULL,
	`guar_guid` VARCHAR(37) NOT NULL,
	`address_line1` VARCHAR(32) NOT NULL,
	`address_line2` VARCHAR(32) NOT NULL,
	`city` VARCHAR(27) NOT NULL,
	`state` VARCHAR(22) NOT NULL,
	`zipcode` VARCHAR(16) NOT NULL,
	`home_phone` VARCHAR(18) NOT NULL,
	`work_phone` VARCHAR(18) NOT NULL,
	`work_ext` VARCHAR(6) NOT NULL,
	`other_phone` VARCHAR(18) NOT NULL,
	`mobile_phone` VARCHAR(18) NOT NULL,
	`chart_num` VARCHAR(21) NOT NULL,
	`social_sec_num` VARCHAR(11) NOT NULL,
	`pri_provider_id` VARCHAR(5) NOT NULL,
	`pri_provider_last_name` VARCHAR(22) NOT NULL,
	`pri_provider_first_name` VARCHAR(17) NOT NULL,
	`sec_provider_id` VARCHAR(5) NOT NULL,
	`sec_provider_last_name` VARCHAR(22) NULL,
	`sec_provider_first_name` VARCHAR(17) NULL,
	`gender` SMALLINT NOT NULL,
	`status` SMALLINT NOT NULL,
	`birth_date` DATETIME NULL,
	`first_visit_date` DATETIME NULL,
	`last_visit_date` DATETIME NULL,
	`last_missed_appointment` DATETIME NULL,
	`num_of_missed_appointments` SMALLINT NOT NULL,
	`email` VARCHAR(61) NOT NULL,
	`fax` VARCHAR(18) NOT NULL,
	`note` VARCHAR(8191) NOT NULL,
	`privacy_flags` SMALLINT NOT NULL,
	`employer_id` INT NOT NULL,
	`primdentalinsuredid` INT NOT NULL,
	`primmedicalinsuredid` INT NOT NULL,
	`secdentalinsuredid` INT NOT NULL,
	`secmedicalinsuredid` INT NOT NULL,
	`driverslicense` VARCHAR(26) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:24
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_patient_insurance - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:24


CREATE TABLE IF NOT EXISTS v (
	`modified_time_stamp` DATETIME NULL,
	`patient_id` INT NOT NULL,
	`patient_guid` VARCHAR(37) NOT NULL,
	`last_name` VARCHAR(22) NOT NULL,
	`first_name` VARCHAR(17) NOT NULL,
	`primary_insured_id` INT NOT NULL,
	`primary_insured_last_name` VARCHAR(22) NOT NULL,
	`primary_insured_first_name` VARCHAR(17) NOT NULL,
	`secondary_insured_id` INT NOT NULL,
	`secondary_insured_last_name` VARCHAR(22) NOT NULL,
	`secondary_insured_first_name` VARCHAR(17) NOT NULL,
	`primary_insurance_carrier_id` INT NULL,
	`primary_insurance_carrier_name` VARCHAR(33) NULL,
	`secondary_insurance_carrier_id` INT NOT NULL,
	`secondary_insurance_carrier_name` VARCHAR(33) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:24
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_payment_types - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:24


CREATE TABLE IF NOT EXISTS v (
	`modified_time_stamp` DATETIME NULL,
	`def_id` SMALLINT NOT NULL,
	`descript` VARCHAR(53) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:24
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_practice_information - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:24


CREATE TABLE IF NOT EXISTS v (
	`modified_time_stamp` DATETIME NULL,
	`practice_name` VARCHAR(61) NOT NULL,
	`address_line1` VARCHAR(32) NOT NULL,
	`address_line2` VARCHAR(32) NOT NULL,
	`city` VARCHAR(27) NOT NULL,
	`state` VARCHAR(22) NOT NULL,
	`zip_code` VARCHAR(16) NOT NULL,
	`phone` VARCHAR(18) NOT NULL,
	`phone_ext` VARCHAR(6) NOT NULL,
	`deposit_slip` VARCHAR(31) NOT NULL,
	`fiscal_beg_month` SMALLINT NOT NULL,
	`statement_info` SMALLINT NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:24
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_practice_medical_alerts - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:24


CREATE TABLE IF NOT EXISTS v (
	`modified_time_stamp` DATETIME NULL,
	`def_id` SMALLINT NOT NULL,
	`descript` VARCHAR(53) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:24
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_provider - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:24


CREATE TABLE IF NOT EXISTS v (
	`provider_id` VARCHAR(5) NOT NULL,
	`last_name` VARCHAR(22) NOT NULL,
	`first_name` VARCHAR(17) NOT NULL,
	`mi` VARCHAR(3) NOT NULL,
	`suffix` VARCHAR(22) NOT NULL,
	`work_phone` VARCHAR(18) NOT NULL,
	`work_phone_ext` VARCHAR(6) NOT NULL,
	`tin` VARCHAR(17) NOT NULL,
	`npi` VARCHAR(27) NOT NULL,
	`address_line1` VARCHAR(32) NOT NULL,
	`address_line2` VARCHAR(32) NOT NULL,
	`city` VARCHAR(27) NOT NULL,
	`state` VARCHAR(22) NOT NULL,
	`zip_code` VARCHAR(16) NOT NULL,
	`ssn` VARCHAR(11) NOT NULL,
	`state_id` VARCHAR(17) NOT NULL,
	`medicaid_id` VARCHAR(17) NOT NULL,
	`drug_id` VARCHAR(17) NOT NULL,
	`issecondaryprovider` SMALLINT NOT NULL,
	`specialty_id` SMALLINT NOT NULL,
	`bluecross_id` VARCHAR(17) NOT NULL,
	`isnonperson` BOOL NOT NULL,
	`isblueshield` SMALLINT NOT NULL,
	`inactive` BOOL NOT NULL,
	`prov_num` VARCHAR(17) NOT NULL,
	`other_id` VARCHAR(17) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:24
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_rx_patient - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:24


CREATE TABLE IF NOT EXISTS v (
	`patient_id` INT NULL,
	`patient_guid` VARCHAR(37) NULL,
	`last_name` VARCHAR(22) NULL,
	`first_name` VARCHAR(17) NULL,
	`mi` VARCHAR(3) NULL,
	`rx_id` INT NOT NULL,
	`rx_definition_id` INT NOT NULL,
	`rx_date` DATETIME NULL,
	`provider_id` VARCHAR(5) NOT NULL,
	`drug_name` VARCHAR(51) NOT NULL,
	`description` VARCHAR(51) NOT NULL,
	`dispense` VARCHAR(51) NOT NULL,
	`refills` INT NOT NULL,
	`sig` VARCHAR(152) NOT NULL,
	`aswritten` BOOL NOT NULL,
	`note` VARCHAR(501) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:24
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_rxlist - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:24


CREATE TABLE IF NOT EXISTS v (
	`rx_definition_id` INT NOT NULL,
	`drug_name` VARCHAR(51) NOT NULL,
	`description` VARCHAR(51) NOT NULL,
	`rx_date` DATETIME NULL,
	`active` VARCHAR(2) NOT NULL,
	`std` BOOL NOT NULL,
	`dispense` VARCHAR(51) NOT NULL,
	`refills` INT NOT NULL,
	`sig` VARCHAR(152) NOT NULL,
	`aswritten` BOOL NOT NULL,
	`note` VARCHAR(501) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:24
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    v_staff - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:24


CREATE TABLE IF NOT EXISTS v (
	`staff_id` VARCHAR(5) NOT NULL,
	`last_name` VARCHAR(22) NOT NULL,
	`first_name` VARCHAR(17) NOT NULL,
	`mi` VARCHAR(3) NOT NULL,
	`title` VARCHAR(22) NOT NULL,
	`work_phone` VARCHAR(18) NOT NULL,
	`work_phone_ext` VARCHAR(6) NOT NULL,
	`address_line1` VARCHAR(32) NOT NULL,
	`address_line2` VARCHAR(32) NOT NULL,
	`city` VARCHAR(27) NOT NULL,
	`state` VARCHAR(22) NOT NULL,
	`zip_code` VARCHAR(16) NOT NULL,
	`ssn` VARCHAR(11) NOT NULL,
	`isnonperson` BOOL NOT NULL,
	`inactive` BOOL NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:24
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    webpatient - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:24


CREATE TABLE IF NOT EXISTS webpatient (
	`automodifiedtimestamp` DATETIME NULL,
	`patid` INT NOT NULL,
	`patconsentdate` DATETIME NULL,
	`patpassworddate` DATETIME NULL,
	`patlastsent` INT NOT NULL,
	`patuserid` VARCHAR(16) NOT NULL,
	`patpassword` VARCHAR(11) NOT NULL,
	`patfampassword` BOOL NOT NULL,
	`emailaddr` VARCHAR(81) NOT NULL,
	`patsendemail` BOOL NOT NULL,
	`patsendapptreminders` SMALLINT NOT NULL,
	`patsendccreminders` BOOL NOT NULL,
	`patsendbillstate` BOOL NOT NULL,
	`patsendtp` BOOL NOT NULL,
	`patsendappt` BOOL NOT NULL,
	`patsendaccount` BOOL NOT NULL,
	`patuseemail` SMALLINT NOT NULL,
	`deletedflag` SMALLINT NOT NULL,
	`patsendref` BOOL NOT NULL,
	`famedit` SMALLINT NOT NULL,
	`webrequestid` INT NOT NULL,
	`_webpatrecunused` VARCHAR(16) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:24
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    webpay - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:24


CREATE TABLE IF NOT EXISTS webpay (
	`automodifiedtimestamp` DATETIME NULL,
	`webpayid` INT NOT NULL,
	`patid` INT NOT NULL,
	`approveddate` DATETIME NULL,
	`paymenttype` SMALLINT NOT NULL,
	`name` VARCHAR(81) NOT NULL,
	`webpaynum` VARCHAR(21) NOT NULL,
	`checknum` VARCHAR(22) NOT NULL,
	`expiredate` VARCHAR(9) NOT NULL,
	`ccardtype` VARCHAR(81) NOT NULL,
	`status` SMALLINT NOT NULL,
	`amt` DECIMAL NOT NULL,
	`identid` INT NOT NULL,
	`_webrequnused` VARCHAR(73) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:24
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    webrequest - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:24


CREATE TABLE IF NOT EXISTS webrequest (
	`automodifiedtimestamp` DATETIME NULL,
	`webreqid` INT NOT NULL,
	`requested` DATETIME NULL,
	`lastname` VARCHAR(22) NOT NULL,
	`firstname` VARCHAR(17) NOT NULL,
	`mi` VARCHAR(3) NOT NULL,
	`prefname` VARCHAR(17) NOT NULL,
	`street1` VARCHAR(32) NOT NULL,
	`street2` VARCHAR(32) NOT NULL,
	`city` VARCHAR(27) NOT NULL,
	`state` VARCHAR(22) NOT NULL,
	`zipcode` VARCHAR(16) NOT NULL,
	`emailaddr` VARCHAR(61) NOT NULL,
	`phone` VARCHAR(18) NOT NULL,
	`ssn` VARCHAR(11) NOT NULL,
	`username` VARCHAR(16) NOT NULL,
	`password` VARCHAR(11) NOT NULL,
	`identid` INT NOT NULL,
	`_webrequnused` VARCHAR(77) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:24
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    webrsc - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:24


CREATE TABLE IF NOT EXISTS webrsc (
	`automodifiedtimestamp` DATETIME NULL,
	`webrscid` VARCHAR(11) NOT NULL,
	`userid` VARCHAR(21) NOT NULL,
	`password` VARCHAR(21) NOT NULL,
	`rempassword` INT NOT NULL,
	`ccpaytype` INT NOT NULL,
	`checkpaytype` INT NOT NULL,
	`applypaymentagreement` SMALLINT NOT NULL,
	`cccredittype` INT NOT NULL,
	`checkcredittype` INT NOT NULL,
	`_unused0` VARCHAR(239) NOT NULL,
	`merchantid` VARCHAR(256) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:24
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    webupdate - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:24


CREATE TABLE IF NOT EXISTS webupdate (
	`automodifiedtimestamp` DATETIME NULL,
	`webupdid` INT NOT NULL,
	`newpatflag` SMALLINT NOT NULL,
	`patid` INT NOT NULL,
	`submitted` DATETIME NULL,
	`updated` INT NOT NULL,
	`lastname` VARCHAR(22) NOT NULL,
	`firstname` VARCHAR(17) NOT NULL,
	`mi` VARCHAR(3) NOT NULL,
	`prefname` VARCHAR(17) NOT NULL,
	`title` VARCHAR(11) NOT NULL,
	`street1` VARCHAR(32) NOT NULL,
	`street2` VARCHAR(32) NOT NULL,
	`city` VARCHAR(27) NOT NULL,
	`state` VARCHAR(22) NOT NULL,
	`zipcode` VARCHAR(16) NOT NULL,
	`cityflag` SMALLINT NOT NULL,
	`cityid` VARCHAR(27) NOT NULL,
	`emailaddr` VARCHAR(61) NOT NULL,
	`phone` VARCHAR(18) NOT NULL,
	`workphone` VARCHAR(18) NOT NULL,
	`workext` VARCHAR(6) NOT NULL,
	`fax` VARCHAR(18) NOT NULL,
	`pager` VARCHAR(18) NOT NULL,
	`otherphone` VARCHAR(18) NOT NULL,
	`empname` VARCHAR(33) NOT NULL,
	`empstreet1` VARCHAR(32) NOT NULL,
	`empstreet2` VARCHAR(32) NOT NULL,
	`empcity` VARCHAR(27) NOT NULL,
	`empzipcode` VARCHAR(16) NOT NULL,
	`empphone` VARCHAR(18) NOT NULL,
	`empflag` SMALLINT NOT NULL,
	`empid` INT NOT NULL,
	`priminssubscriber` VARCHAR(40) NOT NULL,
	`priminscarrier` VARCHAR(33) NOT NULL,
	`secinssubscriber` VARCHAR(40) NOT NULL,
	`secinscarrier` VARCHAR(33) NOT NULL,
	`primmedinssubscriber` VARCHAR(40) NOT NULL,
	`primmedinscarrier` VARCHAR(33) NOT NULL,
	`secmedinssubscriber` VARCHAR(40) NOT NULL,
	`secmedinscarrier` VARCHAR(33) NOT NULL,
	`patalert` SMALLINT NOT NULL,
	`note` INT NOT NULL,
	`noteflag` SMALLINT NOT NULL,
	`empstate` VARCHAR(4) NOT NULL,
	`_webupd_unused` VARCHAR(21) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:24
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    webupref - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:24


CREATE TABLE IF NOT EXISTS webupref (
	`automodifiedtimestamp` DATETIME NULL,
	`refupdate` INT NOT NULL,
	`refid` INT NOT NULL,
	`patid` INT NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:24
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




###################################################################
###    zipcode - aKm Apps Apos . . . aKm Apps Apos  ####
###################################################################
### tiK! 19 / 11 / 2015 16: 26:24


CREATE TABLE IF NOT EXISTS zipcode (
	`automodifiedtimestamp` DATETIME NULL,
	`zipcode` VARCHAR(16) NOT NULL,
	`city` VARCHAR(27) NOT NULL,
	`state` VARCHAR(22) NOT NULL,
	`country` VARCHAR(25) NOT NULL
);


##### toK! 19 / 11 / 2015 16: 26:25
###################################################################
###aKm Apps Apos . . . aKm Apps Apos  - aKmDtxMySqlCreate.sql  ####
###################################################################




