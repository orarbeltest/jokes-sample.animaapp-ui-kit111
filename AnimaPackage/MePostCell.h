//
//  MePostCell.h
//  AnimaPackage
//
//  Created by Your Name on 14/10/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ANProtocols.h"

@interface MePostCell : UITableViewCell

@property (nonatomic, weak, nullable) id<ANCustomViewDelegate> delegate;
@property (weak, nonatomic, nullable) IBOutlet UIView *shareTouchArea;
@property (weak, nonatomic, nullable) IBOutlet UILabel *jokeLabel;
@property (weak, nonatomic, nullable) IBOutlet UIImageView *userimage;
@property (weak, nonatomic, nullable) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic, nullable) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic, nullable) IBOutlet UIView *shareContainer;
@property (weak, nonatomic, nullable) IBOutlet UIView *shareContainerFacebookButton;
@property (weak, nonatomic, nullable) IBOutlet UIImageView *shareContainerFacebookButtonImage19;
@property (weak, nonatomic, nullable) IBOutlet UIView *shareContainerTwitterButton;
@property (weak, nonatomic, nullable) IBOutlet UIImageView *shareContainerTwitterButtonImage18;
@property (weak, nonatomic, nullable) IBOutlet UIView *shareContainerCloseButton;
@property (weak, nonatomic, nullable) IBOutlet UIImageView *shareContainerCloseButtonImage21;
@property (nonatomic, assign)                   BOOL shouldPrepareForReuse;
@property (strong, nonatomic, nullable)         NSDictionary *dataDictionary;


- (IBAction)shareContainerTap:(nullable id)sender;
- (IBAction)shareTouchAreaTap:(nullable id)sender;
- (IBAction)shareContainerCloseButtonTap:(nullable id)sender;
- (void)showShare;
- (void)reverseShowShare;

@end