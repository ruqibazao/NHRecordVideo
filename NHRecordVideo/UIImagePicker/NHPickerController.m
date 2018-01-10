//
//  NHPickerController.m
//  NHRecordVideo
//
//  Created by neghao on 2018/1/10.
//  Copyright © 2018年 neghao. All rights reserved.
//

#import "NHPickerController.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import <MobileCoreServices/MobileCoreServices.h>

@interface NHPickerController ()<UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@end

@implementation NHPickerController

- (void)viewDidLoad {
    [super viewDidLoad];

    //判定设备是否支持录像
    if (![self isVideoRecordingAvailable]) {
        return;
    }
    
    self.sourceType = UIImagePickerControllerSourceTypeCamera;
//    self.mediaTypes = @[(NSString *)kUTTypeMovie];
    self.delegate = self;
    

    //    //隐藏系统自带UI
        self.showsCameraControls = NO;
    
}

#pragma mark - Private methods
- (BOOL)isVideoRecordingAvailable
{
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        
        NSArray *availableMediaTypes = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypeCamera];
        
        if ([availableMediaTypes containsObject:(NSString *)kUTTypeMovie]) {
            return YES;
        }
    }
    return NO;
}


@end
