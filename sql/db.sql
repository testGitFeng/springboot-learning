CREATE datebase user;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

insert into `user`(id, username, password, mobile, email,sex, nickname) VALUES(1, 'admin', '123456', '13918891675','mmc@163.com', '男', '管理员');
insert into `user`(id, username, password, mobile, email,sex, nickname) VALUES(2, 'lisi2', '123456', '13918891675','mmc@163.com', 'm', 'lisi1');
insert into `user`(id, username, password, mobile, email,sex, nickname) VALUES(3, 'lisi3', '123456', '13918891675','mmc@163.com', 'm', 'lisi1');
insert into `user`(id, username, password, mobile, email,sex, nickname) VALUES(4, 'lisi4', '123456', '13918891675','mmc@163.com', 'm', 'lisi1');
insert into `user`(id, username, password, mobile, email,sex, nickname) VALUES(5, 'lisi5', '123456', '13918891675','mmc@163.com', 'm', 'lisi1');
insert into `user`(id, username, password, mobile, email,sex, nickname) VALUES(6, 'lisi6', '123456', '13918891675','mmc@163.com', 'm', 'lisi1');
insert into `user`(id, username, password, mobile, email,sex, nickname) VALUES(7, 'lisi7', '123456', '13918891675','mmc@163.com', 'm', 'lisi1');
insert into `user`(id, username, password, mobile, email,sex, nickname) VALUES(8, 'lisi8', '123456', '13918891675','mmc@163.com', 'm', 'lisi1');
insert into `user`(id, username, password, mobile, email,sex, nickname) VALUES(9, 'lisi9', '123456', '13918891675','mmc@163.com', 'm', 'lisi1');
insert into `user`(id, username, password, mobile, email,sex, nickname) VALUES(10, 'lisi10', '123456', '13918891675','mmc@163.com', 'm', 'lisi1');
insert into `user`(id, username, password, mobile, email,sex, nickname) VALUES(11, 'lisi11', '123456', '13918891675','mmc@163.com', 'm', 'lisi1');
insert into `user`(id, username, password, mobile, email,sex, nickname) VALUES(12, 'lisi12', '123456', '13918891675','mmc@163.com', 'm', 'lisi1');
insert into `user`(id, username, password, mobile, email,sex, nickname) VALUES(13, 'lisi13', '123456', '13918891675','mmc@163.com', 'm', 'lisi1');
insert into `user`(id, username, password, mobile, email,sex, nickname) VALUES(14, 'lisi14', '123456', '13918891675','mmc@163.com', 'm', 'lisi1');

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `create_time` DATE DEFAULT NULL,
  `update_time` DATE DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionname` varchar(255) DEFAULT NULL,
  `resourceType` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `create_time` DATE DEFAULT NULL,
  `update_time` DATE DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(255) DEFAULT NULL,
  `permission_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

insert into `role`(id, rolename, description, status, create_time, update_time) VALUES (1, 'admin', '管理员', 'use', '2018-08-10', '2018-08-10');
insert into `role`(id, rolename, description, status, create_time, update_time) VALUES (2, 'manage', '经理', 'use', '2018-08-10', '2018-08-10');
insert into `role`(id, rolename, description, status, create_time, update_time) VALUES (3, 'user', '普通用户', 'use', '2018-08-10', '2018-08-10');

INSERT INTO `permission` (id, permissionname, resourceType, url, permission, status, create_time, update_time) VALUES (1,'用户管理','menu', 'userlist','user:list','use','2018-08-10', '2018-08-10');
INSERT INTO `permission` (id, permissionname, resourceType, url, permission, status, create_time, update_time) VALUES (2,'用户修改','menu', 'useredit','user:edit','use','2018-08-10', '2018-08-10');
INSERT INTO `permission` (id, permissionname, resourceType, url, permission, status, create_time, update_time) VALUES (3,'用户删除','menu', 'userdelete','user:delete','use','2018-08-10', '2018-08-10');

INSERT INTO `user_role` (id, user_id, role_id) VALUES (1, 1 ,1);
INSERT INTO `user_role` (id, user_id, role_id) VALUES (2, 1 ,2);
INSERT INTO `user_role` (id, user_id, role_id) VALUES (3, 1 ,3);
INSERT INTO `user_role` (id, user_id, role_id) VALUES (4, 2 ,2);
INSERT INTO `user_role` (id, user_id, role_id) VALUES (5, 3 ,3);
INSERT INTO `user_role` (id, user_id, role_id) VALUES (6, 4 ,3);

INSERT INTO `role_permission` (id, role_id, permission_id) VALUES (1, 1, 1);
INSERT INTO `role_permission` (id, role_id, permission_id) VALUES (2, 1, 2);
INSERT INTO `role_permission` (id, role_id, permission_id) VALUES (3, 1, 3);
INSERT INTO `role_permission` (id, role_id, permission_id) VALUES (4, 2, 1);
INSERT INTO `role_permission` (id, role_id, permission_id) VALUES (5, 2, 2);
INSERT INTO `role_permission` (id, role_id, permission_id) VALUES (6, 3, 1);