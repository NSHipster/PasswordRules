//
//  UITextInputPasswordRules+PasswordRules.swift
//  PasswordRules
//
//  Created by 顾振华 on 2018/10/24.
//

import UIKit

@available(iOS 12.0, *)
extension UITextInputPasswordRules {
    convenience init(rules: [PasswordRule]) {
        self.init(descriptor: rules.descriptor)
    }
}
