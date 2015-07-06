## ZFYTabbarController
<pre>这是一个使用系统的导航栏和标签栏定制的项目框架，实现了定制导航栏和标签栏的高度定制，并且支持全屏侧滑返回，
可以用来参考，然后自己写一个自己定制的tabbarcontroller，或者直接使用这个框架，如果使用中遇到问题，加入下面的群问我哦</pre>
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
###4.其他修改导航条或标签栏的基本用法都放在了
<pre><code>ZFYTabbar.h  头文件中
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
</code></pre>
<pre><code>#pragma mark  ---Tabbar   config
字体未选中颜色设置
#define Tab_TITLE_NORMAL_COLOR   [UIColor colorWithRed:20/255.0 green:20/255.0 blue:120/255.0 alpha:1] 字体已选中颜色设置
#define Tab_TITLE_SELECTED_COLOR [UIColor colorWithRed:20/255.0 green:152/255.0 blue:172/255.0 alpha:1]
字体的大小样式设置
#define Tab_TITLE_FONT           [UIFont fontWithName:@"AmericanTypewriter" size:14.0f]
标签栏的背景颜色设置
#define Tab_BAR__BACK_CLOLOR     [UIColor blackColor];"] </code></pre>

先要感谢下提供全屏侧滑技术的大神，我把他的库加入了工程中，使一件支持全屏侧滑
<pre>https://github.com/forkingdog/FDFullscreenPopGesture</pre>
###5. 默认自带右滑全屏返回，如果不需要此功能，BaseNavigationViewController.m 文件中
<pre><code>
self.fd_fullscreenPopGestureRecognizer.enabled=YES; 设置成NO
在RootViewController.m 文件中把  self.fd_interactivePopDisabled=NO; 设置成YES
//需要隐藏某一个页面的导航条    self.fd_prefersNavigationBarHidden=NO; 设置成YES
</code></pre>
*********************************
###6.未来会一直维护，希望您看完觉得有用star一下，你的star是本猿学习动力哦
跟健哥诚哥虐菜iOS游戏群：148929061   


