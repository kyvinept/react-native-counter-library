//
//  Counter.m
//  CounterApp
//
//  Created by silchenko on 16.01.2020.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(Counter, NSObject)
  RCT_EXTERN_METHOD(increment)
  RCT_EXTERN_METHOD(getCount: (RCTResponseSenderBlock)callback)
  RCT_EXTERN_METHOD(decrement: (RCTPromiseResolveBlock)resolve
                    rejecter: (RCTPromiseRejectBlock)reject)
@end
