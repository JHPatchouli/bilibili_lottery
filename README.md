# bilibili_lottery  --startMod
更新内容

  1、针对b站更新的”BV号“

  2、对脚本进行封装

  3、自动检查和安装依赖

[TOC]


## 项目说明

B站UP主抽奖脚本，从评论+关注和仅评论的用户中抽取若干名幸运观众（重制版）

该项目基于项目[https://github.com/Magician-T/bilibili_lottery](https://github.com/Magician-T/bilibili_lottery)的旧项目，编写了便携脚本，源项目已更新弹幕获奖概率，后续会跟进适配


封装版[下载地址](https://github.com/JHPatchouli/bilibili_lottery/releases/tag/Bilibili_lotteryMod)


## 使用说明

#### 一、请检查python环境和pip 管理器

脚本内置检查，请确保你在`cmd`中能使用以下命令，以通过脚本测试

```
python --version
pip --version
```

#### 二、requests模块安装(必要)

脚本内置安装，可以选择国内的安装源

清华镜像|中科大镜像|豆瓣镜像|阿里镜像|华中科大镜像|山东理工大学镜像|搜狐镜像|

#### 三、如何获取cookies

登录后在个人主页按`F12`，在开发者控制台中选择`Network`选项，然后刷新页面，找到带有UPID的请求，在右侧的`Headers`(请求头)中下滑看到`cookie`参数，冒号后的值就是cookie

![cookies](https://i0.hdslb.com/bfs/album/2c9fb8048c075530263b49205b0e1608b09ef85a.png)



## 以下为项目原使用说明



1. 打开`config.py`修改相关参数

|参数名|说明|
|:-:|:-:|
|VIDEO_ID|视频代码，例如av76438397，取数字部分76438397|
|USER_ID|UP主用户代码|
|NUM_WINNERS|计划抽取的获奖人数|

2. 新建文件，命名为`cookies.txt`，将B站cookie复制到该文件中，必须正确设置才能获取完整粉丝列表

3. 安装依赖

`$ pip install -r requirements`

4. 运行抽奖脚本

`$ python draw.py`

## 测试说明

1. （可选）打开`config.py`修改相关参数

|参数名|说明|
|:-:|:-:|
|TEST_POOL_SIZE|测试奖池人数|
|TEST_WINNERS|测试获奖人数|
|TEST_EXPERIMENTS|测试实验次数|

2. 运行测试

`$ python test.py`
