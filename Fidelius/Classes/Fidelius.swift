//
//  Fidelius.swift
//  Fidelius
//
//  Created by Ben Lachman on 5/9/17.
//  Copyright © 2017 Athensworks. All rights reserved.
//

import Foundation

class Fidelius {
    enum FideliusError: Error {
        case NotFound
    }
    
    class func secrets() -> Dictionary<String, Any?> {
        if let path = Bundle.main.path(forResource: "Fidelius", ofType: "plist") {
            if let dict = NSDictionary(contentsOfFile: path) as? Dictionary<String, AnyObject> {
                return dict
            }
        }
        
        print("Fidelius: No Secrets file found")
        return Dictionary<String, Any?>()
    }
}
