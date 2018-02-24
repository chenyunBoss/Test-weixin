//
//  ViewController.m
//  Test-weixin
//
//  Created by chenyun on 2018/1/11.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "ViewController.h"
//#import "WXApiObject.h"
//#import "WXApi.h"
#import "WechatShareManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(30, 100, 300, 60)];
    [self.view addSubview:btn];
    [btn setImage:[UIImage imageNamed:@"vvevneo.jpg"] forState:UIControlStateNormal];
//    btn.contentMode = UIViewContentModeScaleAspectFit;
//    btn.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
}

#pragma mark - 分享文字

- (IBAction)wechatShare:(UIButton *)sender {
    WechatShareManager *manager = [[WechatShareManager alloc] init];
    // 好友
//    [manager shareText:@"测试一下" toScene:WXSceneSession];
    // 朋友圈
    [manager shareText:@"测试一下" toScene:WXSceneTimeline];
    
}

#pragma mark - 分享图片

- (IBAction)wechatShareToTimeLine:(UIButton *)sender {
    WechatShareManager *manager = [[WechatShareManager alloc] init];
//    [manager shareImage:[UIImage imageNamed:@"854037.jpg"] toScene:WXSceneSession];
    [manager shareImage:[UIImage imageNamed:@"854037.jpg"] toScene:WXSceneTimeline];
}

#pragma mark - 分享网页

- (IBAction)shareWeb:(UIButton *)sender {
    WechatShareManager *manager = [[WechatShareManager alloc] init];
    [manager shareUrl:@"https://www.baidu.com" title:@"标题标题" description:@"描述描述" image:[UIImage imageNamed:@"111.jpg"] toScene:(int)WXSceneSession];
//    [manager shareUrl:@"https://www.baidu.com" title:@"标题标题" description:@"描述描述" image:[UIImage imageNamed:@"111.jpg"] toScene:(int)WXSceneTimeline];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
