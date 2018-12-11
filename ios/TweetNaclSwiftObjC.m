//
//  TweetNaclSwiftObjC.m
//  SharekeyTweetNaclSwift
//
//  Created by Dmytro Bohachevskyi on 12/11/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(TweetNaclSwift, NSObject)

RCT_EXTERN_METHOD(testMethod)
RCT_EXTERN_METHOD(keyPair: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject)

@end
