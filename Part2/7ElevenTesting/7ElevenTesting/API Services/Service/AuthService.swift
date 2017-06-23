//
//  AuthService.swift
//  SevenEleven
//
//  Created by Atikom Tancharoen on 6/12/17.
//  Copyright © 2017 Atikom Tancharoen. All rights reserved.
//

import Foundation
import Moya

enum AuthService {
  
}

// MARK: - TargetType Protocol
//extension AuthService: TargetType {
//
//}

// MARK: - Helpers
private extension String {
    var urlEscaped: String {
        return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }
}
