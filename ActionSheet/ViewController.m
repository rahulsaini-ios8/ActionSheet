//
//  ViewController.m
//  ActionSheet
//
//  Created by Rahul on 10/11/14.
//  Copyright (c) 2014 RahulSaini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize rateLabel;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)displayActionSheet:(id)sender
{
    UIActionSheet *actionsheet = [[UIActionSheet alloc]
                                  initWithTitle:@"Rate"
                                  delegate:self cancelButtonTitle:@"Cancel"
                                  destructiveButtonTitle:nil
                                  otherButtonTitles:@"Rate 1 Star", @"Rate 2 Stars",
                                  @"Rate 3 Starts", @"Rate 4 Stars", @"Rate 5 Stars", nil];
    actionsheet.actionSheetStyle = UIActionSheetStyleDefault;
    [actionsheet showInView:self.view];
    
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 0:
            rateLabel.text = @"You've rated 1 star.";
            break;
        case 1:
            rateLabel.text = @"You've rated 2 stars.";
            break;
        case 2:
            rateLabel.text = @"You've rated 3 stars.";
            break;
        case 3:
            rateLabel.text = @"You've rated 4 stars.";
            break;
        case 4:
            rateLabel.text = @"You've rated 5 stars.";
            break;
        case 5:
            rateLabel.text = @"You haven't rate this app yet.";
            break;
    }
    
}


@end
