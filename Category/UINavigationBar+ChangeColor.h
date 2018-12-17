//
//  UINavigationBar+ChangeColor.h
//  WYFX_Demo
//
//  Created by 顾泠轩 on 16/12/26.
//  Copyright © 2016年 ChenDan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (ChangeColor)
//改变导航栏颜色
-(void)cd_setBackgroundColor:(UIColor *)backgroundColor;
//改变导航栏渐变色
-(void)cd_setChangeBackgroundColor:(NSArray *)colorArr;

@end
