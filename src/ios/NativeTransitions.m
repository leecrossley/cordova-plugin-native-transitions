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
    [UIView transitionWithView:self.viewController.view
                    duration:0.5
                    options:UIViewAnimationOptionTransitionFlipFromLeft
                    animations:^{}
                    completion:^(BOOL finished) {}];
}

- (void) left:(CDVInvokedUrlCommand*)command;
{
    [UIView transitionWithView:self.viewController.view
                    duration:0.5
                    options:UIViewAnimationOptionTransitionFlipFromRight
                    animations:^{}
                    completion:^(BOOL finished) {}];
}

- (void) fade:(CDVInvokedUrlCommand*)command;
{
    [UIView transitionWithView:self.viewController.view
                    duration:0.5
                    options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{}
                    completion:^(BOOL finished) {}];
}

@end