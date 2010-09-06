//
//  CustomView.h
//  IOCExample
//
//  Created by Michal Vašíček on 9/5/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SomeController;

@interface CustomView : UIView {
    UILabel *_label;
}

@property(nonatomic, assign) SomeController *owningController;

- (void)showControllerInfo;

@end
