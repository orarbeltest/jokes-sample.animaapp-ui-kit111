//
//  TabBarScreenOverlayVC.h
//  AnimaPackage
//
//  Created by Your Name on 14/10/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ANViewController.h"
#import "ANTabBarController.h"

@interface TabBarScreenOverlayVC : ANViewController <ANTabBarControllerOverlay> 

@property (weak, nonatomic, nullable) IBOutlet UIView *meButton;
@property (weak, nonatomic, nullable) IBOutlet UIImageView *meButtonHappy;
@property (weak, nonatomic, nullable) IBOutlet UIImageView *meButtonHappyColor;
@property (weak, nonatomic, nullable) IBOutlet UIView *postButton;
@property (weak, nonatomic, nullable) IBOutlet UIImageView *postButtonUpIcon;
@property (weak, nonatomic, nullable) IBOutlet UIView *feedButton;
@property (weak, nonatomic, nullable) IBOutlet UIImageView *feedButtonFeed;
@property (weak, nonatomic, nullable) IBOutlet UIImageView *feedButtonFeedColor;


- (IBAction)postButtonTap:(nullable id)sender;
- (IBAction)meButtonTap:(nullable id)sender;
- (IBAction)feedButtonTap:(nullable id)sender;
- (void)selectMeAnimation;
- (void)selectFeedAnimation;

@end