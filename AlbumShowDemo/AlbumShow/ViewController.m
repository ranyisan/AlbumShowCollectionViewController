//
//  ViewController.m
//  AlbumShow
//
//  Created by 然亦伞 on 2018/3/13.
//  Copyright © 2018年 com.ranyisan. All rights reserved.
//

#import "ViewController.h"
#import "AlbumCollectionViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    AlbumCollectionViewController *albumVC = [[AlbumCollectionViewController alloc]init];
    
    NSMutableArray *arr = [NSMutableArray array];
    NSArray *imgs = @[@"https://img1.doubanio.com/view/photo/l/public/p2514025827.jpg",@"https://img3.doubanio.com/view/photo/l/public/p2514021486.jpg",@"https://img3.doubanio.com/view/photo/l/public/p2515104512.jpg",@"https://img3.doubanio.com/view/photo/l/public/p2514163535.jpg"];
//    for (NSString *str in imgs) {
//        AlbumPicModel *picModel = [[AlbumPicModel alloc]init];
//        picModel.icon = str;
//        [arr addObject:picModel];
//    }
    for (int i = 0; i<imgs.count; i++) {
        AlbumPicModel *picModel = [[AlbumPicModel alloc]init];
        picModel.icon = imgs[i];
        picModel.title = [NSString stringWithFormat:@"图片第%d张",i];
        [arr addObject:picModel];
    }
    albumVC.picsArr = [NSArray arrayWithArray:arr];
    albumVC.pageIndex = 2;
    albumVC.navTitle = @"相册浏览器";
    albumVC.albumType = 0;
    albumVC.isHasFooterTitle = YES;
    albumVC.edgesForExtendedLayout = UIRectEdgeNone;
    [self.navigationController pushViewController:albumVC animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
