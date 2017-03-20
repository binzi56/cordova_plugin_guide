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
    int A = (int)[command.arguments objectAtIndex:0];
    int B = (int)[command.arguments objectAtIndex:1];
    int ret = A + B;
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
    int A = (int)[command.arguments objectAtIndex:0];
    int B = (int)[command.arguments objectAtIndex:1];
    int ret = A - B;
    if (ret > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:ret];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"A must be bigger than B"];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
