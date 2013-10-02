//
//  HypnoAppDelegate.m
//  HypnoTime
//
//  Created by Camron Schwoegler on 9/30/13.
//  Copyright (c) 2013 Camron Schwoegler. All rights reserved.
//

#import "HypnoAppDelegate.h"
#import "HypnosisViewController.h"
#import "TimeViewController.h"
#import "HypnoMapViewController.h"

@implementation HypnoAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    // Create view controllers to add to UITabBar
    HypnosisViewController *hvc = [[HypnosisViewController alloc] init];
    TimeViewController *tvc = [[TimeViewController alloc] init];
    HypnoMapViewController *hmvc = [[HypnoMapViewController alloc] init];
    
    // Create UITabBarController
    UITabBarController *tbc = [[UITabBarController alloc] init];
    
    // Create array for controllers to add to tab bar
    NSArray *tabControllers = [[NSArray alloc] initWithObjects:hvc, tvc, hmvc,  nil];
    
    // Access tabBarItem properties of tabControllers
//    for (UIViewController *vc in tabControllers) {
//        NSLog(@"View Controller: %@", [vc title]);
//        [[vc tabBarItem] setTitle:[vc title]];
//    }
    
    // Add array of contollers to tab bar
    [tbc setViewControllers:tabControllers];
    
    [[self window] setRootViewController:tbc];
    self.window.backgroundColor = [UIColor whiteColor];
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
