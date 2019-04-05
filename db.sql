CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10005 DEFAULT CHARSET=utf8 COMMENT='运营后台用户表';

CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) DEFAULT NULL COMMENT '角色名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台角色表';

CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_code` varchar(255) DEFAULT '' COMMENT '归属菜单,前端判断并展示菜单使用,',
  `menu_name` varchar(255) DEFAULT '' COMMENT '菜单的中文释义',
  `permission_code` varchar(255) DEFAULT '' COMMENT '权限的代码/通配符,对应代码中@RequiresPermissions 的value',
  `permission_name` varchar(255) DEFAULT '' COMMENT '本权限的中文释义',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台权限表';

CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户-角色关联表';

CREATE TABLE `sys_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  `permission_id` int(11) DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='角色-权限关联表';

INSERT INTO `sys_user` VALUES (10003, 'admin', '394cf6e8ec12918a0c3f786b1f153089');
INSERT INTO `sys_user` VALUES (10004, 'user', '394cf6e8ec12918a0c3f786b1f153089');

INSERT INTO `sys_role` VALUES (1, '管理员', '2017-11-22 16:24:34');
INSERT INTO `sys_role` VALUES (2, '用户', '2017-11-22 16:24:34');

INSERT INTO `sys_role` VALUES (1, '管理员', '2017-11-22 16:24:34');
INSERT INTO `sys_role` VALUES (2, '用户', '2017-11-22 16:24:34');

INSERT INTO `sys_permission` VALUES (601, 'user', '用户', 'user:list', '列表');
INSERT INTO `sys_permission` VALUES (602, 'user', '用户', 'user:add', '新增');
INSERT INTO `sys_permission` VALUES (603, 'user', '用户', 'user:update', '修改');
INSERT INTO `sys_permission` VALUES (701, 'role', '角色权限', 'role:list', '列表');
INSERT INTO `sys_permission` VALUES (702, 'role', '角色权限', 'role:add', '新增');
INSERT INTO `sys_permission` VALUES (703, 'role', '角色权限', 'role:update', '修改');
INSERT INTO `sys_permission` VALUES (704, 'role', '角色权限', 'role:delete', '删除');

INSERT INTO `sys_user_role` VALUES (1, 10003, 1);
INSERT INTO `sys_user_role` VALUES (2, 10003, 2);
INSERT INTO `sys_user_role` VALUES (3, 10004, 2);

INSERT INTO `sys_role_permission` VALUES (5, 2, 601);
INSERT INTO `sys_role_permission` VALUES (6, 2, 602);
INSERT INTO `sys_role_permission` VALUES (7, 2, 603);
INSERT INTO `sys_role_permission` VALUES (8, 2, 703);
INSERT INTO `sys_role_permission` VALUES (9, 2, 701);
INSERT INTO `sys_role_permission` VALUES (10, 2, 702);
INSERT INTO `sys_role_permission` VALUES (11, 2, 704);
INSERT INTO `sys_role_permission` VALUES (13, 3, 601);
INSERT INTO `sys_role_permission` VALUES (14, 3, 701);
INSERT INTO `sys_role_permission` VALUES (15, 3, 702);
INSERT INTO `sys_role_permission` VALUES (16, 3, 704);
INSERT INTO `sys_role_permission` VALUES (19, 3, 603);
INSERT INTO `sys_role_permission` VALUES (25, 1, 602);
INSERT INTO `sys_role_permission` VALUES (26, 1, 601);
INSERT INTO `sys_role_permission` VALUES (27, 1, 603);
INSERT INTO `sys_role_permission` VALUES (28, 1, 703);
INSERT INTO `sys_role_permission` VALUES (29, 1, 701);
INSERT INTO `sys_role_permission` VALUES (30, 1, 702);
INSERT INTO `sys_role_permission` VALUES (31, 1, 704);

