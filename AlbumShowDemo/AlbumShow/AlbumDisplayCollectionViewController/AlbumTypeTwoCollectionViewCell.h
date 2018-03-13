//
//  AlbumTypeTwoCollectionViewCell.h
//  Welko
//
//  Created by Umbrella on 16/12/14.
//  Copyright © 2016年 daiya. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^ReturnTapToDoBlock)(void);
@interface AlbumTypeTwoCollectionViewCell : UICollectionViewCell <UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (copy, nonatomic) ReturnTapToDoBlock returnTapToDoBlock;
- (void)returnToDoBlock:(ReturnTapToDoBlock)block;
@end
