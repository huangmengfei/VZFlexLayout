//
//  VZFPickerNodeSpecs.h
//  VZFlexLayout
//
//  Created by wuwen on 2017/2/14.
//  Copyright © 2017年 Vizlab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VZFValue.h"

namespace VZ {
    namespace DefaultAttributesValue {
        extern NSInteger selectedIndex;
    };
    
    struct PickerNodeSpecs {
        NSArray<NSString *> *items;
        Value<NSInteger, DefaultAttributesValue::selectedIndex> selectedIndex;
        /// body: {"selectedIndex": x}
        VZFEventBlock onChange;
        
        PickerNodeSpecs copy() const {
            return {
                [items copy],
                selectedIndex,
                [onChange copy]
            };
        }
    };
}
