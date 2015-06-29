//
//  CustomController.m
//  ZFYTabbarController
//
//  Created by 朱封毅 on 29/06/15.
//  Copyright (c) 2015年 朱封毅. All rights reserved.
//

#import "CustomController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "BaseNavigationViewController.h"
#import "ThirdViewController.h"
#import "UIImage+Color.h"
@interface CustomController ()

@end

@implementation CustomController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabBar.backgroundImage =[UIImage imageWithColor:[UIColor whiteColor]];
    NSArray  *classNameArray =[NSArray arrayWithObjects:@"FirstViewController",@"SecondViewController",@"ThirdViewController", nil];
    NSArray *titleArray =[NSArray arrayWithObjects:@"first",@"second",@"third", nil];
    NSArray *normalImageArray =[NSArray arrayWithObjects:@"feed_tab_butten_normal.png",@"movie_tab_butten_normal.png",@"me_tab_butten_normal.png",nil];
    NSArray *selectImageArray =[NSArray arrayWithObjects:@"feed_tab_butten_press.png",@"movie_tab_butten_press.png",@"me_tab_butten_press.png", nil];
    NSMutableArray  *navigationArray =[[NSMutableArray alloc]init];
    for (int i=0; i<classNameArray.count; i++) {
        UIViewController  *vc =(UIViewController *)[[NSClassFromString(classNameArray[i]) alloc] init];
        vc.title=titleArray[i];
        UIImage  *normalImage =[UIImage imageNamed:normalImageArray[i]];
        UIImage  *selectImage =[UIImage imageNamed:selectImageArray[i]];
        vc.tabBarItem.image =[normalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        vc.tabBarItem.selectedImage=[selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        BaseNavigationViewController *na =[[BaseNavigationViewController alloc]initWithRootViewController:vc];
        [navigationArray addObject:na];
    }
    self.viewControllers=navigationArray;
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor purpleColor], NSFontAttributeName:[UIFont fontWithName:@"AmericanTypewriter" size:14.0f]} forState:UIControlStateNormal];
    [item setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:20/255.0 green:152/255.0 blue:172/255.0 alpha:1], NSFontAttributeName:[UIFont fontWithName:@"AmericanTypewriter" size:14.0f]} forState:UIControlStateSelected];
    //设置选择后的高亮
    //self.tabBar.selectionIndicatorImage =[UIImage imageNamed:@"back_Icon@2x.png"];
    //设置背景
    self.tabBar.backgroundColor = [UIColor blueColor];
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