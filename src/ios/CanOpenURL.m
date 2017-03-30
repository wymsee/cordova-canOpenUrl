//
//  CanOpenURL.h
//  SyncOnSet
//
//  Created by Christopher Sullivan for Wymsee on 7/5/2014.
//

#import "CanOpenURL.h"

@implementation CanOpenURL

- (void) checkURL:(CDVInvokedUrlCommand *)command {
	CDVPluginResult* result = nil;
	NSString *urlArg = [command.arguments objectAtIndex: 0];
	if ([[UIApplication sharedApplication] canOpenURL:
    [NSURL URLWithString:urlArg]]) {
		result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:1];
		[self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
	} else {
		result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:0];
		[self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
	}
}

- (void) openURL:(CDVInvokedUrlCommand *)command {
	CDVPluginResult* result = nil;
	NSString *urlArg = [command.arguments objectAtIndex: 0];
	if ([[UIApplication sharedApplication] openURL:
    [NSURL URLWithString:urlArg]]) {
		result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:1];
		[self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
	} else {
		result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:0];
		[self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
	}
}

@end