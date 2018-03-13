//
//  AlbumCollectionViewCell.h
//  Welko
//
//  Created by Umbrella on 16/8/4.
//  Copyright © 2016年 daiya. All rights reserved.
//

#import <UIKit/UIKit.h>
//@class AlbumCollectionViewCell;
//@protocol AlbumCollectionViewCellDelegate <NSObject>
//-(void)longPressToSavePrice:(UIImage *)img;
//@end
@interface AlbumCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
//@property (nonatomic,weak)id<AlbumCollectionViewCellDelegate>delegate;
@end
