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
    NSTimeInterval duration = [[args objectForKey:@"duration"] doubleValue];
    NSString *direction = [args objectForKey:@"direction"];

    UIViewAnimationOptions transition = UIViewAnimationOptionTransitionFlipFromLeft;

    if ([direction isEqualToString:@"right"])
    {
        transition = UIViewAnimationOptionTransitionFlipFromRight;
    }
    else if ([direction isEqualToString:@"top"])
    {
        transition = UIViewAnimationOptionTransitionFlipFromTop;
    }
    else if ([direction isEqualToString:@"bottom"])
    {
        transition = UIViewAnimationOptionTransitionFlipFromBottom;
    }

    [self performNativeTransition:transition withDuration:duration];
}

- (void) curl:(CDVInvokedUrlCommand*)command;
{
    NSMutableDictionary *args = [command.arguments objectAtIndex:0];
    NSTimeInterval duration = [[args objectForKey:@"duration"] doubleValue];
    NSString *direction = [args objectForKey:@"direction"];

    UIViewAnimationOptions transition = UIViewAnimationOptionTransitionCurlUp;

    if ([direction isEqualToString:@"down"])
    {
        transition = UIViewAnimationOptionTransitionCurlDown;
    }

    [self performNativeTransition:transition withDuration:duration];
}

- (void) fade:(CDVInvokedUrlCommand*)command;
{
    NSMutableDictionary *args = [command.arguments objectAtIndex:0];
    NSTimeInterval duration = [[args objectForKey:@"duration"] doubleValue];

    [self performNativeTransition:UIViewAnimationOptionTransitionCrossDissolve withDuration:duration];
}

- (void) performNativeTransition:(UIViewAnimationOptions)transition withDuration:(NSTimeInterval)duration
{
    [UIView transitionWithView:self.viewController.view
                      duration:duration
                       options:UIViewAnimationOptionAllowAnimatedContent | transition
                    animations:^{}
                    completion:^(BOOL finished) {
                        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
                        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
                    }];
}

@end
