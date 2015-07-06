## ZFYTabbarController
使用方法非常简单
###1.如何更换tabbar的选中和未选中图片
点击进入CustomController.m
<pre><code>NSArray *normalImageArray =[NSArray arrayWithObjects:@"feed_tab_butten_normal.png",@"movie_tab_butten_normal.png",@"me_tab_butten_normal.png",nil]; NSArray *selectImageArray =[NSArray arrayWithObjects:@"feed_tab_butten_press.png",@"movie_tab_butten_press.png",@"me_tab_butten_press.png", nil];
替换成自己的两套图片
NSArray *titleArray =[NSArray arrayWithObjects:@"first",@"second",@"third", nil];</code></pre>
###3. 如何把几个标签页换成自己的页面
 进入CustomController.m
<pre><code>#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
变成自己的
< NSArray  *classNameArray =[NSArray arrayWithObjects:@"FirstViewController",@"SecondViewController",@"ThirdViewController", nil];</code></pre>
>//#pragma mark  ---Tabbar   config
###4.其他修改导航条或标签栏的基本用法都放在了
<per><code>ZFYTabbar.h  头文件中
导航栏色调设置
#define Nav_tintColor             [UIColor colorWithRed:200.0/255.0 green:100.0/255.0 blue:100.0/255.0 alpha:1];
导航栏的背景颜色
#define Nav_background_Color      [UIColor colorWithRed:10.0/255.0 green:10.0/255.0 blue:10.0/255.0 alpha:1]
导航栏的标题字体大小
#define Nav_Title_Font            [UIFont boldSystemFontOfSize:16]
导航栏的标题颜色
#define Nav_Title_Color           [UIColor colorWithRed:200.0/255.0 green:200.0/255.0 blue:200.0/255.0 alpha:1]
设置返回按钮的图片
#define Nav_back_icon             [[UIImage imageNamed:@"back_Icon.png"]

//#pragma mark  ---Tabbar   config
字体未选中颜色设置
#define Tab_TITLE_NORMAL_COLOR   [UIColor colorWithRed:20/255.0 green:20/255.0 blue:120/255.0 alpha:1] 字体已选中颜色设置
#define Tab_TITLE_SELECTED_COLOR [UIColor colorWithRed:20/255.0 green:152/255.0 blue:172/255.0 alpha:1]
字体的大小样式设置
#define Tab_TITLE_FONT           [UIFont fontWithName:@"AmericanTypewriter" size:14.0f]
标签栏的背景颜色设置
#define Tab_BAR__BACK_CLOLOR     [UIColor blackColor];"] </code></pre>


###5. 默认自带右滑全屏返回，如果不需要此功能，BaseNavigationViewController.m 文件中
<per><code>self.fd_fullscreenPopGestureRecognizer.enabled=YES; 设置成NO
>在RootViewController.m 文件中把    self.fd_interactivePopDisabled=NO; 设置成YES
>//需要隐藏某一个页面的导航条
>self.fd_prefersNavigationBarHidden=NO; 设置成YES
</code></pre>
*********************************
###6.未来会一直维护，大家可以加入学习千锋顶级讲师的游戏开发教程 
跟健哥诚哥虐菜iOS游戏群：148929061   


