//
//  NativeTransitions.m
//  Copyright (c) 2013 Lee Crossley - http://ilee.co.uk
//

#import "Cordova/CDV.h"
#import "Cordova/CDVViewController.h"
#import "NativeTransitions.h"

@implementation NativeTransitions

- (void) flip:(CDVInvokedUrlCommand*)command;
{
    NSMutableDictionary *args = [command.arguments objectAtIndex:0];
    double duration = [[args objectForKey:@"duration"] doubleValue];
    NSString *direction = [args objectForKey:@"direction"];

    NSUInteger animation = UIViewAnimationOptionTransitionFlipFromLeft;

    if ([direction isEqualToString:@"right"])
    {
        animation = UIViewAnimationOptionTransitionFlipFromRight;
    }

    [UIView transitionWithView:self.viewController.view
                    duration:duration
                    options:UIViewAnimationOptionAllowAnimatedContent
                        |animation
                    animations:^{}
                    completion:^(BOOL finished) {
                        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
                        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
                    }];
}

- (void) curl:(CDVInvokedUrlCommand*)command;
{
    NSMutableDictionary *args = [command.arguments objectAtIndex:0];
    double duration = [[args objectForKey:@"duration"] doubleValue];
    NSString *direction = [args objectForKey:@"direction"];

    NSUInteger animation = UIViewAnimationOptionTransitionCurlUp;

    if ([direction isEqualToString:@"down"])
    {
        animation = UIViewAnimationOptionTransitionCurlDown;
    }

    [UIView transitionWithView:self.viewController.view
                    duration:duration
                    options:UIViewAnimationOptionAllowAnimatedContent
                        |animation
                    animations:^{}
                    completion:^(BOOL finished) {
                        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
                        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
                    }];
}

- (void) fade:(CDVInvokedUrlCommand*)command;
{
    NSMutableDictionary *args = [command.arguments objectAtIndex:0];
    double duration = [[args objectForKey:@"duration"] doubleValue];

    [UIView transitionWithView:self.viewController.view
                    duration:duration
                    options:UIViewAnimationOptionAllowAnimatedContent
                        |UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{}
                    completion:^(BOOL finished) {
                        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
                        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
                    }];
}

@end