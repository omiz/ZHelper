//
//  ViewController.swift
//  ZHelper
//
//  Created by Omar Allaham on 1/22/17.
//  Copyright © 2017 bemaxnet. All rights reserved.
//

import Foundation
import UIKit

/**

 Get the root view controller based on UIApplication.shared.keyWindow
 
 */
public func getRoot() -> UIViewController? {
   return UIApplication.shared.keyWindow?.rootViewController
}
