//
//  TweetNaclSwift.swift
//  SharekeyTweetNaclSwift
//
//  Created by Dmytro Bohachevskyi on 12/11/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import Foundation
import TweetNacl

@objc(TweetNaclSwift)
class TweetNaclSwift: NSObject {

  @objc
  func testMethod() {
    print("test method get called")
  }

  @objc
  func keyPair(_ resolve: RCTPromiseResolveBlock,
               rejecter reject: RCTPromiseRejectBlock) {
    if let keys = try? NaclBox.keyPair() {
      print("keyPair value is available")

      resolve([
        "publicKey": keys.publicKey.base64EncodedString(),
        "secretKey": keys.secretKey.base64EncodedString()
      ])
    } else {
      reject("ERROR_TWEET_NACL", "CAN'T CREATE KEYPAIR", NSError(domain: "", code: 200, userInfo: nil))
    }
  }

}
