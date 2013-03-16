//
//  org_chufanViewController.h
//  SiNoWeiBoUY
//
//  Created by Tony on 13-3-6.
//  Copyright (c) 2013年 Tony. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SinaWeibo.h"

#import "SinaWeiboRequest.h"
@interface org_chufanViewController : UIViewController <SinaWeiboDelegate, SinaWeiboRequestDelegate>{
    IBOutlet UIButton *login;
    IBOutlet UIButton *newweibo;
    IBOutlet UITextView *mess;
    NSDictionary *userInfo;
    NSArray *statuses;
    NSString *postStatusText;
    NSString *postImageStatusText;
}
@property (nonatomic,retain) UIButton *login;
@property (nonatomic,retain) UITextView *mess;
-(IBAction) login:(id)sender;
-(IBAction) newweibo:(id)sender;
-(IBAction) cl:(id)sender;
-(IBAction) claa:(id)sender;
@end
