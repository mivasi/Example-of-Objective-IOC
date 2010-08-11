//
//  IOCExampleAppDelegate.h
//  IOCExample
//
//  Created by Michal Vašíček on 8/9/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MVIOCContainer;

@interface IOCExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *_window;
    MVIOCContainer *_container;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) MVIOCContainer *container;
@property (readonly) NSString *sharedText;
@end

