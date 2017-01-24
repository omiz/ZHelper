//
//  Dispatch.swift
//  ZHelper
//
//  Created by Omar Allaham on 1/22/17.
//  Copyright © 2017 bemaxnet. All rights reserved.
//

import Foundation

/**

 Run a closure in the main dispatcher with a dely

 - Parameters:
   - seconds: the delay time in seconds Double
   - closure: the delayed closure () -> Void
 */
public func delay(_ seconds: Double, closure: @escaping () -> Void) {

   let delayTime = DispatchTime.now() + Double(Int64(Double(seconds) * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
   DispatchQueue.main.asyncAfter(deadline: delayTime) {
      closure()
   }
}
