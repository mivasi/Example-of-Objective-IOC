//
//  main.m
//  IOCExample
//
//  Created by Michal Vašíček on 8/9/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, @"IOCExampleAppDelegate");
    [pool release];
    return retVal;
}
