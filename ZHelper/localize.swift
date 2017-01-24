//
//  localize.swift
//  ZHelper
//
//  Created by Omar Allaham on 1/22/17.
//  Copyright © 2017 bemaxnet. All rights reserved.
//

import Foundation

/**

 Localize the given string
 
 The string should be added in Localizable.strings
 
 If the the given text was not found it will be returned without localizing

 - Parameters:
   - key: the text to localize
 */
func localize(_ key: String) -> String {
   return NSLocalizedString(key, comment: "")
}

/**

 Localize the given string with arguments

 The string should be added in Localizable.strings

 If the the given text was not found it will be returned without localizing

 - Parameters:
   - key: the text to localize
   - arguments: the arguments of type CVarArg
 */
func localize(_ key: String,_ arguments: CVarArg) -> String {
   return String.localizedStringWithFormat(localize(key), arguments)
}
