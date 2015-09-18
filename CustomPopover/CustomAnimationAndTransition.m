//
//  CustomAnimationAndTransion.m
//  CustomPopover
//
//  Created by Rajendrasinh Parmar on 08/09/15.
//  Copyright (c) 2015 Rajendrasinh Parmar. All rights reserved.
//

#import "CustomAnimationAndTransition.h"
#import "ViewController.h"
#import "PopoverViewController.h"

@implementation CustomAnimationAndTransition

#pragma mark -
#pragma mark UIViewControllerAnimatedTransitioning

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    return 0.25f;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    UIView *transitionView = [transitionContext containerView];
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    if (self.isPresenting) {
        [transitionView addSubview:toViewController.view];
        
        CGRect screenRect = [[UIScreen mainScreen] bounds];
        [toViewController.view setFrame:CGRectMake(screenRect.size.width, screenRect.size.height, fromViewController.view.frame.size.width, fromViewController.view.frame.size.height)];
        
        [UIView animateWithDuration:0.25f
                         animations:^{
                             
                             [toViewController.view setFrame:CGRectMake(0, 0, fromViewController.view.frame.size.width, fromViewController.view.frame.size.height)];
                         }
                         completion:^(BOOL finished) {
                             [transitionContext completeTransition:YES];
                         }];
    } else {
        CGRect screenRect = [[UIScreen mainScreen] bounds];
        [UIView animateWithDuration:0.25f
                         animations:^{
                             [fromViewController.view setFrame:CGRectMake(screenRect.size.width, screenRect.size.height, fromViewController.view.frame.size.width, fromViewController.view.frame.size.height)];
                         }
                         completion:^(BOOL finished) {
                             [transitionContext completeTransition:YES];
                             [fromViewController.view removeFromSuperview];
                         }];
    }
}

#pragma mark -
#pragma mark UIViewControllerTransitioningDelegate

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    CustomAnimationAndTransition *controller = [[CustomAnimationAndTransition alloc] init];
    controller.isPresenting = YES;
    return controller;
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    CustomAnimationAndTransition *controller = [[CustomAnimationAndTransition alloc] init];
    controller.isPresenting = NO;
    return controller;
}

@end
