//
//  BaseNavigationViewController.m
//  ZFYTabbarController
//
//  Created by 朱封毅 on 29/06/15.
//  Copyright (c) 2015年 朱封毅. All rights reserved.
//

#import "BaseNavigationViewController.h"
#import "UIImage+Color.h"
@interface BaseNavigationViewController ()<UINavigationControllerDelegate,UIGestureRecognizerDelegate>

@end

@implementation BaseNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationBar.barTintColor =[UIColor whiteColor];
   //防止手势失效的解决方案
    self.delegate=self;
    self.interactivePopGestureRecognizer.delegate=self;
    [self.navigationBar setShadowImage:[UIImage imageWithColor:[UIColor clearColor]]];
    self.navigationBar.tintColor =[UIColor grayColor];
}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count>0) {
        ///第二层viewcontroller 隐藏tabbar
        viewController.hidesBottomBarWhenPushed=YES;
        //手势的时候隐藏导航栏
       // self.hidesBarsOnSwipe=YES;
        //修改了返回按钮的样式，但是此时侧滑手势实效
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc ] initWithImage:[UIImage imageNamed:@"back_Icon.png"] style:UIBarButtonItemStylePlain target:self action:@selector(popViewControllerAnimated:)];
    }
    [super pushViewController:viewController animated:YES];
}
//重写系统
-(void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if ([navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        navigationController.interactivePopGestureRecognizer.enabled = YES;
    }
}
-(void)dealloc
{
    self.delegate=nil;
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
