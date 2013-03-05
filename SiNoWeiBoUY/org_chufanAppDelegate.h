//
//  org_chufanAppDelegate.h
//  SiNoWeiBoUY
//
//  Created by Tony on 13-3-6.
//  Copyright (c) 2013年 Tony. All rights reserved.
//

#import <UIKit/UIKit.h>

@class org_chufanViewController;


#define kAppKey @"2203770072"
#define kAppSecret @"66b4816876f4dd549751c499555fadcc"
#define kAppRedirectURI @"http://open.weibo.com/apps/2203770072/privilege/oauth"

@class SinaWeibo;

@interface org_chufanAppDelegate : UIResponder <UIApplicationDelegate>{
    SinaWeibo *sinaweibo;
}

@property(readonly,nonatomic) SinaWeibo *sinaweibo;

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) org_chufanViewController *viewController;

@end
