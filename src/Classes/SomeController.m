//
//  SomeController.m
//  IOCExample
//
//  Created by Michal Vašíček on 8/11/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "SomeController.h"
#import "IOCExampleAppDelegate.h"
#import "SomeService.h"

@implementation SomeController

@synthesize window = injWindow;
@synthesize appDelegate = injAppDelegate;
@synthesize service = injService;

- (void)loadView {
    self.view = [[[UIView alloc] initWithFrame:self.window.bounds] autorelease];
}

- (void)viewDidLoad {
    UILabel *label = [[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 100)] autorelease];
    label.text = self.appDelegate.sharedText;
    [self.view addSubview:label];
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSLog(@"%@", [self.service doService]);
}

- (void)dealloc {
    self.service = nil;
    [super dealloc];
}

@end
