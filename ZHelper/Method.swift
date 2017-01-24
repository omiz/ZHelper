//
//  Method.swift
//  ZHelper
//
//  Created by Omar Allaham on 1/22/17.
//  Copyright © 2017 bemaxnet. All rights reserved.
//

import Foundation

/**

 Get a method from an object

 */
public func extract(_ selector: Selector, from owner: AnyObject) -> ((Swift.Void) -> AnyObject)? {

   let method: Method

   if owner is AnyClass {
      method = class_getClassMethod(owner as! AnyClass, selector)
   } else {
      method = class_getInstanceMethod(type(of: owner), selector)
   }

   let implementation = method_getImplementation(method)

   typealias Function = @convention(c) (AnyObject, Selector) -> Unmanaged<AnyObject>
   let function = unsafeBitCast(implementation, to: Function.self)

   return { function(owner, selector).takeUnretainedValue() }
}
