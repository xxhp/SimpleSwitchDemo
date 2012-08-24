//
//  ViewController.m
//  SimpleSwitchDemo
//
//  Created by xiao haibo on 8/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SimpleSwitch.h"
#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    SimpleSwitch *swith =[[SimpleSwitch alloc] initWithFrame:CGRectMake(24, 34, 14, 25)];
    [self.view addSubview:swith];
    [swith release];
   
    SimpleSwitch *swith2 =[[SimpleSwitch alloc] initWithFrame:CGRectMake(24, 84, 100, 25)];
    swith2.titleOn = @"本地";
    swith2.titleOff = @"网络";
    swith2.on = YES;
    swith2.knobColor = [UIColor colorWithRed:0.341 green:0.983 blue:0.13 alpha:1];
    swith2.fillColor = [UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:1];
    [swith2 addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:swith2];
    [swith2 release];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
-(void)valueChanged:(id)sender
{
    NSLog(@"switch state: %d",((SimpleSwitch*)sender).on);
}

@end
