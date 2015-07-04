//
//  FirstViewController.m
//  ZFYTabbarController
//
//  Created by 朱封毅 on 29/06/15.
//  Copyright (c) 2015年 朱封毅. All rights reserved.
//

#import "FirstViewController.h"
#import "NextViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //创建左边系统的导航栏按钮
    [self createLeftSystemNavigationItemWith:UIBarButtonSystemItemAdd];
    //创建右边自定义的按钮
    [self creatRightNavigationItem:[UIImage imageNamed:@"feed_tab_butten_press.png"] Title:nil];
    
    self.view.backgroundColor =[UIColor redColor];
    UIButton  *btn =[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake((self.view.frame.size.width-100)/2, 200, 100, 40);
    btn.backgroundColor =[UIColor yellowColor];
    [btn setTitle:@"click me " forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}
//实现左边系统的导航栏的点击事件
-(void)LeftSystemNavigationButtonClick
{
    [self.navigationController pushViewController:[NextViewController new] animated:YES];
}
-(void)RightNavigationButtonClick:(UIButton *)rightbtn
{
    //实现右边导航按钮的方法
    [self.navigationController pushViewController:[NextViewController new] animated:YES];
}
-(void)click
{
    [self.navigationController pushViewController:[NextViewController new] animated:YES];
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
