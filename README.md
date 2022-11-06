# ajiednspod
使用DNSPod实现IPv6的DDNS

## 作用

使用DNSPod为动态IPv6提供域名解析。
## 解释

- ${ID}：DNSPod Token ID
- ${Token}：DNSPod Token
- ${domain}：待解析的二级域名
- ${subDomain}：待解析的子域名（可以是泛解析）
- ${path}：存放脚本的文件夹，用绝对路径表示

## 操作步骤

0. 前期准备

	1. 有一台拥有公网IPv6地址的Linux设备
	2. 拥有一个可在dnspod中解析的域名

1. 获取API秘钥

	1. 在[DNSPod控制台 API秘钥管理][DNSPodconsole]准备一个可用的API秘钥。注意是“DNSPod Token”，不是“腾讯云API秘钥”。
	2. 记录ID和Token。Token仅在创建时可查看，后续无法查看，请妥善保存。

2. 获取脚本
	1. 在github下载或者在[我的博客][ajieBlog]复制ddnspod.sh和ajiednspod。
	2. 保存在${path}处。当前用户需要拥有这两个脚本的执行权限。

3. 编辑脚本

	按照上一步中获取到的ddnspod.sh中的注释，填写id、token、待解析域名和子域名。

4. 创建定时执行

	1. 打开crontab编辑器

		`crontab -e`

	2. 编写cron配置文件，在打开的编辑器中添加以下内容
		```
		*/5 * * * * ${path}/ddnspod.sh
		```
		表示每5分钟执行一次${path}/ddnspod.sh这个脚本


[ajieBlog]: https://blog.ajiebox.com/archives/chun-shell-shi-yong-dnspod-shi-xian-ddns
[DNSPodconsole]: https://console.dnspod.cn/account/token/token/