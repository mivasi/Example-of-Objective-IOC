//
//  IOCExampleAppDelegate.m
//  IOCExample
//
//  Created by Michal Vašíček on 8/9/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "IOCExampleAppDelegate.h"
#import "MVIOC/MVIOC.h"

#import "SomeController.h"
#import "SomeService.h"

@implementation IOCExampleAppDelegate

@synthesize window;
@synthesize container = _container;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    
    self.container = [[MVIOCContainer alloc] init];
    [self.container addComponent:self];
    [self.container addComponent:self.window];
	[[self.container actAs:[[[MVIOCControllerActor alloc] init] autorelease]] addComponent:[SomeController class]];
    
    [self.container addComponent:[SomeService class]];
        
    UIViewController *mainController = (UIViewController*)[self.container getComponent:[SomeController class]];
    
    [self.window addSubview:mainController.view];
    [self.window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    self.window = nil;
    [super dealloc];
}

- (NSString *)sharedText {
    return @"Text from app delegate";
}

@end
