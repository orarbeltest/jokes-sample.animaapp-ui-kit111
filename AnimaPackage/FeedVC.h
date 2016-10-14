//
//  FeedVC.h
//  AnimaPackage
//
//  Created by Your Name on 14/10/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ANViewController.h"
#import "ANDataList.h"
#import "Postcell.h"

@interface FeedVC : ANViewController <UITableViewDataSource, UITableViewDelegate, ANDataListDelegate> 

@property (weak, nonatomic, nullable) IBOutlet UITableView *poststable;
@property (strong, nonatomic, nullable)         ANDataList *poststableDataList;



@end