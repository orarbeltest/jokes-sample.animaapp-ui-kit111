//
//  AppDelegate.m
//  AnimaPackage
//
//  Created by Your Name on 14/10/2016, using AnimaApp.com.
//  Copyright © 2016 Company Name. All rights reserved.
//

#import "AppDelegate.h"
#import "AnimaPackageManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [[AnimaPackageManager shared].theme apply];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end