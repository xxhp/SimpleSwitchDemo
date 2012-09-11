//
//  TitleLayer.m
//  SimpleSwitchDemo
//
//  Created by xiao haibo on 8/23/12.
//  Copyright (c) 2012 xiao haibo. All rights reserved.
//
//  github:https://github.com/xxhp/SimpleSwitchDemo
//  Email:xiao_hb@qq.com

//  Permission is hereby granted, free of charge, to any person
//  obtaining a copy of this software and associated documentation
//  files (the "Software"), to deal in the Software without
//  restriction, including without limitation the rights to use,
//  copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the
//  Software is furnished to do so, subject to the following
//  conditions:
//
//  The above copyright notice and this permission notice shall be
//  included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
//  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
//  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
//  OTHER DEALINGS IN THE SOFTWARE.
//
#import "TitleLayer.h"

@implementation TitleLayer
@synthesize onString, offString;

- (void)dealloc
{
	[onString release];
	[offString release];
    
	[super dealloc];
}

- (id)initWithOnString:(NSString *)anOnString offString:(NSString *)anOffString 
{
	if ((self = [super init]))
	{
		self.onString = anOnString;
		self.offString = anOffString;
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
