# bilibili_lottery

B站UP主抽奖脚本，从评论+关注和仅评论的用户中抽取若干名幸运观众（带启动脚本）

## 使用说明

该项目原项目地址[https://github.com/Magician-T/bilibili_lottery](https://github.com/Magician-T/bilibili_lottery)

### 修改项目中加入了启动脚本可直接使用，安装好python环境后，和获取cookies后（如何获取B站cookies自行百度）可直接使用启动脚本免去以下步骤




## 下面为项目原使用说明



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
