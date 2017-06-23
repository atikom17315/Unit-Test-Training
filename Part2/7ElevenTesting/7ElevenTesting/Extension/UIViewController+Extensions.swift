//
//  Bundle+Extensions.swift
//  SevenEleven
//
//  Created by Atikom Tancharoen on 6/20/17.
//  Copyright © 2017 Atikom Tancharoen. All rights reserved.
//

import UIKit

extension UIViewController {

    // from xib
    static func loadNib() -> Self {
        return loadNibHelper()
    }
    
    private static func loadNibHelper<T>() -> T {
        guard let instance = Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)?.first as? T else {
            fatalError("We cannot get instance from \(String(describing: T.self)).xib")
        }
        return instance
    }
    
    // from storyboard
    static func instantiate() -> Self {
        return instantiateHelper()
    }
    
    private static func instantiateHelper<T>() -> T {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let instance = storyboard.instantiateViewController(withIdentifier: String(describing: T.self)) as? T else {
            fatalError("We cannot get \(String(describing: T.self)) from Main.storyboard, Please check Storyboard ID.")
        }
        return instance
    }
    
}
