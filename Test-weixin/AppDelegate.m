//
//  AppDelegate.m
//  Test-weixin
//
//  Created by chenyun on 2018/1/11.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "AppDelegate.h"
#import <WXApi.h>
//#import "WXApi.h"

@interface AppDelegate () <WXApiDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self registerWechatID];
    return YES;
}

- (void)registerWechatID {
    [WXApi registerApp:@"wx3e018b61a6a0c951"];
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    if ([@"wx3e018b61a6a0c951" isEqualToString:[url scheme]]) {
        //微信
        return [WXApi handleOpenURL:url delegate:self];
    }
    return YES;
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    if ([@"wx3e018b61a6a0c951" isEqualToString:[url scheme]]) {
        //微信
        return [WXApi handleOpenURL:url delegate:self];
    }
    return YES;
}

- (void) onResp:(BaseResp*)resp {
    if (resp.errCode == 0) {
        NSLog(@"分享成功");
    } else if (resp.errCode == -2) {
        NSLog(@"分享取消");
    } else {
        NSLog(@"分享失败");
    }
}

/*
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    return YES;
}
 */

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
