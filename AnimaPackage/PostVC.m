//
//  PostVC.m
//  AnimaPackage
//
//  Created by Your Name on 14/10/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

#import "PostVC.h"
#import "AnimaSDK.h"

@implementation PostVC

- (IBAction)closeButtonTap:(id)sender {
    [self dismiss:YES];
}

- (IBAction)label1Tap:(id)sender {
    [self performSegueWithIdentifier:@"post -> readMoreScreen - Modal" sender:self];
}

- (IBAction)postLabelTap:(id)sender {
    [self dismiss:YES];
}

- (IBAction)swipeDown:(id)sender {
    [self dismiss:YES];
}

@end