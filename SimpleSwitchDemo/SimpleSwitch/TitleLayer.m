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

- (UIFont *)labelFont
{
	return [UIFont boldSystemFontOfSize:ceilf(self.bounds.size.height * .6)];
}

- (void)drawInContext:(CGContextRef)context
{
//	CGFloat knobRadius = self.bounds.size.height - 2.0;
//	
//    
//	 
//	CGFloat textSpaceWidth = (self.bounds.size.width / 2) - (knobRadius / 2);
    
	UIGraphicsPushContext(context);
    
 
//	CGSize onTextSize = [self.onString sizeWithFont:self.labelFont];
//	CGPoint onTextPoint = CGPointMake((textSpaceWidth - onTextSize.width) / 2.0 + knobRadius * .15, floorf((self.bounds.size.height - onTextSize.height) / 2.0) + 1.0);
//		
//	[[UIColor whiteColor] set];
//	[self.offString drawAtPoint:onTextPoint withFont:self.labelFont];
//    
//	 
//	CGSize offTextSize = [self.offString sizeWithFont:self.labelFont];
//	CGPoint offTextPoint = CGPointMake(textSpaceWidth + (textSpaceWidth - offTextSize.width) / 2.0 + knobRadius * .86, floorf((self.bounds.size.height - offTextSize.height) / 2.0) + 1.0);
//
//	[[UIColor colorWithWhite:1 alpha:1.0] set];
//	[self.onString drawAtPoint:offTextPoint withFont:self.labelFont];
    
    //    if (on){
    //        NSLog(@"draw on");
    //
    //        NSLog(@"%@",self.titleOn);
    //        
    //   
     [[UIColor whiteColor] set];
    [self.onString drawInRect:CGRectMake(self.bounds.size.width/2 +10, 2, self.bounds.size.width/2, self.bounds.size.height) withFont:[UIFont systemFontOfSize:15]]; 
          
    //        [self.titleOn drawAtPoint:CGPointMake(self.bounds.size.width/2 +10,  2.0) withFont:[UIFont systemFontOfSize:14]];
    //    }else{
            [[UIColor whiteColor] set];
    //        
            [self.offString drawInRect:CGRectMake(10, 2, self.bounds.size.width/2, self.bounds.size.height) withFont:[UIFont systemFontOfSize:15]];
    
	UIGraphicsPopContext();
}


@end
