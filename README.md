dlog
====

dlog是一个轻量级的增强PHP文件记录错误日志的扩展，它不同于xdebug，<br />
没有xdebug及其复杂的功能，可用于关闭错误输出、打开错误日志的线上环境的部署，<br />
便于线上跟踪程序错误，及其Stack trace。<br />

代码编译<br />
phpize<br />
./configure --with-php-config=php-config<br />
make && make install<br />

扩展部署
php.ini配置文件新增以下行：<br />
extension = dlog.so<br />
dlog.enable = 1 // 默认情况下是关闭状态<br />
