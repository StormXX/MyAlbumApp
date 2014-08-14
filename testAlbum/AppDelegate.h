//
//  AppDelegate.h
//  testAlbum
//
//  Created by Gintama on 14-8-2.
//  Copyright (c) 2014年 Gintama. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "HeadPic.h"
#import "MyFavorite.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate,UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong,nonatomic) NSArray * controllers;
@property (strong,nonatomic) UITabBarController * tabbar;
@end
