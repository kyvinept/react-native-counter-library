//
//  CounterViewManager.m
//  CounterApp
//
//  Created by silchenko on 16.01.2020.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"
#import "React/RCTViewManager.h"

@interface RCT_EXTERN_MODULE(CounterViewManager, RCTViewManager)
  RCT_EXPORT_VIEW_PROPERTY(count, NSNumber)
  RCT_EXPORT_VIEW_PROPERTY(onUpdate, RCTDirectEventBlock)
  RCT_EXTERN_METHOD(
                    updateFromManager:(nonnull NSNumber *)node
                    count:(nonnull NSNumber *)count
                  )
@end
