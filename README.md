该项目由于没有服务器，所以为了解决数据库的同步问题和密码的安全，只有采取所有人在本地导入数据库并新建用户来确保代码能顺利执行
需要的操作如下：
1.把数据库文件导入自己的mysql

2.新建一个用户并把数据库授权给该用户
命令如下：
CREATE USER 'EimsDBA'@'localhost' IDENTIFIED BY '123456';
GRANT SELECT, INSERT, UPDATE, DELETE ON EIMS.* TO 'EimsDBA'@'localhost';
FLUSH PRIVILEGES;
