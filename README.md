#dlog
> dlog是一个轻量级的增强PHP文件记录错误日志的扩展，它不同于xdebug，  没有xdebug极其复杂的功能，可用于关闭错误输出、打开错误日志的线上环境的部署，
便于线上跟踪程序错误，及其Stack trace。
##代码编译
* phpize
* ./configure --with-php-config=php-config
* make && make install
##扩展部署
* php.ini配置文件新增以下行：
* extension = dlog.so
* dlog.enable = 1 *// 默认情况下是关闭状态*
---
email: <fengxu0824@foxmail.com>

