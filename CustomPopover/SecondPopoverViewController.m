//
//  SecondPopoverViewController.m
//  CustomPopover
//
//  Created by Rajendrasinh Parmar on 18/09/15.
//  Copyright (c) 2015 Rajendrasinh Parmar. All rights reserved.
//

#import "SecondPopoverViewController.h"

@interface SecondPopoverViewController ()

@end

@implementation SecondPopoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)closePopover:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
