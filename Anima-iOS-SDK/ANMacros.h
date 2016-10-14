//
//  ANMacros.h
//  Anima-iOS-SDK
//
//  Created by Avishay Cohen on 10/08/2016.
//  Copyright © 2016 AnimaApp.com. All rights reserved.
//


/** AN_INTERFACE_BUILDER_TITLE Draws a centered text only on interface builder, used with IB_DESIGNABLE inside drawRect: */
#if TARGET_INTERFACE_BUILDER
#define AN_INTERFACE_BUILDER_TITLE(title)   { \
                                                UILabel *label = [[UILabel alloc] initWithFrame:self.bounds]; \
                                                label.text = (title); \
                                                label.textAlignment = NSTextAlignmentCenter; \
                                                label.font = [UIFont boldSystemFontOfSize:13]; \
                                                label.textColor = [UIColor grayColor]; \
                                                [label drawRect:self.bounds]; \
                                            }
#else
#define AN_INTERFACE_BUILDER_TITLE(title)
#endif