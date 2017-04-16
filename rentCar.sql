
##------------------------------------------------------
##  DDL for Table CARS
##------------------------------------------------------
  CREATE TABLE `CARS`
   (	`CARNUMBER` VARCHAR(20), 
	`CARTYPE` VARCHAR(50), 
	`COLOR` VARCHAR(10), 
	`PRICE` DECIMAL, 
	`RENTPRICE` DECIMAL, 
	`DEPOSIT` DECIMAL, 
	`ISRENTING` VARCHAR(20), 
	`CARDESC` VARCHAR(500)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
####------------------------------------------------
##  DDL for Table CHECKTABLE
####------------------------------------------------

  CREATE TABLE `CHECKTABLE` 
   (	`CHECKID` BIGINT, 
	`CHECKDATE` DATETIME, 
	`FIELD` VARCHAR(100), 
	`PROBLEM` VARCHAR(100), 
	`PAYING` DECIMAL, 
	`CHECKUSERID` VARCHAR(40), 
	`RENTID` BIGINT
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
####------------------------------------------------
##  DDL for Table CUSTOMERS
####------------------------------------------------

  CREATE TABLE `CUSTOMERS` 
   (	`IDENTITY` VARCHAR(40), 
	`CUSTNAME` VARCHAR(40), 
	`SEX` VARCHAR(10), 
	`ADDRESS` VARCHAR(100), 
	`PHONE` VARCHAR(20), 
	`CAREER` VARCHAR(20), 
	`CUSTPWD` VARCHAR(20)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
####------------------------------------------------
##  DDL for Table FUNS
####------------------------------------------------

  CREATE TABLE `FUNS` 
   (	`FUNID` BIGINT, 
	`FUNNAME` VARCHAR(40), 
	`FUNURL` VARCHAR(40), 
	`MENUID` BIGINT
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
####------------------------------------------------
##  DDL for Table LOGS
####------------------------------------------------

  CREATE TABLE `LOGS` 
   (	`ID` int(20) not null AUTO_INCREMENT, 
	`USERNAME` VARCHAR(40), 
	`ACTION` VARCHAR(40), 
	`ACTIONTIME` DATETIME, 
	`FLAG` BIGINT,
	primary key (ID)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
####------------------------------------------------
##  DDL for Table MENUS
####------------------------------------------------

  CREATE TABLE `MENUS` 
   (	`MENUID` BIGINT, 
	`MENUNAME` VARCHAR(40), 
	`CONNURL` VARCHAR(40), 
	`FATHERID` BIGINT
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
####------------------------------------------------
##  DDL for Table RENTTABLE
####------------------------------------------------

  CREATE TABLE `RENTTABLE` 
   (	`TABLEID` BIGINT, 
	`IMPREST` DECIMAL, 
	`SHOULDPAYPRICE` DECIMAL, 
	`PRICE` DECIMAL, 
	`BEGINDATE` DATETIME, 
	`SHOULDRETURNDATE` DATETIME, 
	`RETURNDATE` DATETIME, 
	`RENTFLAG` BIGINT, 
	`CUSTID` VARCHAR(20), 
	`CARID` VARCHAR(20), 
	`USERID` VARCHAR(40)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
####------------------------------------------------
##  DDL for Table ROLES
####------------------------------------------------

  CREATE TABLE `ROLES` 
   (	`ROLEID`  INT(20) not null AUTO_INCREMENT, 
	`ROLENAME` VARCHAR(20),
	primary key (ROLEID)
   ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
####------------------------------------------------
##  DDL for Table ROLES_MENUS
####------------------------------------------------

  CREATE TABLE `ROLES_MENUS` 
   (	`ROLEID` BIGINT, 
	`MENUID` BIGINT
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
####------------------------------------------------
##  DDL for Table USERS
####------------------------------------------------

  CREATE TABLE `USERS` 
   (	`USERNAME` VARCHAR(40), 
	`IDENTITY` VARCHAR(20), 
	`FULLNAME` VARCHAR(20), 
	`SEX` VARCHAR(10), 
	`ADDRESS` VARCHAR(40), 
	`PHONE` VARCHAR(20), 
	`POSITION` VARCHAR(20), 
	`USERLEVEL` BIGINT, 
	`USERPWD` VARCHAR(40)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

##-----------------------------------------------
##   DATA FOR TABLE ROLES
##   FILTER = none used
##-----------------------------------------------
## INSERTING into ROLES
Insert into ROLES (ROLEID,ROLENAME) values (1,'管理员');
Insert into ROLES (ROLEID,ROLENAME) values (2,'服务人员');
Insert into ROLES (ROLEID,ROLENAME) values (3,'普通客户');
Insert into ROLES (ROLEID,ROLENAME) values (64,'卢老师');

##-----------------------------------------------
##   END DATA FOR TABLE ROLES
##-----------------------------------------------

##-----------------------------------------------
##   DATA FOR TABLE FUNS
##   FILTER = none used
##-----------------------------------------------
## INSERTING into FUNS
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (800,'角色管理页面','roleMain.jsp',18);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (801,'查询角色页面','viewRole.jsp',18);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (808,'预添加角色动作','PreAddRole.do',18);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (802,'查询角色动作','findAllRole.do',18);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (803,'添加角色动作','addRole.do',18);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (805,'修改角色动作','updateRole.do',18);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (806,'删除角色动作','deleteRole.do',18);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (807,'显示所有角色页面','viewAllRole.jsp',18);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (112,'查询所有客户动作','findAllCustomersServlet.do',7);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (809,'添加角色动作','addRole.do',18);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (804,'添加角色页面','addRole.jsp',18);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (210,'查询所有汽车动作','findAllCar.do',10);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (113,'删除多个客户动作','deleteAllCustomersServlet.do',7);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (211,'删除多个汽车动作','DeleteAllCarServlet.do',10);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (323,'查询所有出租单动作','findAllRentCarTable.do',14);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (324,'查询单个出租单动作','findRentCarTableById.do',14);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (810,'查询单个角色动作','findRole.do',18);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (603,'删除单个日志动作','deleteLogsServlet.do',20);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (604,'删除多个日志动作','deleteAllLogs.do',20);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (325,'删除单个出租单动作','deleteRentTableServlet.do',14);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (326,'查询所有检查单动作','findAllCheckTable.do',15);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (327,'删除多个检查单动作','deleteAllCheckTableServlet.do',15);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (328,'删除多个出租单动作','deleteAllRentTableServlet.do',14);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (50,'添加用户角色查询动作','PreAddUser.do',3);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (11,'操作失败提示页面','error.jsp',1);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (12,'系统崩溃提示页面','appError.jsp',1);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (51,'添加用户页面','addUser.jsp',3);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (52,'添加用户动作','AddUser.do',3);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (13,'成功页面','success.jsp',1);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (53,'查询用户角色查询动作','PreFindUser.do',4);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (54,'查询用户页面','findUser.jsp',4);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (201,'添加汽车动作','addCar.do',9);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (202,'查询汽车页面','findCar.jsp',10);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (203,'显示查询汽车结果页面','viewCar.jsp',10);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (204,'查询汽车信息动作','findCar.do',10);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (205,'预更新查询汽车动作','PreUpdateCar.do',10);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (206,'显示更新汽车结果页面','updateCar.jsp',10);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (207,'更新汽车动作','UpdateCar.do',10);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (209,'删除汽车动作','deleteCar.do',10);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (108,'删除客户动作','deleteCustomersServlet.do',7);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (61,'预修改用户密码','PreChangeUserPwd.do',4);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (62,'修改用户密码页面','changeUserPwd.jsp',4);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (63,'修改用户密码动作','ChangeUserPwd.do',4);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (109,'预修改客户密码','preChangeCustomerPwd.do',7);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (110,'修改客户密码页面','chengeCustomersPwd.jsp',7);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (111,'修改客户密码动作','chengeCustomersPwdServlet.do',7);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (300,'租车页面','rentCar.jsp',12);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (301,'预生成出租单动作','preCreateRentCarTableServlet.do',12);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (302,'预生成出租单页面','preCreateRenting.jsp',12);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (303,'生成出租单动作','createRentCarTableServlet.do',12);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (304,'汽车出租单查询页面','returnCar.jsp',13);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (305,'预还车查询动作','PreReturnCarSearch.do',13);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (307,'创建检查单动作','CreateCheckTable.do',13);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (309,'出租单管理查询动作','RentManagerSearch.do',14);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (321,'删除检查单动作','deleteCheckTableServlet.do',15);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (322,'查询当月应还汽车动作','MonthReturnCar.do',17);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (55,'显示查询用户结果页面','viewUser.jsp',4);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (56,'查询用户动作','FindUser.do',4);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (57,'预更新查询用户动作','PreUpdateUser.do',4);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (58,'显示更新用户页面','updateUser.jsp',4);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (1,'主页面','main.jsp',1);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (2,'头页面','top.jsp',1);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (3,'菜单页面','left.jsp',1);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (4,'脚页面','down.jsp',1);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (5,'操作页面','right.jsp',1);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (6,'权限提示页面','norole.jsp',1);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (8,'退出系统动作','ExitUser.do',1);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (9,'菜单导航','modNavTop.jsp',1);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (10,'菜单条','splitor.jsp',1);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (101,'添加客户动作','addCustomersServlet.do',6);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (102,'查询客户页面','findCustomers.jsp',7);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (103,'查询客户信息动作','findCustomersServlet.do',7);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (104,'显示查询客户结果页面','viewCustomers.jsp',7);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (105,'预更新客户查询动作','PreCustomers.do',7);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (106,'显示更新客户页面','updateCustomers.jsp',7);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (107,'更新客户动作','updateCustomersServlet.do',7);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (200,'添加汽车页面','addCar.jsp',9);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (306,'创建检查单页面','createCheckTable.jsp',13);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (308,'出租单管理页面','rentManager.jsp',14);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (310,'显示查询出租单结果页面','viewRenttables.jsp',14);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (317,'显示查询检查单结果页面','viewCheckTables.jsp',15);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (318,'预更新检查单查询动作','PreUdateCheckTable.do',15);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (319,'更新检查单页面','updateCheckTable.jsp',15);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (320,'更新检查单动作','updateCheckTable.do',15);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (400,'显示当月应还车结果页面','viewMonthReturnCarResult.jsp',17);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (401,'查询当月应归还汽车相信信息','FindMonthReturnCarByInfo.do',17);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (402,'显示当月应还汽车详细信息','findMonthReturnCarByInfo.jsp',17);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (59,'更新用户动作','UpdateUser.do',4);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (311,'预更新出租单查询动作','PreUpdateRenttable.do',14);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (312,'更新出租单页面','updateRenttable.jsp',14);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (313,'更新出租单动作','updeateRentTable.do',14);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (314,'删除出租单动作','DeleteRenttable.do',14);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (315,'检查单管理页面','checkManager.jsp',15);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (316,'查询检查单动作','findCheckTableById.do',15);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (60,'删除用户动作','DeleteUser.do',4);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (100,'添加客户页面','addCustomers.jsp',6);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (7,'中心页面','center.jsp',1);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (600,'日志查询页面','findLogs.jsp',20);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (601,'日志查询动作','findLogsServlet.do',20);
Insert into FUNS (FUNID,FUNNAME,FUNURL,MENUID) values (602,'日志显示页面','viewAllLogs.jsp',20);

##-----------------------------------------------
##   END DATA FOR TABLE FUNS
##-----------------------------------------------

##-----------------------------------------------
##   DATA FOR TABLE CUSTOMERS
##   FILTER = none used
##-----------------------------------------------
## INSERTING into CUSTOMERS
Insert into CUSTOMERS (IDENTITY,CUSTNAME,SEX,ADDRESS,PHONE,CAREER,CUSTPWD) values ('111111111111111111','4444','男','2222','13111111111','1111','111111');
Insert into CUSTOMERS (IDENTITY,CUSTNAME,SEX,ADDRESS,PHONE,CAREER,CUSTPWD) values ('333333333333333333','3333','男','333','13333333333','3333','333333');
Insert into CUSTOMERS (IDENTITY,CUSTNAME,SEX,ADDRESS,PHONE,CAREER,CUSTPWD) values ('13070319901020091x','aaaa','男','张家口','18910221124','呵呵1','112358');

##-----------------------------------------------
##   END DATA FOR TABLE CUSTOMERS
##-----------------------------------------------

##-----------------------------------------------
##   DATA FOR TABLE USERS
##   FILTER = none used
##-----------------------------------------------
## INSERTING into USERS
Insert into USERS (USERNAME,IDENTITY,FULLNAME,SEX,ADDRESS,PHONE,POSITION,USERLEVEL,USERPWD) values ('aaaaaa','11111111111111111X','123SSS','男','123','13588888888','132SSSS',1,'123456');
Insert into USERS (USERNAME,IDENTITY,FULLNAME,SEX,ADDRESS,PHONE,POSITION,USERLEVEL,USERPWD) values ('qqqqqq','130256366525366253','我萨芬','男','qqqqq','13545625362','qqqqqa',2,'qqqqqqq');
Insert into USERS (USERNAME,IDENTITY,FULLNAME,SEX,ADDRESS,PHONE,POSITION,USERLEVEL,USERPWD) values ('wangj','123221232222222222','wj','女','xhy','12332333333','jl',3,'1234');
Insert into USERS (USERNAME,IDENTITY,FULLNAME,SEX,ADDRESS,PHONE,POSITION,USERLEVEL,USERPWD) values ('admin','130723199003011225','赵晓丽','女','北京市朝阳区','13888888888','总经理',1,'888888');
Insert into USERS (USERNAME,IDENTITY,FULLNAME,SEX,ADDRESS,PHONE,POSITION,USERLEVEL,USERPWD) values ('wangyanjun','130723185602032534','王艳军','女','北京','18910221024','CEO',1,'wangyanjun');
Insert into USERS (USERNAME,IDENTITY,FULLNAME,SEX,ADDRESS,PHONE,POSITION,USERLEVEL,USERPWD) values ('liyue','130723199002015426','李月','男','保定','15611254630','销售',2,'123456');
Insert into USERS (USERNAME,IDENTITY,FULLNAME,SEX,ADDRESS,PHONE,POSITION,USERLEVEL,USERPWD) values ('1111111111111','111111111111111111','asdfsdf','女','阿斯顿发斯蒂芬','123123222','阿斯顿发',3,'111111');
Insert into USERS (USERNAME,IDENTITY,FULLNAME,SEX,ADDRESS,PHONE,POSITION,USERLEVEL,USERPWD) values ('song','130723199002012562','宋宁宁1','男','北京','156116032711','经理',1,'songningning');

##-----------------------------------------------
##   END DATA FOR TABLE USERS
##-----------------------------------------------

##-----------------------------------------------
##   DATA FOR TABLE LOGS
##   FILTER = none used
##-----------------------------------------------
## INSERTING into LOGS
Insert into LOGS (ID,USERNAME,ACTION,ACTIONTIME,FLAG) values (71,'admin','生成检查单','2013-04-17',2);
Insert into LOGS (ID,USERNAME,ACTION,ACTIONTIME,FLAG) values (82,'admin','生成出租单','2013-04-18',1);
Insert into LOGS (ID,USERNAME,ACTION,ACTIONTIME,FLAG) values (83,'admin','生成检查单','2013-04-18',2);
Insert into LOGS (ID,USERNAME,ACTION,ACTIONTIME,FLAG) values (81,'admin','生成出租单','2013-04-18',1);

##-----------------------------------------------
##   END DATA FOR TABLE LOGS
##-----------------------------------------------

##-----------------------------------------------
##   DATA FOR TABLE CARS
##   FILTER = none used
##-----------------------------------------------
## INSERTING into CARS
Insert into CARS (CARINT,CARTYPE,COLOR,PRICE,RENTPRICE,DEPOSIT,ISRENTING,CARDESC) values ('湘A-8881','2','黑色',2,222,2,'1','2');
Insert into CARS (CARINT,CARTYPE,COLOR,PRICE,RENTPRICE,DEPOSIT,ISRENTING,CARDESC) values ('湘A-88886','BAOMA','黑色',1,1,1,'0',' 特好');
Insert into CARS (CARINT,CARTYPE,COLOR,PRICE,RENTPRICE,DEPOSIT,ISRENTING,CARDESC) values ('湘A-8884','湘A-8884','黑色',111,111,111,'0','111');

##-----------------------------------------------
##   END DATA FOR TABLE CARS
##-----------------------------------------------

##-----------------------------------------------
##   DATA FOR TABLE MENUS
##   FILTER = none used
##-----------------------------------------------
## INSERTING into MENUS
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (18,'系统管理',null,1);
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (19,'角色管理','SystemManager/roleMain.jsp',18);
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (1,'汽车租赁管理系统',null,-1);
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (2,'用户管理',null,1);
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (3,'添加用户','PreAddUser.do',2);
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (4,'查询用户','PreFindUser.do',2);
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (5,'客户管理',null,1);
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (6,'添加客户信息','custManager/addCustomers.jsp',5);
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (7,'查询客户信息','custManager/findCustomers.jsp',5);
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (8,'汽车管理',null,1);
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (9,'添加汽车信息','carManager/addCar.jsp',8);
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (10,'查询汽车信息','carManager/findCar.jsp',8);
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (11,'业务管理',null,1);
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (12,'汽车出租','operatorManager/rentCar.jsp',11);
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (13,'汽车入库','operatorManager/returnCar.jsp',11);
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (14,'出租单管理','operatorManager/rentManager.jsp',11);
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (15,'检查单管理','operatorManager/checkManager.jsp',11);
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (16,'业务统计',null,1);
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (17,'当月应还汽车','MonthReturnCar.do',16);
Insert into MENUS (MENUID,MENUNAME,CONNURL,FATHERID) values (20,'日志管理','SystemManager/findLogs.jsp',18);

##-----------------------------------------------
##   END DATA FOR TABLE MENUS
##-----------------------------------------------

##-----------------------------------------------
##   DATA FOR TABLE CHECKTABLE
##   FILTER = none used
##-----------------------------------------------
## INSERTING into CHECKTABLE
Insert into CHECKTABLE (CHECKID,CHECKDATE,FIELD,PROBLEM,PAYING,CHECKUSERID,RENTID) values (1366189536277,'2013-04-17','无','无',0,'admin',1366189296714);

##-----------------------------------------------
##   END DATA FOR TABLE CHECKTABLE
##-----------------------------------------------

##-----------------------------------------------
##   DATA FOR TABLE ROLES_MENUS
##   FILTER = none used
##-----------------------------------------------
## INSERTING into ROLES_MENUS
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,1);
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,2);
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,3);
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,4);
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,5);
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,6);
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,7);
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,8);
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,9);
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,10);
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,11);
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,12);
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,13);
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,14);
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,15);
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,16);
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,17);
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,18);
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,19);
Insert into ROLES_MENUS (ROLEID,MENUID) values (1,20);
Insert into ROLES_MENUS (ROLEID,MENUID) values (64,2);
Insert into ROLES_MENUS (ROLEID,MENUID) values (64,3);
Insert into ROLES_MENUS (ROLEID,MENUID) values (64,4);
Insert into ROLES_MENUS (ROLEID,MENUID) values (64,8);
Insert into ROLES_MENUS (ROLEID,MENUID) values (64,9);
Insert into ROLES_MENUS (ROLEID,MENUID) values (64,10);
Insert into ROLES_MENUS (ROLEID,MENUID) values (64,18);
Insert into ROLES_MENUS (ROLEID,MENUID) values (64,19);
Insert into ROLES_MENUS (ROLEID,MENUID) values (64,20);

##-----------------------------------------------
##   END DATA FOR TABLE ROLES_MENUS
##-----------------------------------------------

##-----------------------------------------------
##   DATA FOR TABLE RENTTABLE
##   FILTER = none used
##-----------------------------------------------
## INSERTING into RENTTABLE
Insert into RENTTABLE (TABLEID,IMPREST,SHOULDPAYPRICE,PRICE,BEGINDATE,SHOULDRETURNDATE,RETURNDATE,RENTFLAG,CUSTID,CARID,USERID) values (1364983013109,2,22,24,'2013-04-03','2013-04-04','2013-04-03',1,'333333333333333333','湘A-8881','admin');
Insert into RENTTABLE (TABLEID,IMPREST,SHOULDPAYPRICE,PRICE,BEGINDATE,SHOULDRETURNDATE,RETURNDATE,RENTFLAG,CUSTID,CARID,USERID) values (1365762404640,2222,2222,2222,'2013-04-18','2013-04-23',null,1,'13070319901020091x','湘A-8881','admin');
Insert into RENTTABLE (TABLEID,IMPREST,SHOULDPAYPRICE,PRICE,BEGINDATE,SHOULDRETURNDATE,RETURNDATE,RENTFLAG,CUSTID,CARID,USERID) values (1366189296714,111,111,111,'2013-04-17','2013-04-18',null,1,'13070319901020091x','湘A-8881','admin');
Insert into RENTTABLE (TABLEID,IMPREST,SHOULDPAYPRICE,PRICE,BEGINDATE,SHOULDRETURNDATE,RETURNDATE,RENTFLAG,CUSTID,CARID,USERID) values (1365765299421,111,4444,4444,'2013-04-12','2013-04-18',null,1,'13070319901020091x','湘A-8881','admin');
Insert into RENTTABLE (TABLEID,IMPREST,SHOULDPAYPRICE,PRICE,BEGINDATE,SHOULDRETURNDATE,RETURNDATE,RENTFLAG,CUSTID,CARID,USERID) values (1366257604390,111,111,111,'2013-04-12','2013-04-19',null,1,'13070319901020091x','湘A-8881','admin');
Insert into RENTTABLE (TABLEID,IMPREST,SHOULDPAYPRICE,PRICE,BEGINDATE,SHOULDRETURNDATE,RETURNDATE,RENTFLAG,CUSTID,CARID,USERID) values (1366272218781,222,222,2222,'2013-04-18','2013-04-19',null,1,'13070319901020091x','湘A-88886','admin');
Insert into RENTTABLE (TABLEID,IMPREST,SHOULDPAYPRICE,PRICE,BEGINDATE,SHOULDRETURNDATE,RETURNDATE,RENTFLAG,CUSTID,CARID,USERID) values (1366177261234,1,1,1,'2013-04-17','2013-04-18',null,1,'333333333333333333','湘A-8881','admin');

##-----------------------------------------------
##   END DATA FOR TABLE RENTTABLE
##-----------------------------------------------
