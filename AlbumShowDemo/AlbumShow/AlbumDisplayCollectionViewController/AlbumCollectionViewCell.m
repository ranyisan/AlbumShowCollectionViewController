//
//  AlbumCollectionViewCell.m
//  Welko
//
//  Created by Umbrella on 16/8/4.
//  Copyright © 2016年 daiya. All rights reserved.
//

#import "AlbumCollectionViewCell.h"
#import "MBProgressHUD.h"
@interface AlbumCollectionViewCell ()<UIActionSheetDelegate>
@end
@implementation AlbumCollectionViewCell
- (void)awakeFromNib {
    
    [super awakeFromNib];
    
    self.imgView.contentMode = UIViewContentModeScaleAspectFit;
    
    //添加长按手势
    UILongPressGestureRecognizer * longPressGr = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressToDo:)];
    
    longPressGr.minimumPressDuration = 1.0;
    
    [self addGestureRecognizer:longPressGr];
    
    //添加捏合手势
    self.imgView.userInteractionEnabled = YES;
    self.imgView.multipleTouchEnabled = YES;
    UIPinchGestureRecognizer* gesture = [[UIPinchGestureRecognizer alloc]
                                         
                                         initWithTarget:self action:@selector(handlePinch:)];
    // 为imageView添加手势处理器
    [self.imgView addGestureRecognizer:gesture];
}

//长按手势
-(void)longPressToDo:(UILongPressGestureRecognizer *)gesture
{
    if (gesture.state == UIGestureRecognizerStateBegan)
    {
        // 弹出保存图片弹框
        UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:nil
                                                           delegate:self
                                                  cancelButtonTitle:@"取消"
                                             destructiveButtonTitle:nil
                                                  otherButtonTitles:@"保存图片",nil];
        sheet.actionSheetStyle = UIActionSheetStyleBlackTranslucent;
        
        [sheet showInView:self];
    }
}

//捏合手势
- (void)handlePinch:(UIPinchGestureRecognizer *)recognizer {
    
    CGFloat scale = recognizer.scale;
    recognizer.view.transform = CGAffineTransformScale(recognizer.view.transform, scale, scale); //在已缩放大小基础下进行累加变化；区别于：使用 CGAffineTransformMakeScale 方法就是在原大小基础下进行变化
     recognizer.scale = 1.0;
}

#pragma mark - UIActionSheetDelegate

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {

    if(buttonIndex != actionSheet.cancelButtonIndex ){

        if (self.imgView.image) {
            
            UIImageWriteToSavedPhotosAlbum(self.imgView.image, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
        
        }else{
        
            MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:self];
            [self addSubview:HUD];
            HUD.mode = MBProgressHUDModeCustomView;
            HUD.label.text = @"保存图像不存在";
            [HUD showAnimated:NO];
            [HUD hideAnimated:NO afterDelay:2];
        }
    }
}

#pragma mark - UIImageWriteToSavePhonesAlbum CallBack
- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    NSString *saveResultMsg = @"已保存";
    
    if(error){
        saveResultMsg = @"保存失败";
    }
    
    MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:self];
    [self addSubview:HUD];
    HUD.mode = MBProgressHUDModeCustomView;
    HUD.label.text = saveResultMsg;
    [HUD showAnimated:NO];
    [HUD hideAnimated:NO afterDelay:2];
}
@end
