//
//  NativeTransitions.h
//  Copyright (c) 2013 Lee Crossley - http://ilee.co.uk
//

#import "Foundation/Foundation.h"
#import "Cordova/CDV.h"

@interface NativeTransitions : CDVPlugin

- (void) right:(CDVInvokedUrlCommand*)command;
- (void) left:(CDVInvokedUrlCommand*)command;
- (void) fade:(CDVInvokedUrlCommand*)command;

@end