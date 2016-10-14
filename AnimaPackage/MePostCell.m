//
//  MePostCell.m
//  AnimaPackage
//
//  Created by Your Name on 14/10/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

#import "MePostCell.h"
#import "AnimaSDK.h"

@implementation MePostCell

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupGestures];
}

- (void)setupGestures {
    UIGestureRecognizer *gestureRecognizer;
    gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(shareContainerTap:)];
    self.shareContainer.userInteractionEnabled = YES;
    [self.shareContainer addGestureRecognizer:gestureRecognizer]; 
    gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(shareTouchAreaTap:)];
    self.shareTouchArea.userInteractionEnabled = YES;
    [self.shareTouchArea addGestureRecognizer:gestureRecognizer]; 
    gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(shareContainerCloseButtonTap:)];
    self.shareContainerCloseButton.userInteractionEnabled = YES;
    [self.shareContainerCloseButton addGestureRecognizer:gestureRecognizer]; 
}
    
- (void)setDataDictionary:(NSDictionary *)dataDictionary {
    _dataDictionary = dataDictionary;
    self.jokeLabel.text = [[self.dataDictionary an_objectForJsonPath:@"joke"] description];
    self.userimage.anImageNameOrUrl = [[self.dataDictionary an_objectForJsonPath:@"image"] description];
    self.nameLabel.text = [[self.dataDictionary an_objectForJsonPath:@"full_name"] description];
    self.timeLabel.text = [[self.dataDictionary an_objectForJsonPath:@"time"] description];
}

- (IBAction)shareContainerTap:(id)sender {
    [self showShare];
}

- (IBAction)shareTouchAreaTap:(id)sender {
    [self showShare];
}

- (IBAction)shareContainerCloseButtonTap:(id)sender {
    [self reverseShowShare];
}

- (void)prepareForReuse {
    [super prepareForReuse];
    if (!self.shouldPrepareForReuse) {
        return;
    }
    self.shouldPrepareForReuse = NO;

    [self.shareContainer anRemoveAllFrameConstraints];
    [self.shareContainer anSetRelativeConstraint:ANRelativeConstraintRight   constant:20.0 multiplier:0.0];
    [self.shareContainer anSetRelativeConstraint:ANRelativeConstraintTop     constant:24.0 multiplier:0.0];
    [self.shareContainer anSetRelativeConstraint:ANRelativeConstraintWidth   constant:16.0 multiplier:0];
    [self.shareContainer anSetRelativeConstraint:ANRelativeConstraintHeight  constant:4.0 multiplier:0];
    self.shareContainer.alpha           = 1.0;
    self.shareContainer.backgroundColor = [UIColor colorWithRed:0.61 green:0.76 blue:0.9 alpha:0.0];
    self.shareContainer.anBorderColor   = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
    self.shareContainer.anCornerRadius  = 0.0;
    self.shareContainer.anBorderWidth   = 0.0;
    self.shareContainer.anRotation      = 0.0;
    self.shareContainer.hidden          = NO;
    [self.shareContainer.superview layoutIfNeeded]; // Animating constraints

    [self.shareContainerCloseButtonImage21 anRemoveAllFrameConstraints];
    [self.shareContainerCloseButtonImage21 anSetRelativeConstraint:ANRelativeConstraintCenterY constant:0.0 multiplier:0.0];
    [self.shareContainerCloseButtonImage21 anSetRelativeConstraint:ANRelativeConstraintCenterX constant:0.0 multiplier:0.0];
    [self.shareContainerCloseButtonImage21 anSetRelativeConstraint:ANRelativeConstraintWidth   constant:24.0 multiplier:0];
    [self.shareContainerCloseButtonImage21 anSetRelativeConstraint:ANRelativeConstraintHeight  constant:24.0 multiplier:0];
    self.shareContainerCloseButtonImage21.alpha           = 0.0;
    self.shareContainerCloseButtonImage21.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
    self.shareContainerCloseButtonImage21.anBorderColor   = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
    self.shareContainerCloseButtonImage21.anCornerRadius  = 0.0;
    self.shareContainerCloseButtonImage21.anBorderWidth   = 0.0;
    self.shareContainerCloseButtonImage21.anRotation      = 0.0;
    self.shareContainerCloseButtonImage21.hidden          = NO;
    [self.shareContainerCloseButtonImage21.superview layoutIfNeeded]; // Animating constraints

    [self.shareContainerTwitterButtonImage18 anRemoveAllFrameConstraints];
    [self.shareContainerTwitterButtonImage18 anSetRelativeConstraint:ANRelativeConstraintCenterY constant:0.0 multiplier:0.0];
    [self.shareContainerTwitterButtonImage18 anSetRelativeConstraint:ANRelativeConstraintCenterX constant:0.0 multiplier:0.0];
    [self.shareContainerTwitterButtonImage18 anSetRelativeConstraint:ANRelativeConstraintWidth   constant:24.0 multiplier:0];
    [self.shareContainerTwitterButtonImage18 anSetRelativeConstraint:ANRelativeConstraintHeight  constant:24.0 multiplier:0];
    self.shareContainerTwitterButtonImage18.alpha           = 0.0;
    self.shareContainerTwitterButtonImage18.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
    self.shareContainerTwitterButtonImage18.anBorderColor   = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
    self.shareContainerTwitterButtonImage18.anCornerRadius  = 0.0;
    self.shareContainerTwitterButtonImage18.anBorderWidth   = 0.0;
    self.shareContainerTwitterButtonImage18.anRotation      = 0.0;
    self.shareContainerTwitterButtonImage18.hidden          = NO;
    [self.shareContainerTwitterButtonImage18.superview layoutIfNeeded]; // Animating constraints

    [self.shareContainerFacebookButtonImage19 anRemoveAllFrameConstraints];
    [self.shareContainerFacebookButtonImage19 anSetRelativeConstraint:ANRelativeConstraintCenterY constant:0.0 multiplier:0.0];
    [self.shareContainerFacebookButtonImage19 anSetRelativeConstraint:ANRelativeConstraintCenterX constant:0.0 multiplier:0.0];
    [self.shareContainerFacebookButtonImage19 anSetRelativeConstraint:ANRelativeConstraintWidth   constant:32.0 multiplier:0];
    [self.shareContainerFacebookButtonImage19 anSetRelativeConstraint:ANRelativeConstraintHeight  constant:32.0 multiplier:0];
    self.shareContainerFacebookButtonImage19.alpha           = 0.0;
    self.shareContainerFacebookButtonImage19.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
    self.shareContainerFacebookButtonImage19.anBorderColor   = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
    self.shareContainerFacebookButtonImage19.anCornerRadius  = 0.0;
    self.shareContainerFacebookButtonImage19.anBorderWidth   = 0.0;
    self.shareContainerFacebookButtonImage19.anRotation      = 0.0;
    self.shareContainerFacebookButtonImage19.hidden          = NO;
    [self.shareContainerFacebookButtonImage19.superview layoutIfNeeded]; // Animating constraints
}

#pragma mark - Animations

- (void)showShare {
    self.shouldPrepareForReuse = YES;
    UIViewAnimationOptions options;

    // Animating self.shareContainer
    options = UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction;
    [UIView animateWithDuration:0.4 delay:0.0 usingSpringWithDamping:0.5 initialSpringVelocity:0.0 options:options animations:^{
        [self.shareContainer anRemoveAllFrameConstraints];
        [self.shareContainer anSetRelativeConstraint:ANRelativeConstraintRight   constant:20.0 multiplier:0.0];
        [self.shareContainer anSetRelativeConstraint:ANRelativeConstraintTop     constant:20.0 multiplier:0.0];
        [self.shareContainer anSetRelativeConstraint:ANRelativeConstraintWidth   constant:160.0 multiplier:0.0];
        [self.shareContainer anSetRelativeConstraint:ANRelativeConstraintHeight  constant:40.0 multiplier:0.0];
        self.shareContainer.alpha           = 1.0;
        self.shareContainer.backgroundColor = [UIColor colorWithRed:0.61 green:0.76 blue:0.9 alpha:0.0];
        self.shareContainer.anBorderColor   = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.shareContainer.anCornerRadius  = 0.0;
        self.shareContainer.anBorderWidth   = 0.0;
        self.shareContainer.anRotation      = 0.0;
        self.shareContainer.hidden          = NO;
        [self.shareContainer.superview layoutIfNeeded]; // Animating constraints

    } completion:^(BOOL finished){}];
    

    // Animating self.shareContainerCloseButtonImage21
    options = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction;
    [UIView animateWithDuration:0.2 delay:0.1 options:options animations:^{
        [self.shareContainerCloseButtonImage21 anRemoveAllFrameConstraints];
        [self.shareContainerCloseButtonImage21 anSetRelativeConstraint:ANRelativeConstraintCenterY constant:0.0 multiplier:0.0];
        [self.shareContainerCloseButtonImage21 anSetRelativeConstraint:ANRelativeConstraintCenterX constant:0.0 multiplier:0.0];
        [self.shareContainerCloseButtonImage21 anSetRelativeConstraint:ANRelativeConstraintWidth   constant:24.0 multiplier:0];
        [self.shareContainerCloseButtonImage21 anSetRelativeConstraint:ANRelativeConstraintHeight  constant:24.0 multiplier:0];
        self.shareContainerCloseButtonImage21.alpha           = 1.0;
        self.shareContainerCloseButtonImage21.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.shareContainerCloseButtonImage21.anBorderColor   = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.shareContainerCloseButtonImage21.anCornerRadius  = 0.0;
        self.shareContainerCloseButtonImage21.anBorderWidth   = 0.0;
        self.shareContainerCloseButtonImage21.anRotation      = 0.0;
        self.shareContainerCloseButtonImage21.hidden          = NO;
        [self.shareContainerCloseButtonImage21.superview layoutIfNeeded]; // Animating constraints

    } completion:^(BOOL finished){}];
    

    // Animating self.shareContainerTwitterButtonImage18
    options = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction;
    [UIView animateWithDuration:0.2 delay:0.1 options:options animations:^{
        [self.shareContainerTwitterButtonImage18 anRemoveAllFrameConstraints];
        [self.shareContainerTwitterButtonImage18 anSetRelativeConstraint:ANRelativeConstraintCenterY constant:0.0 multiplier:0.0];
        [self.shareContainerTwitterButtonImage18 anSetRelativeConstraint:ANRelativeConstraintCenterX constant:0.0 multiplier:0.0];
        [self.shareContainerTwitterButtonImage18 anSetRelativeConstraint:ANRelativeConstraintWidth   constant:24.0 multiplier:0];
        [self.shareContainerTwitterButtonImage18 anSetRelativeConstraint:ANRelativeConstraintHeight  constant:24.0 multiplier:0];
        self.shareContainerTwitterButtonImage18.alpha           = 1.0;
        self.shareContainerTwitterButtonImage18.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.shareContainerTwitterButtonImage18.anBorderColor   = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.shareContainerTwitterButtonImage18.anCornerRadius  = 0.0;
        self.shareContainerTwitterButtonImage18.anBorderWidth   = 0.0;
        self.shareContainerTwitterButtonImage18.anRotation      = 0.0;
        self.shareContainerTwitterButtonImage18.hidden          = NO;
        [self.shareContainerTwitterButtonImage18.superview layoutIfNeeded]; // Animating constraints

    } completion:^(BOOL finished){}];
    

    // Animating self.shareContainerFacebookButtonImage19
    options = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction;
    [UIView animateWithDuration:0.2 delay:0.1 options:options animations:^{
        [self.shareContainerFacebookButtonImage19 anRemoveAllFrameConstraints];
        [self.shareContainerFacebookButtonImage19 anSetRelativeConstraint:ANRelativeConstraintCenterY constant:0.0 multiplier:0.0];
        [self.shareContainerFacebookButtonImage19 anSetRelativeConstraint:ANRelativeConstraintCenterX constant:0.0 multiplier:0.0];
        [self.shareContainerFacebookButtonImage19 anSetRelativeConstraint:ANRelativeConstraintWidth   constant:32.0 multiplier:0];
        [self.shareContainerFacebookButtonImage19 anSetRelativeConstraint:ANRelativeConstraintHeight  constant:32.0 multiplier:0];
        self.shareContainerFacebookButtonImage19.alpha           = 1.0;
        self.shareContainerFacebookButtonImage19.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.shareContainerFacebookButtonImage19.anBorderColor   = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.shareContainerFacebookButtonImage19.anCornerRadius  = 0.0;
        self.shareContainerFacebookButtonImage19.anBorderWidth   = 0.0;
        self.shareContainerFacebookButtonImage19.anRotation      = 0.0;
        self.shareContainerFacebookButtonImage19.hidden          = NO;
        [self.shareContainerFacebookButtonImage19.superview layoutIfNeeded]; // Animating constraints

    } completion:^(BOOL finished){}];
    

}

- (void)reverseShowShare {
    self.shouldPrepareForReuse = YES;
    UIViewAnimationOptions options;

    // Animating self.shareContainer
    options = UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction;
    [UIView animateWithDuration:0.4 delay:0.0 usingSpringWithDamping:0.5 initialSpringVelocity:0.0 options:options animations:^{
        [self.shareContainer anRemoveAllFrameConstraints];
        [self.shareContainer anSetRelativeConstraint:ANRelativeConstraintRight   constant:20.0 multiplier:0.0];
        [self.shareContainer anSetRelativeConstraint:ANRelativeConstraintTop     constant:24.0 multiplier:0.0];
        [self.shareContainer anSetRelativeConstraint:ANRelativeConstraintWidth   constant:16.0 multiplier:0];
        [self.shareContainer anSetRelativeConstraint:ANRelativeConstraintHeight  constant:4.0 multiplier:0];
        self.shareContainer.alpha           = 1.0;
        self.shareContainer.backgroundColor = [UIColor colorWithRed:0.61 green:0.76 blue:0.9 alpha:0.0];
        self.shareContainer.anBorderColor   = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.shareContainer.anCornerRadius  = 0.0;
        self.shareContainer.anBorderWidth   = 0.0;
        self.shareContainer.anRotation      = 0.0;
        self.shareContainer.hidden          = NO;
        [self.shareContainer.superview layoutIfNeeded]; // Animating constraints

    } completion:^(BOOL finished){}];
    

    // Animating self.shareContainerCloseButtonImage21
    options = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction;
    [UIView animateWithDuration:0.2 delay:0.1 options:options animations:^{
        [self.shareContainerCloseButtonImage21 anRemoveAllFrameConstraints];
        [self.shareContainerCloseButtonImage21 anSetRelativeConstraint:ANRelativeConstraintCenterY constant:0.0 multiplier:0.0];
        [self.shareContainerCloseButtonImage21 anSetRelativeConstraint:ANRelativeConstraintCenterX constant:0.0 multiplier:0.0];
        [self.shareContainerCloseButtonImage21 anSetRelativeConstraint:ANRelativeConstraintWidth   constant:24.0 multiplier:0];
        [self.shareContainerCloseButtonImage21 anSetRelativeConstraint:ANRelativeConstraintHeight  constant:24.0 multiplier:0];
        self.shareContainerCloseButtonImage21.alpha           = 0.0;
        self.shareContainerCloseButtonImage21.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.shareContainerCloseButtonImage21.anBorderColor   = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.shareContainerCloseButtonImage21.anCornerRadius  = 0.0;
        self.shareContainerCloseButtonImage21.anBorderWidth   = 0.0;
        self.shareContainerCloseButtonImage21.anRotation      = 0.0;
        self.shareContainerCloseButtonImage21.hidden          = NO;
        [self.shareContainerCloseButtonImage21.superview layoutIfNeeded]; // Animating constraints

    } completion:^(BOOL finished){}];
    

    // Animating self.shareContainerTwitterButtonImage18
    options = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction;
    [UIView animateWithDuration:0.2 delay:0.1 options:options animations:^{
        [self.shareContainerTwitterButtonImage18 anRemoveAllFrameConstraints];
        [self.shareContainerTwitterButtonImage18 anSetRelativeConstraint:ANRelativeConstraintCenterY constant:0.0 multiplier:0.0];
        [self.shareContainerTwitterButtonImage18 anSetRelativeConstraint:ANRelativeConstraintCenterX constant:0.0 multiplier:0.0];
        [self.shareContainerTwitterButtonImage18 anSetRelativeConstraint:ANRelativeConstraintWidth   constant:24.0 multiplier:0];
        [self.shareContainerTwitterButtonImage18 anSetRelativeConstraint:ANRelativeConstraintHeight  constant:24.0 multiplier:0];
        self.shareContainerTwitterButtonImage18.alpha           = 0.0;
        self.shareContainerTwitterButtonImage18.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.shareContainerTwitterButtonImage18.anBorderColor   = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.shareContainerTwitterButtonImage18.anCornerRadius  = 0.0;
        self.shareContainerTwitterButtonImage18.anBorderWidth   = 0.0;
        self.shareContainerTwitterButtonImage18.anRotation      = 0.0;
        self.shareContainerTwitterButtonImage18.hidden          = NO;
        [self.shareContainerTwitterButtonImage18.superview layoutIfNeeded]; // Animating constraints

    } completion:^(BOOL finished){}];
    

    // Animating self.shareContainerFacebookButtonImage19
    options = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction;
    [UIView animateWithDuration:0.2 delay:0.1 options:options animations:^{
        [self.shareContainerFacebookButtonImage19 anRemoveAllFrameConstraints];
        [self.shareContainerFacebookButtonImage19 anSetRelativeConstraint:ANRelativeConstraintCenterY constant:0.0 multiplier:0.0];
        [self.shareContainerFacebookButtonImage19 anSetRelativeConstraint:ANRelativeConstraintCenterX constant:0.0 multiplier:0.0];
        [self.shareContainerFacebookButtonImage19 anSetRelativeConstraint:ANRelativeConstraintWidth   constant:32.0 multiplier:0];
        [self.shareContainerFacebookButtonImage19 anSetRelativeConstraint:ANRelativeConstraintHeight  constant:32.0 multiplier:0];
        self.shareContainerFacebookButtonImage19.alpha           = 0.0;
        self.shareContainerFacebookButtonImage19.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.shareContainerFacebookButtonImage19.anBorderColor   = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        self.shareContainerFacebookButtonImage19.anCornerRadius  = 0.0;
        self.shareContainerFacebookButtonImage19.anBorderWidth   = 0.0;
        self.shareContainerFacebookButtonImage19.anRotation      = 0.0;
        self.shareContainerFacebookButtonImage19.hidden          = NO;
        [self.shareContainerFacebookButtonImage19.superview layoutIfNeeded]; // Animating constraints

    } completion:^(BOOL finished){}];
    

}

@end