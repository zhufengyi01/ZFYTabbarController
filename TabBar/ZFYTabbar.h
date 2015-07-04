//
//  ZFYTabbar.h
//  ZFYTabbarController
//
//  Created by 朱封毅 on 04/07/15.
//  Copyright (c) 2015年 朱封毅. All rights reserved.
//

#ifndef ZFYTabbarController_ZFYTabbar_h
#define ZFYTabbarController_ZFYTabbar_h
#import "UIImage+Color.h"

#pragma mark ---Navigation config

//导航栏色调设置
#define Nav_tintColor     [UIColor colorWithRed:100.0/255.0 green:100.0/255.0 blue:100.0/255.0 alpha:1];
//导航栏的背景颜色
#define Nav_background_Color   [UIColor colorWithRed:180.0/255.0 green:180.0/255.0 blue:180.0/255.0 alpha:1]
//导航栏的标题字体大小
#define Nav_Title_Font            [UIFont boldSystemFontOfSize:16]
//导航栏的标题颜色
#define Nav_Title_Color           [UIColor colorWithRed:10.0/255.0 green:120.0/255.0 blue:100.0/255.0 alpha:1]
//设置返回按钮的图片
#define Nav_back_icon            [[UIImage imageNamed:@"back_Icon.png"] 


#pragma mark  ---Tabbar   config
// 字体设置
#define Tab_TITLE_NORMAL_COLOR   [UIColor colorWithRed:20/255.0 green:20/255.0 blue:120/255.0 alpha:1]
#define Tab_TITLE_SELECTED_COLOR [UIColor colorWithRed:20/255.0 green:152/255.0 blue:172/255.0 alpha:1]
#define Tab_TITLE_FONT           [UIFont fontWithName:@"AmericanTypewriter" size:14.0f]


#endif
