//
//  ViewController.m
//  CustomPopover
//
//  Created by Rajendrasinh Parmar on 07/09/15.
//  Copyright (c) 2015 Rajendrasinh Parmar. All rights reserved.
//

#import "ViewController.h"
#import "CustomAnimationAndTransition.h"
@interface ViewController ()

@property (nonatomic,strong) CustomAnimationAndTransition *customTransitionController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.customTransitionController = [[CustomAnimationAndTransition alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openPopover:(UIButton *)sender {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *popover = [storyBoard instantiateViewControllerWithIdentifier:@"POPOVER"];
    popover.modalPresentationStyle = UIModalPresentationCustom;
    [popover setTransitioningDelegate:_customTransitionController];
    [self presentViewController:popover animated:YES completion:nil];
}
@end
