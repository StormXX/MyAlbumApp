//
//  AppDelegate.m
//  testAlbum
//
//  Created by Gintama on 14-8-2.
//  Copyright (c) 2014年 Gintama. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize controllers,tabbar;
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    ViewController * wallpageView=[[ViewController alloc] init];
    UITabBarItem * first_tab=[[UITabBarItem alloc] initWithTitle:@"wallpage" image:nil tag:001];
    UINavigationController * nav_wallpage=[[UINavigationController alloc] initWithRootViewController:wallpageView];
    wallpageView.title=@"WallPage";
    [nav_wallpage setTabBarItem:first_tab];
    
    HeadPic * headpicView=[[HeadPic alloc] init];
    UITabBarItem * second_tab=[[UITabBarItem alloc] initWithTitle:@"headpic" image:nil tag:002];
    UINavigationController * nav_headpic=[[UINavigationController alloc] initWithRootViewController:headpicView];
    headpicView.title=@"HeadPic";
    [nav_headpic setTabBarItem:second_tab];
    
    MyFavorite * favoriteView=[[MyFavorite alloc] init];
    UITabBarItem * last_tab=[[UITabBarItem alloc] initWithTitle:@"Favorite" image:nil tag:003];
    UINavigationController * nav_favorite=[[UINavigationController alloc] initWithRootViewController:favoriteView];
    favoriteView.title=@"Favorite";
    [nav_favorite setTabBarItem:last_tab];
    
    controllers=[NSArray arrayWithObjects:nav_wallpage,nav_headpic,nav_favorite, nil];
    tabbar=[[UITabBarController alloc] init];
    tabbar.delegate=self;
    tabbar.viewControllers=controllers;

    self.window.rootViewController=tabbar;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
