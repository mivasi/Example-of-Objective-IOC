//
//  CustomView.m
//  IOCExample
//
//  Created by Michal Vašíček on 9/5/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "CustomView.h"
#import "SomeController.h"

@implementation CustomView

@dynamic owningController;

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        _label = [[[UILabel alloc] init] autorelease];
        [self addSubview:_label];
    }
    return self;
}

- (void)showControllerInfo {
    _label.text = self.owningController.controllerInfo;
    CGRect labelFrame = _label.frame;
    labelFrame.origin.x = 50;
    labelFrame.origin.y = 50;
    _label.frame = labelFrame;
    [_label sizeToFit];
}

@end
