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
#import "CustomView.h"

@implementation SomeController

@synthesize window = injWindow;
@synthesize appDelegate = injAppDelegate;
@synthesize service = injService;

- (void)loadView {
    CustomView *view = [[[CustomView alloc] initWithFrame:[self.window bounds]] autorelease];
    self.view = view;
    [view showControllerInfo];
}

- (void)viewDidLoad {
    NSLog(@"%@", [self.service doService]);
}

- (void)dealloc {
    self.service = nil;
    [super dealloc];
}

- (NSString *)controllerInfo {
    return @"SomeController by Michal";
}

@end
