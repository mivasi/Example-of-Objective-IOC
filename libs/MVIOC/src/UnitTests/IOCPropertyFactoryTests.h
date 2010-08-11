//
//  IOCContainerAddLazyComponent.h
//  IOC
//
//  Created by Michal Vašíček on 7/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//
//  See Also: http://developer.apple.com/iphone/library/documentation/Xcode/Conceptual/iphone_development/135-Unit_Testing_Applications/unit_testing_applications.html

//  Application unit tests contain unit test code that must be injected into an application to run correctly.
//  Define USE_APPLICATION_UNIT_TEST to 0 if the unit test code is designed to be linked into an independent test executable.

#define USE_APPLICATION_UNIT_TEST 0

#import <SenTestingKit/SenTestingKit.h>
#import <UIKit/UIKit.h>

#import "MVIOC.h"

@interface IOCPropertyFactoryTests : SenTestCase {
    MVIOCPropertyFactory *_factory;
}

@property(nonatomic, retain) MVIOCPropertyFactory *factory;

#if USE_APPLICATION_UNIT_TEST

#else

#endif

@end
