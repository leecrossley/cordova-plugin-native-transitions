//
//  NativeTransitions.m
//  Copyright (c) 2013 Lee Crossley - http://ilee.co.uk
//

#import "Cordova/CDV.h"
#import "Cordova/CDVViewController.h"
#import "NativeTransitions.h"

@implementation NativeTransitions

- (void) right:(CDVInvokedUrlCommand*)command;
{
    NSMutableDictionary *args = [command.arguments objectAtIndex:0];
    double duration = [[args objectForKey:@"duration"] doubleValue];

    [UIView transitionWithView:self.viewController.view
                    duration:duration
                    options:UIViewAnimationOptionAllowAnimatedContent
                        |UIViewAnimationOptionTransitionFlipFromLeft
                    animations:^{}
                    completion:^(BOOL finished) {}];
}

- (void) left:(CDVInvokedUrlCommand*)command;
{
    NSMutableDictionary *args = [command.arguments objectAtIndex:0];
    double duration = [[args objectForKey:@"duration"] doubleValue];

    [UIView transitionWithView:self.viewController.view
                    duration:duration
                    options:UIViewAnimationOptionAllowAnimatedContent
                        |UIViewAnimationOptionTransitionFlipFromRight
                    animations:^{}
                    completion:^(BOOL finished) {}];
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
                    completion:^(BOOL finished) {}];
}

@end