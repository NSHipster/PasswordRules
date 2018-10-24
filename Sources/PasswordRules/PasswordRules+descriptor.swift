//
//  PasswordRules+descriptor.swift
//  PasswordRules
//
//  Created by 顾振华 on 2018/10/24.
//

extension PasswordRule {
    var descriptor: String {
        return "\(self);"
    }
}

extension Array where Element == PasswordRule {
    var descriptor: String {
        return self
            .map { $0.descriptor }
            .joined(separator: " ")
    }
}
