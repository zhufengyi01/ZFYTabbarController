//
//  BaseNavigationViewController.m
//  ZFYTabbarController
//
//  Created by 朱封毅 on 29/06/15.
//  Copyright (c) 2015年 朱封毅. All rights reserved.
//

#import "BaseNavigationViewController.h"
#import "UIImage+Color.h"
#import "ZFYTabbar.h"
@interface BaseNavigationViewController ()<UINavigationControllerDelegate,UIGestureRecognizerDelegate>

@end

@implementation BaseNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationBar.translucent = NO;
    self.navigationBar.barTintColor = Nav_background_Color;
    self.navigationBar.tintColor = Nav_tintColor;
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault animated:YES];
    //设置返回的箭头自定义图片
    [[UINavigationBar appearance] setShadowImage:[[UIImage alloc] init]];
    UIImage  *backimage =Nav_back_icon imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [[UINavigationBar appearance]  setBackIndicatorTransitionMaskImage:backimage];
    [[UINavigationBar appearance]setBackIndicatorImage:backimage];
    //  去掉返回按钮文字
    UIBarButtonItem *baritem =[UIBarButtonItem appearanceWhenContainedIn:[UINavigationBar class], nil];
    UIOffset offset;
    offset.horizontal = -500;
    [baritem setBackButtonTitlePositionAdjustment:offset forBarMetrics:UIBarMetricsDefault];
    NSDictionary *titleAttributes = [NSDictionary dictionaryWithObjectsAndKeys:Nav_Title_Color,NSForegroundColorAttributeName,Nav_Title_Font,NSFontAttributeName, nil];
    [[UINavigationBar appearance] setTitleTextAttributes:titleAttributes];

}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count>0) {
        ///第二层viewcontroller 隐藏tabbar
        viewController.hidesBottomBarWhenPushed=YES;
    }
    [super pushViewController:viewController animated:YES];
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

@end
