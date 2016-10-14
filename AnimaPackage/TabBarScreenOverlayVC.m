//
//  TabBarScreenOverlayVC.m
//  AnimaPackage
//
//  Created by Your Name on 14/10/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

#import "TabBarScreenOverlayVC.h"
#import "AnimaSDK.h"

@implementation TabBarScreenOverlayVC

- (IBAction)postButtonTap:(id)sender {
    [self performSegueWithIdentifier:@"tabBarScreen -> post - Modal" sender:self];
}

- (IBAction)meButtonTap:(id)sender {
    [ANTabBarController shared].selectedIndex = 1;
    [self selectMeAnimation];
}

- (IBAction)feedButtonTap:(id)sender {
    [ANTabBarController shared].selectedIndex = 0;
    [self selectFeedAnimation];
}


#pragma mark - Animations

- (void)selectMeAnimation {
    UIViewAnimationOptions options;

    // Animating self.meButtonHappyColor
    options = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction;
    [UIView animateWithDuration:0.2 delay:0.0 options:options animations:^{
        [self.meButtonHappyColor anRemoveAllFrameConstraints];
        [self.meButtonHappyColor anSetRelativeConstraint:ANRelativeConstraintCenterY constant:-0.5 multiplier:0.0];
        [self.meButtonHappyColor anSetRelativeConstraint:ANRelativeConstraintCenterX constant:0.5 multiplier:0.0];
        [self.meButtonHappyColor anSetRelativeConstraint:ANRelativeConstraintWidth   constant:37.0 multiplier:0];
        [self.meButtonHappyColor anSetRelativeConstraint:ANRelativeConstraintHeight  constant:37.0 multiplier:0];
        self.meButtonHappyColor.alpha           = 1.0;
        self.meButtonHappyColor.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.meButtonHappyColor.anBorderColor   = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        self.meButtonHappyColor.anCornerRadius  = 0.0;
        self.meButtonHappyColor.anBorderWidth   = 0.0;
        self.meButtonHappyColor.anRotation      = 0.0;
        self.meButtonHappyColor.hidden          = NO;
        [self.meButtonHappyColor.superview layoutIfNeeded]; // Animating constraints

    } completion:^(BOOL finished){}];
    

    // Animating self.meButtonHappy
    options = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction;
    [UIView animateWithDuration:0.2 delay:0.0 options:options animations:^{
        [self.meButtonHappy anRemoveAllFrameConstraints];
        [self.meButtonHappy anSetRelativeConstraint:ANRelativeConstraintCenterY constant:-1.0 multiplier:0.0];
        [self.meButtonHappy anSetRelativeConstraint:ANRelativeConstraintCenterX constant:0.0 multiplier:0.0];
        [self.meButtonHappy anSetRelativeConstraint:ANRelativeConstraintWidth   constant:37.0 multiplier:0];
        [self.meButtonHappy anSetRelativeConstraint:ANRelativeConstraintHeight  constant:38.0 multiplier:0];
        self.meButtonHappy.alpha           = 0.0;
        self.meButtonHappy.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.meButtonHappy.anBorderColor   = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        self.meButtonHappy.anCornerRadius  = 0.0;
        self.meButtonHappy.anBorderWidth   = 0.0;
        self.meButtonHappy.anRotation      = 0.0;
        self.meButtonHappy.hidden          = NO;
        [self.meButtonHappy.superview layoutIfNeeded]; // Animating constraints

    } completion:^(BOOL finished){}];
    

    // Animating self.feedButtonFeed
    options = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction;
    [UIView animateWithDuration:0.2 delay:0.0 options:options animations:^{
        [self.feedButtonFeed anRemoveAllFrameConstraints];
        [self.feedButtonFeed anSetRelativeConstraint:ANRelativeConstraintCenterY constant:0.0 multiplier:0.0];
        [self.feedButtonFeed anSetRelativeConstraint:ANRelativeConstraintCenterX constant:0.0 multiplier:0.0];
        [self.feedButtonFeed anSetRelativeConstraint:ANRelativeConstraintWidth   constant:38.0 multiplier:0];
        [self.feedButtonFeed anSetRelativeConstraint:ANRelativeConstraintHeight  constant:31.0 multiplier:0];
        self.feedButtonFeed.alpha           = 1.0;
        self.feedButtonFeed.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.feedButtonFeed.anBorderColor   = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        self.feedButtonFeed.anCornerRadius  = 0.0;
        self.feedButtonFeed.anBorderWidth   = 0.0;
        self.feedButtonFeed.anRotation      = 0.0;
        self.feedButtonFeed.hidden          = NO;
        [self.feedButtonFeed.superview layoutIfNeeded]; // Animating constraints

    } completion:^(BOOL finished){}];
    

    // Animating self.feedButtonFeedColor
    options = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction;
    [UIView animateWithDuration:0.2 delay:0.0 options:options animations:^{
        [self.feedButtonFeedColor anRemoveAllFrameConstraints];
        [self.feedButtonFeedColor anSetRelativeConstraint:ANRelativeConstraintCenterY constant:0.0 multiplier:0.0];
        [self.feedButtonFeedColor anSetRelativeConstraint:ANRelativeConstraintCenterX constant:0.0 multiplier:0.0];
        [self.feedButtonFeedColor anSetRelativeConstraint:ANRelativeConstraintWidth   constant:38.0 multiplier:0];
        [self.feedButtonFeedColor anSetRelativeConstraint:ANRelativeConstraintHeight  constant:31.0 multiplier:0];
        self.feedButtonFeedColor.alpha           = 0.0;
        self.feedButtonFeedColor.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.feedButtonFeedColor.anBorderColor   = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        self.feedButtonFeedColor.anCornerRadius  = 0.0;
        self.feedButtonFeedColor.anBorderWidth   = 0.0;
        self.feedButtonFeedColor.anRotation      = 0.0;
        self.feedButtonFeedColor.hidden          = NO;
        [self.feedButtonFeedColor.superview layoutIfNeeded]; // Animating constraints

    } completion:^(BOOL finished){}];
    

    // Animating self.meButton

}

- (void)selectFeedAnimation {
    UIViewAnimationOptions options;

    // Animating self.feedButtonFeedColor
    options = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction;
    [UIView animateWithDuration:0.2 delay:0.0 options:options animations:^{
        [self.feedButtonFeedColor anRemoveAllFrameConstraints];
        [self.feedButtonFeedColor anSetRelativeConstraint:ANRelativeConstraintCenterY constant:0.0 multiplier:0.0];
        [self.feedButtonFeedColor anSetRelativeConstraint:ANRelativeConstraintCenterX constant:0.0 multiplier:0.0];
        [self.feedButtonFeedColor anSetRelativeConstraint:ANRelativeConstraintWidth   constant:38.0 multiplier:0];
        [self.feedButtonFeedColor anSetRelativeConstraint:ANRelativeConstraintHeight  constant:31.0 multiplier:0];
        self.feedButtonFeedColor.alpha           = 1.0;
        self.feedButtonFeedColor.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.feedButtonFeedColor.anBorderColor   = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        self.feedButtonFeedColor.anCornerRadius  = 0.0;
        self.feedButtonFeedColor.anBorderWidth   = 0.0;
        self.feedButtonFeedColor.anRotation      = 0.0;
        self.feedButtonFeedColor.hidden          = NO;
        [self.feedButtonFeedColor.superview layoutIfNeeded]; // Animating constraints

    } completion:^(BOOL finished){}];
    

    // Animating self.feedButtonFeed
    options = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction;
    [UIView animateWithDuration:0.2 delay:0.0 options:options animations:^{
        [self.feedButtonFeed anRemoveAllFrameConstraints];
        [self.feedButtonFeed anSetRelativeConstraint:ANRelativeConstraintCenterY constant:0.0 multiplier:0.0];
        [self.feedButtonFeed anSetRelativeConstraint:ANRelativeConstraintCenterX constant:0.0 multiplier:0.0];
        [self.feedButtonFeed anSetRelativeConstraint:ANRelativeConstraintWidth   constant:38.0 multiplier:0];
        [self.feedButtonFeed anSetRelativeConstraint:ANRelativeConstraintHeight  constant:31.0 multiplier:0];
        self.feedButtonFeed.alpha           = 0.0;
        self.feedButtonFeed.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.feedButtonFeed.anBorderColor   = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        self.feedButtonFeed.anCornerRadius  = 0.0;
        self.feedButtonFeed.anBorderWidth   = 0.0;
        self.feedButtonFeed.anRotation      = 0.0;
        self.feedButtonFeed.hidden          = NO;
        [self.feedButtonFeed.superview layoutIfNeeded]; // Animating constraints

    } completion:^(BOOL finished){}];
    

    // Animating self.meButtonHappyColor
    options = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction;
    [UIView animateWithDuration:0.2 delay:0.0 options:options animations:^{
        [self.meButtonHappyColor anRemoveAllFrameConstraints];
        [self.meButtonHappyColor anSetRelativeConstraint:ANRelativeConstraintCenterY constant:-0.5 multiplier:0.0];
        [self.meButtonHappyColor anSetRelativeConstraint:ANRelativeConstraintCenterX constant:0.5 multiplier:0.0];
        [self.meButtonHappyColor anSetRelativeConstraint:ANRelativeConstraintWidth   constant:37.0 multiplier:0];
        [self.meButtonHappyColor anSetRelativeConstraint:ANRelativeConstraintHeight  constant:37.0 multiplier:0];
        self.meButtonHappyColor.alpha           = 0.0;
        self.meButtonHappyColor.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.meButtonHappyColor.anBorderColor   = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        self.meButtonHappyColor.anCornerRadius  = 0.0;
        self.meButtonHappyColor.anBorderWidth   = 0.0;
        self.meButtonHappyColor.anRotation      = 0.0;
        self.meButtonHappyColor.hidden          = NO;
        [self.meButtonHappyColor.superview layoutIfNeeded]; // Animating constraints

    } completion:^(BOOL finished){}];
    

    // Animating self.meButtonHappy
    options = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction;
    [UIView animateWithDuration:0.2 delay:0.0 options:options animations:^{
        [self.meButtonHappy anRemoveAllFrameConstraints];
        [self.meButtonHappy anSetRelativeConstraint:ANRelativeConstraintCenterY constant:-1.0 multiplier:0.0];
        [self.meButtonHappy anSetRelativeConstraint:ANRelativeConstraintCenterX constant:0.0 multiplier:0.0];
        [self.meButtonHappy anSetRelativeConstraint:ANRelativeConstraintWidth   constant:37.0 multiplier:0];
        [self.meButtonHappy anSetRelativeConstraint:ANRelativeConstraintHeight  constant:38.0 multiplier:0];
        self.meButtonHappy.alpha           = 1.0;
        self.meButtonHappy.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.meButtonHappy.anBorderColor   = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        self.meButtonHappy.anCornerRadius  = 0.0;
        self.meButtonHappy.anBorderWidth   = 0.0;
        self.meButtonHappy.anRotation      = 0.0;
        self.meButtonHappy.hidden          = NO;
        [self.meButtonHappy.superview layoutIfNeeded]; // Animating constraints

    } completion:^(BOOL finished){}];
    

}

@end