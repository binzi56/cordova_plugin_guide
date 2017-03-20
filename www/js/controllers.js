angular.module('starter.controllers', [])

.controller('DashCtrl', function($scope) {
    document.addEventListener("deviceready", onDeviceReady, false);
    function onDeviceReady(){
        // 设置App的版本号
        $scope.version = AppVersion.version;
            
        AppVersion.getInfo(function(data){
//             alert("成功回调");
        }),(function(error){
//             alert("失败回调");
        });
            
        // 打印输出日志
        console.log("此处为打印输出日志");
        // 设置状态栏的主题为白色
        window.StatusBar.styleLightContent();
        // 设备信息
        $scope.deviceVersion = device.version;
        $scope.manufacturer = device.manufacturer;
            
    };
            
})

.controller('ChatsCtrl', function($scope, Chats) {
  // With the new view caching in Ionic, Controllers are only called
  // when they are recreated or on app start, instead of every page change.
  // To listen for when this page is active (for example, to refresh data),
  // listen for the $ionicView.enter event:
  //
  //$scope.$on('$ionicView.enter', function(e) {
  //});
//
//  $scope.chats = Chats.all();
//  $scope.remove = function(chat) {
//    Chats.remove(chat);
//  };
    function plusOK(){
    cordova.plugins.MyMath.plus([5,20],success , error);
    };
    
//    function plusFAIL(){
//    cordova.plugins.MyMath.plus([5,100],success , error);
//    };
//    
//    function minusOK(){
//    cordova.plugins.MyMath.minus([70,6],success , error);
//    };
//    
//    function minusFAIL(){
//    cordova.plugins.MyMath.minus([5,20],success , error);
//    };
            
    function success(msg){
    console.log(msg);
    alert("成功回调:" + msg);
    };

    function error(msg){
    console.log(msg);
    alert("失败回调:" + msg);
    };
    
    plusOK();
})

.controller('ChatDetailCtrl', function($scope, $stateParams, Chats) {
  $scope.chat = Chats.get($stateParams.chatId);
})

.controller('AccountCtrl', function($scope) {
  $scope.settings = {
    enableFriends: true
  };
});
