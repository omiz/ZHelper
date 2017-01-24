//
//  Alert.swift
//  ZHelper
//
//  Created by Omar Allaham on 1/22/17.
//  Copyright © 2017 bemaxnet. All rights reserved.
//

import UIKit

/**

 Show an alert with a default action on the root viewController

 - Parameters:
   - title: the title of the alert Optional
   - message: the message body of the alert Optional
   - action: the action text default is a localized 'Ok'
   - handler: the hanlder on action click Optional
 */
public func alert(_ title: String?, message: String?, action: String? = nil, handler: ((UIAlertAction) -> Swift.Void)? = nil) {

   if let controller = getRoot() {

      let alert = UIAlertController(
         title: title,
         message: message,
         preferredStyle: UIAlertControllerStyle.alert)

      alert.addAction(
         UIAlertAction(
            title: action ?? localize("Ok"),
            style: UIAlertActionStyle.default,
            handler: handler))

      DispatchQueue.main.async() {
         controller.present(alert, animated: true, completion: nil)
      }
   }
}

/**

 Show an alert from an Error with localized title 'Error' and and message body error?.localizedDescription on the root viewController

 - Parameters:
   - error: used to show the message body through error?.localizedDescription
 */
public func alert(_ error: Error?) {
   alert(localize("Error"), message: error?.localizedDescription)
}
