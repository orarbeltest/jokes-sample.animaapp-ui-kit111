//
//  FeedVC.m
//  AnimaPackage
//
//  Created by Your Name on 14/10/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

#import "FeedVC.h"
#import "AnimaSDK.h"

@implementation FeedVC

- (void)awakeFromNib {
    [super awakeFromNib];
    self.poststableDataList = [ANDataList dataListWithType:ANDataTypeJSON filenameOrUrl:@"http://animaapp.s3.amazonaws.com/demo-apps/jokes/jokes_feed.json" delegate:self];
    [self.poststableDataList refresh];
}

#pragma mark - Table View

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (tableView == self.poststable) {
        return self.poststableDataList.count;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (tableView == self.poststable) {
        Postcell *cell = [tableView dequeueReusableCellWithIdentifier:@"postcell"];
        cell.dataDictionary = [self.poststableDataList itemAtIndex:indexPath.row];
        cell.delegate = self;
        return cell;
    }
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (tableView == self.poststable) {
        return 170.0;
    }
    return 0;
}

#pragma mark - Data List

- (void)dataListDidFinishLoading:(ANDataList *)dataList {
    if (dataList == self.poststableDataList) {
        [self.poststable reloadData];
    }
}
@end