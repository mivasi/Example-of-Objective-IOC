//
//  SomeController.h
//  IOCExample
//
//  Created by Michal Vašíček on 8/11/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class IOCExampleAppDelegate;
@class SomeService;

@interface SomeController : UIViewController {
    UIWindow *injWindow;
    IOCExampleAppDelegate *injAppDelegate;
    SomeService *injService;
}

@property (nonatomic, assign) UIWindow *window;
@property (nonatomic, assign) IOCExampleAppDelegate *appDelegate;
@property (nonatomic, retain) SomeService *service;

@end
