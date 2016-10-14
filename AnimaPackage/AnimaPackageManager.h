//
//  AnimaPackageManager.h
//  AnimaPackage
//
//  Created by Your Name on 14/10/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AnimaSDK.h"

NS_ASSUME_NONNULL_BEGIN

/** AnimaPackageManager gives an easy access to Anima code */
@interface AnimaPackageManager : NSObject

+ (instancetype)shared;

/** Holds the theme as configured in Anima.
    On runtime, you may change its values and call [[AnimaPackageManager shared].theme apply] */
@property (nonatomic, strong, nullable) ANTheme* theme;

- (UIStoryboard *)animaStoryboard;
- (UIViewController *)initialVC;

@end

NS_ASSUME_NONNULL_END