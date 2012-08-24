//
//  SimplerSwitch.h
//  SimplerSwitch
//
//  Created by xiao haibo on 8/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KnobButton.h"
#import <QuartzCore/QuartzCore.h>
#import "TitleLayer.h"
@interface SimpleSwitch : UIControl<UIGestureRecognizerDelegate>
{
    KnobButton *knobButton;
    CGRect knobFrameOn;
    CGRect knobFrameOff;
    BOOL on;
    NSString *titleOn;
    NSString *titleOff;
    UIColor *knobColor;
    UIColor *fillColor;
    TitleLayer *titleLayer;
}
@property(assign,nonatomic) BOOL on;
@property(retain,nonatomic) NSString *titleOn;
@property(retain,nonatomic) NSString *titleOff;
@property(retain,nonatomic) UIColor *knobColor;
@property(retain,nonatomic) UIColor *fillColor;
- (void)setOn:(BOOL)on animated:(BOOL)animated;

@end
