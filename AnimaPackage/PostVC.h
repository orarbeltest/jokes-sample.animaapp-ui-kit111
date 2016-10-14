//
//  PostVC.h
//  AnimaPackage
//
//  Created by Your Name on 14/10/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ANViewController.h"

@interface PostVC : ANViewController

@property (weak, nonatomic, nullable) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic, nullable) IBOutlet UITextField *textInput;
@property (weak, nonatomic, nullable) IBOutlet UILabel *postLabel;
@property (weak, nonatomic, nullable) IBOutlet UILabel *demoCaption;
@property (weak, nonatomic, nullable) IBOutlet UIImageView *closeButton;
@property (weak, nonatomic, nullable) IBOutlet UILabel *creditsDetails;
@property (weak, nonatomic, nullable) IBOutlet UILabel *label2;
@property (weak, nonatomic, nullable) IBOutlet UILabel *label1;


- (IBAction)closeButtonTap:(nullable id)sender;
- (IBAction)label1Tap:(nullable id)sender;
- (IBAction)postLabelTap:(nullable id)sender;
- (IBAction)swipeDown:(nullable id)sender;

@end