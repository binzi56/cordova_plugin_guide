/********* MyMath.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface MyMath : CDVPlugin {
  // Member variables go here.
}

- (void)Plus:(CDVInvokedUrlCommand*)command;
- (void)Minus:(CDVInvokedUrlCommand*)command;
@end

@implementation MyMath

- (void)Plus:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSArray *tempArr = command.arguments;
    NSNumber *A = tempArr[0];
    NSNumber *B = tempArr[1];
    int ret = A.intValue + B.intValue;
    if (ret < 100) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:ret];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"A + B must be smaller than 100"];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)Minus:(CDVInvokedUrlCommand *)command
{
    CDVPluginResult* pluginResult = nil;
    NSArray *tempArr = command.arguments;
    NSNumber *A = tempArr[0];
    NSNumber *B = tempArr[1];
    int ret = A.intValue - B.intValue;
    if (ret > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:ret];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"A must be bigger than B"];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
