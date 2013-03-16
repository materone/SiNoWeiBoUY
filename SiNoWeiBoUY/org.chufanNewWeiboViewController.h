//
//  org.chufanNewWeiboViewController.h
//  SiNoWeiBoUY
//
//  Created by Tony on 13-3-10.
//  Copyright (c) 2013年 Tony. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface org_chufanNewWeiboViewController : UIViewController <UINavigationControllerDelegate,UIImagePickerControllerDelegate>{
    IBOutlet UIButton *cancel;
    IBOutlet UIButton *image;
    IBOutlet UIButton *save;
}
@property (strong,nonatomic) UIButton *cancel;
@property (strong,nonatomic) UIButton *image;
@property (strong,nonatomic) UIButton *save;

-(IBAction)imageClick:(id)sender;
-(IBAction)Save:(id)sender;
-(IBAction)cancellost:(id)sender;

@end
