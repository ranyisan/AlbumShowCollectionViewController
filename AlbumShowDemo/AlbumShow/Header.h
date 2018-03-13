//
//  Header.h
//  AlbumShow
//
//  Created by 然亦伞 on 2018/3/13.
//  Copyright © 2018年 com.ranyisan. All rights reserved.
//

#ifndef Header_h
#define Header_h

#ifdef DEBUG
#define CCLog( s, ...) NSLog(@"<%@:(%d)> %@", [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__]);
#else
#define CCLog( s, ...);
#endif

#define screenWith [UIScreen mainScreen].bounds.size.width
#define screenHeight [UIScreen mainScreen].bounds.size.height
#define UIColorFromRGBA(r, g, b, a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define kMainColorOfApp      UIColorFromRGBA(243, 193, 24, 1)
#define kGrayColorOfApp      UIColorFromRGBA(153, 153, 153, 1)
#define kLineViewColor UIColorFromRGBA(200, 200, 200, 1)
#define kSystemVersion [[UIDevice currentDevice].systemVersion floatValue]

#endif /* Header_h */
