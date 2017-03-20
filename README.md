# test1
一个入门级的ios cordova插件开发指南, 希望能帮到大家,觉得不错的朋友请给个star吧;

/****************************************************************8/
cordova插件用法详述(内含demo)

一. 导入插件用法(以cordova-plugin-appversion为例)
1.导入方法:
添加插件;
cordova plugin add cordova-plugin-appversion

2.文件概述:
导入的文件, 系统已自动配置好了一切需要配置的文件, 所以直接调用就OK了;
js:

document.addEventListener("deviceready", onDeviceReady, false);
    function onDeviceReady(){
       // 设置App的版本号
       $scope.version = AppVersion.version;
};
h5:

 <p>
    当前myFirstProject的版本为{{version}}
 </p>

注意:
一般的插件，可以直接调用; 但是这种涉及到硬件或者系统的插件，就需要加上这个监听事件;

// 监听事件
document.addEventListener("deviceready", onDeviceReady, false);
    function onDeviceReady(){
};
附:
cordova-plugin-appversion插件官方解释
Cordova - 常用的插件与终端插件命令汇总

二.自定义插件用法
1.创建自定义插件
插件目录如下:

|MyMath
----|src
---------|android
--------------MyMath.java
---------|ios
--------------MyMath.m
----|www
---------|MyMath.js
----plugin.xml
注意:
创建插件可以自己按照插件目录创建, 这样plugin.xml文件中太繁琐; 本文推荐用plugman创建插件, 既方便又不容易出错;
附:
使用plugman 创建一个自己的cordova插件

2.导入自定义插件
按照链接创建好插件后, 就开始导入插件了; 这里我被坑的不浅啊, 看网上把插件放在plugins文件下, 然后update platforms; 可是完全不起作用, 还一顿报错; 原来此处就一句代码解决了;
下方为终端输入:

cordova plugin add /Users/apple/Desktop/test1
该方法添加插件后, 相应的config.xml, cordova_plugins.js, plugins会自动配置, 无需像手动导入的那么繁琐, 还容易出错;

3.使用说明
demo给plugman创建的插件重新写入了方法, 具体实现看demo;
