//
//  ViewController.h
//  ActionSheet
//
//  Created by Rahul on 10/11/14.
//  Copyright (c) 2014 RahulSaini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIActionSheetDelegate>


@property (nonatomic, weak) IBOutlet UILabel *rateLabel;

- (IBAction)displayActionSheet:(id)sender;

@end

