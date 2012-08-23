//
//  UIKnobButton.m
//  SimplerSwitch
//
//  Created by xiao haibo on 8/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#import "UIView+InnerShadow.h"
#import "KnobButton.h"


@implementation KnobButton
@synthesize  fillColor;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.fillColor = [UIColor colorWithWhite:1 alpha:1];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    [self drawInnerShadowInRect:rect fillColor:fillColor];
}
-(void)setFillColor:(UIColor *)afillColor
{
    [fillColor release];
    fillColor = [afillColor retain];
    [self setNeedsDisplay];
}
@end
