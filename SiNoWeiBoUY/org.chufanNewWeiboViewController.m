//
//  org.chufanNewWeiboViewController.m
//  SiNoWeiBoUY
//
//  Created by Tony on 13-3-10.
//  Copyright (c) 2013年 Tony. All rights reserved.
//

#import "org.chufanNewWeiboViewController.h"

@interface org_chufanNewWeiboViewController ()

@end

@implementation org_chufanNewWeiboViewController

@synthesize save;
@synthesize cancel;
@synthesize image;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)imageClick:(id)sender{
//    UIImagePickerController *pick = [[UIImagePickerController alloc] init];
//    pick.delegate = self;
//    pick.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
//    [self presentViewController:pick animated:YES completion:NULL];
    NSLog(@"DSASDASD");
}
-(IBAction)cancellost:(id)sender{
    NSLog(@"Nickismore");
}
-(IBAction)Save:(id)sender{
    NSString *text = @"Check out this iPhone App: Birthday Reminder";
    UIImage *image1 = [UIImage imageNamed:@"Default.png"];
    NSURL *facebookPageLink = [NSURL
                               URLWithString:@"http://www.facebook.com/apps/application.php?id=123956661050729"];
    NSURL *appStoreLink = [NSURL
                           URLWithString:@"http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=489537509&mt=8"];
    NSArray *activityItems = @[text,image1,appStoreLink];
    UIActivityViewController *activityViewController = [[UIActivityViewController
                                                         alloc] initWithActivityItems:activityItems applicationActivities:nil];
    activityViewController.excludedActivityTypes =
    @[UIActivityTypePostToWeibo,UIActivityTypePrint,UIActivityTypeCopyToPasteboard,UIActivityTypeAssignToContact,UIActivityTypeSaveToCameraRoll];
    [self presentViewController:activityViewController animated:YES
                     completion:nil];

}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage *ed = info[UIImagePickerControllerEditedImage];
    UIImage *sp = info[UIImagePickerControllerOriginalImage];
    [picker dismissViewControllerAnimated:YES completion:NULL];
}
@end
