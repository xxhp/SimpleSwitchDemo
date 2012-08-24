//
//  TitleLayer.h
//  SimpleSwitchDemo
//
//  Created by xiao haibo on 8/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#import <QuartzCore/QuartzCore.h>
#import <Foundation/Foundation.h>

@interface TitleLayer : CALayer{
    
}
@property (nonatomic, retain) NSString *onString;
@property (nonatomic, retain) NSString *offString;
- (id)initWithOnString:(NSString *)anOnString offString:(NSString *)anOffString;
@end
