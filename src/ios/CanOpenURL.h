//
//  CanOpenURL.h
//  SyncOnSet
//
//  Created by Christopher Sullivan for Wymsee on 7/5/2014.
//

#import <Cordova/CDVPlugin.h>

@interface CanOpenURL : CDVPlugin

- (void) checkURL:(CDVInvokedUrlCommand *)command;

- (void) openURL:(CDVInvokedUrlCommand *)command;

@end
