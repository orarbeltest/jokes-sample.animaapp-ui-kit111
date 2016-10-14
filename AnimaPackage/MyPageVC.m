//
//  MyPageVC.m
//  AnimaPackage
//
//  Created by Your Name on 14/10/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

#import "MyPageVC.h"
#import "AnimaSDK.h"

@implementation MyPageVC

- (void)awakeFromNib {
    [super awakeFromNib];
    self.poststableDataList = [ANDataList dataListWithType:ANDataTypeJSON filenameOrUrl:@"http://animaapp.s3.amazonaws.com/demo-apps/jokes/jokes_my_jokes.json" delegate:self];
    [self.poststableDataList refresh];
}
- (void)setDataDictionary:(NSDictionary *)dataDictionary {
    _dataDictionary = dataDictionary;
    self.hederContainerStatus.text = [[self.dataDictionary an_objectForJsonPath:@"joke"] description];
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
        MePostCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mePostCell"];
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