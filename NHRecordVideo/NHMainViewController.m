//
//  NHMainViewController.m
//  NHRecordVideo
//
//  Created by neghao on 2018/1/10.
//  Copyright © 2018年 neghao. All rights reserved.
//

#import "NHMainViewController.h"
#import "NHPickerController.h"


@interface NHMainViewController ()

@end

@implementation NHMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];


}


- (IBAction)launchUIImagePicker:(UIButton *)sender {
    NHPickerController *pick = [[NHPickerController alloc] init];
    
    [self presentViewController:pick animated:YES completion:nil];
    
}


- (IBAction)launchAVAsset:(UIButton *)sender {
    
    
}


- (IBAction)fileOut:(UIButton *)sender {
    
    
}


@end
