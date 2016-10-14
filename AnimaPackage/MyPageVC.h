//
//  MyPageVC.h
//  AnimaPackage
//
//  Created by Your Name on 14/10/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ANViewController.h"
#import "ANGradientView.h"
#import "ANDataList.h"
#import "MePostCell.h"

@interface MyPageVC : ANViewController <UITableViewDataSource, UITableViewDelegate, ANDataListDelegate> 

@property (weak, nonatomic, nullable) IBOutlet UIView *hederContainer;
@property (weak, nonatomic, nullable) IBOutlet UIImageView *hederContainerCoverImage;
@property (weak, nonatomic, nullable) IBOutlet ANGradientView *hederContainerBlackGradient;
@property (weak, nonatomic, nullable) IBOutlet UIImageView *hederContainerUserHeaderPic;
@property (weak, nonatomic, nullable) IBOutlet UILabel *hederContainerStatus;
@property (weak, nonatomic, nullable) IBOutlet UITableView *poststable;
@property (strong, nonatomic, nullable)         ANDataList *poststableDataList;
@property (strong, nonatomic, nullable)         NSDictionary *dataDictionary;



@end