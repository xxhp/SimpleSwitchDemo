//
//  TitleLayer.m
//  SimpleSwitchDemo
//
//  Created by xiao haibo on 8/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TitleLayer.h"

@implementation TitleLayer
@synthesize onString, offString, onTintColor;

@synthesize labelFont;
- (void)dealloc
{
	[onString release];
	[offString release];
	[onTintColor release];
    
	[super dealloc];
}

- (id)initWithOnString:(NSString *)anOnString offString:(NSString *)anOffString 
{
	if ((self = [super init]))
	{
		self.onString = anOnString;
		self.offString = anOffString;
        labelFont = [UIFont systemFontOfSize:14];
	}
    
	return self;
}

- (void)drawInContext:(CGContextRef)context
{
	UIGraphicsPushContext(context);
    [[UIColor whiteColor] set];
    [self.onString drawInRect:CGRectMake(self.bounds.size.width/2 +10, 2, self.bounds.size.width/2, self.bounds.size.height) withFont:[UIFont systemFontOfSize:15]]; 
    [[UIColor whiteColor] set];
    
    [self.offString drawInRect:CGRectMake(10, 2, self.bounds.size.width/2, self.bounds.size.height) withFont:[UIFont systemFontOfSize:15]];
	UIGraphicsPopContext();
}


@end
