该项目由于没有服务器，所以为了解决数据库的同步问题和密码的安全，只有采取所有人在本地导入数据库并新建用户来确保代码能顺利执行
需要的操作如下：

1.把数据库文件导入自己的mysql
导入命令如下：
--登录root用户，回车后输入密码
mysql -u root -p
--创建并使用数据库
create database EIMS;
use EIMS;
--导入sql文件（路径为sql文件所在位置）
source /path/to/your/sqlfile.sql;

2.新建一个用户并把数据库授权给该用户（须在root用户下授权）
命令如下：
--创建用户
CREATE USER 'EimsDBA'@'localhost' IDENTIFIED BY '123456';
--给用户授权，仅仅只授权了增删改查
GRANT SELECT, INSERT, UPDATE, DELETE ON EIMS.* TO 'EimsDBA'@'localhost';
--刷新权限
FLUSH PRIVILEGES;
