//
//  TabBarViewController.m
//  WYFX_Demo
//
//  Created by 顾泠轩 on 16/12/20.
//  Copyright © 2016年 ChenDan. All rights reserved.
//

#import "TabBarViewController.h"
#import "BaseViewController.h"
#import "BaseNavigationController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createUI];
}

-(void)createUI
{
    NSArray *arr = @[@"HomeNewsViewController",@"FindGodViewController",@"TradeViewController",@"LiveViewController",@"MineViewController"];
    NSMutableArray *mArr = [NSMutableArray array];
    for (int i = 0; i < 5; i++)
    {
        Class class =NSClassFromString(arr[i]);
        BaseViewController *bvc = [[class alloc]init];
        BaseNavigationController *nvc = [[BaseNavigationController alloc]initWithRootViewController:bvc];
        [mArr addObject:nvc];
    }
    self.viewControllers = mArr;
    NSArray *imgArr = @[@"tabbar_Home",@"tabbar_zixun",@"caishen",@"tabbar_Prize",@"tabbar_User"];
//    tabbar_Interaction
    NSArray *titleArr = @[@"首页",@"点财神",@"",@"看财神",@"个人"];
    for (int i = 0; i < 5; i++)
    {
        UITabBarItem *item = self.tabBar.items[i];
        item.title = titleArr[i];
        
        self.tabBar.tintColor=RGBCOLOR(128, 26, 30);
        item.image = [[UIImage imageNamed:imgArr[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        item.selectedImage = [[UIImage imageNamed:[imgArr[i] stringByAppendingString:@"_on"]]  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    self.selectedIndex = 0;
}

-(void)setTabBarHidden:(BOOL)hidden
{
    [super setTabBarHidden:hidden];
    
    UITabBarItem *item = self.tabBar.items[2];
    if (hidden)
    {
        item.image = [[UIImage imageNamed:@""] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    else
    {
        item.image = [[UIImage imageNamed:@"caishen"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
     
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
