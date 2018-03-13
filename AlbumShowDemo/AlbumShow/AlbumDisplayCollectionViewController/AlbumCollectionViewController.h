//
//  AlbumCollectionViewController.h
//  Welko
//
//  Created by Umbrella on 16/8/4.
//  Copyright © 2016年 daiya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlbumPicModel.h"
@interface AlbumCollectionViewController : UICollectionViewController
/*图片地址数组**/
@property (nonatomic,strong) NSArray *picsArr;
/*导航栏标题**/
@property (nonatomic,copy) NSString *navTitle;
/*底部注脚标题**/
@property (nonatomic,assign) BOOL isHasFooterTitle;
/*相册类型**/
@property (nonatomic,assign) int albumType; //默认类型为0，其他类型有1
/*初始显示第几张图片**/
@property (assign,nonatomic)int pageIndex;
@end

