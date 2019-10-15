PrincekinKlineFrame
===========

[![Platform](https://img.shields.io/badge/platform-ios%7Cmacosx-green.svg)](https://github.com/iOSPrincekin/PrincekinKlineFrame)
[![Language: Swift-4.1](https://img.shields.io/badge/Swift-blue.svg)](https://swift.org)
[![DepthChart](https://img.shields.io/badge/DepthChart-navy.svg)](https://github.com/iOSPrincekin/PrincekinKlineFrame)
[![DepthChart](https://img.shields.io/badge/Kline-pink.svg)](https://github.com/iOSPrincekin/PrincekinKlineFrame)


`PrincekinKlineFrame` 是使用Swift语言编写的在iOS平台上运行的k线图库和深度图库的集合，她是由PrincekinKline和PrincekinDepthChart两个组件组成。她具有轻量、敏捷、稳定等特点，可为虚拟货币、金融等行业提供专业的k线图信息显示和深度图信息显示，具有很强的实用性和可扩展性。

----
# 使用效果

<details open=0>
<summary>竖屏</summary>
    
[![img](https://github.com/iOSPrincekin/PrincekinKlineFrame/blob/master/gif/竖屏.gif)](https://github.com/iOSPrincekin/PrincekinKlineFrame/blob/master/gif/竖屏.gif)

</details>

<details open=1>
<summary>横屏</summary>
    
[![img](https://github.com/iOSPrincekin/PrincekinKlineFrame/blob/master/gif/横屏.gif)](https://github.com/iOSPrincekin/PrincekinKlineFrame/blob/master/gif/横屏.gif)

</details>

<details open=1>
<summary>深度图</summary>
    
[![img](https://github.com/iOSPrincekin/PrincekinKlineFrame/blob/master/gif/深度图.gif)](https://github.com/iOSPrincekin/PrincekinKlineFrame/blob/master/gif/深度图.gif)

</details>



# 使用文档
- `PrincekinKline`是Swift语言编写的在iOS平台上运行的k线图库组件
## 安装

### CocoaPods
1.使用CocoaPods安装，pod 'PrincekinKlineFrame/PrincekinKline'

2.引入 'import PrincekinKlineFrame'
## 使用
<details open=1>
<summary>竖屏</summary>
    
    
### 步骤：
    
    1.在你的工程中创建一个类A继承自PKKLineContainerView，PKKLineContainerView是PrincekinKlineFrame竖屏方向上的K线图view；
    
    2.让类A实现PKKLineChangeKlineTypeDelegate代理方法；
    
    3.在类A中创建通过Http请求获取K线图数据，并将获取的K线图数据数据通过从PKKLineContainerView继承来的对象方法initData赋值初始数据；
    
    4.如果使用socket推送更新K线图数据，那么将推送过来的K线图数据通过从PKKLineContainerView继承来的对象方法appendData更新K线图数据；
    
    5.可参考PrincekinKlineFrameDemo
    
    
</details>


<details open=1>
<summary>横屏</summary>
    
### 优点：    
    PrincekinKlineFrame横屏功能和竖屏共用同一数据源，保证了数据的准确性和较小的cpu消耗，同时横屏和竖屏的交互性，
    如全部按钮的点击事件已经做好同步，符合实际开发产品的需要，只要按照正确姿势进行使用即可。
    
### 步骤：
    
    1.在你的工程中创建一个类A继承自UIViewController，在类A中定义一个PKKLineFullScreenView的对象属性fullView，同时类A实现FullScreenButtonClickDelegate中的全部代理方法；
    
    2.在类A中定义一个PKKLine的数组对象klineArray用于接收数据源；
    
    3.在类A中定义一个竖屏对象kLinePortraitVC；
    
    4.实现类A的横屏状态；
   
    5.一般类A是从竖屏对象中跳转过来，在跳转方法中初始化话一个类A对象，将竖屏对象中数据源赋值给类A对象的klineArray属性，将竖屏对象赋值给类A对象的kLinePortraitVC属性；

    6.可参考PrincekinKlineFrameDemo
    
    
</details>

### 关于[PrincekinKlineFrameDemo](https://github.com/iOSPrincekin/PrincekinKlineFrame/tree/master/PrincekinKlineFrameDemo)说明：

   1.我采用的是OHHTTPStubs模拟网络请求，获取K线图的Http数据，可用于开发过程中的网络调试，如果感兴趣可参考 [OHHTTPStubs](https://github.com/AliSoftware/OHHTTPStubs)
    
   2.为了实现实时推送的效果，我自己写了一个类SocketStob来模拟Socket的推送，在真实的开发开发环境中，推荐使用第三方库 [SocketRocket](https://github.com/facebook/SocketRocket) 来完成iOS的socket连接；
    
   3.虽然有15min、30min、1hour等按钮可以点击，但是我只实现15min的网络数据，在开发过程中，可以更具需要添加网络数据；
    



    






----

- `PrincekinDepthChart`是Swift语言编写的在iOS平台上运行的深度图组件
## 安装

### CocoaPods
1.使用CocoaPods安装，pod 'PrincekinKlineFrame/PrincekinDepthChart'

2.引入 'import PrincekinKlineFrame'
## 使用



----
# 许可

PrincekinKlineFrame 是在Apache License 2.0协议下开发完成的. 关于细节请查看[Apache License 2.0协议](https://github.com/iOSPrincekin/PrincekinKlineFrame/blob/master/LICENSE)。
