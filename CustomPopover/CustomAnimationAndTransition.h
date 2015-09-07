//
//  CustomAnimationAndTransion.h
//  CustomPopover
//
//  Created by Rajendrasinh Parmar on 08/09/15.
//  Copyright (c) 2015 Rajendrasinh Parmar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CustomAnimationAndTransition : NSObject <UIViewControllerAnimatedTransitioning,UIViewControllerTransitioningDelegate>

@property (nonatomic,assign) BOOL isPresenting;

@end
