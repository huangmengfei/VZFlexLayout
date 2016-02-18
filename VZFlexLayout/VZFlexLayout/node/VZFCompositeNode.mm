//
//  VZFCompositeNode.m
//  VZFlexLayout
//
//  Created by moxin on 16/2/17.
//  Copyright © 2016年 Vizlab. All rights reserved.
//

#import "VZFCompositeNode.h"
#import "VZFMacros.h"
#import "VZFNodeInternal.h"
#import "VZFNodeLayout.h"

@implementation VZFCompositeNode
{
    VZFState* _props;
}

@synthesize node = _node;
@synthesize flexNode = _flexNode;

+ (instancetype)nodeWithUISpecs:(const NodeSpecs &)specs{
    VZ_NOT_DESIGNATED_INITIALIZER();
}

+ (instancetype)newWithNode:(VZFNode* )node Props:(VZFState* )state{

    if (!node) {
        return nil;
    }
    
    VZFCompositeNode* compositeNode = [super nodeWithView:{} Specs:{}];
    if (compositeNode) {
        compositeNode -> _node = node;
        compositeNode -> _props = state;
        compositeNode -> _flexNode = nil;
    }
    return compositeNode;
}

- (VZFNodeLayout)computeLayoutThatFits:(CGSize)sz{

    return [_node computeLayoutThatFits:sz];
}

@end