//
//  wage.swift
//  swiftshop
//
//  Created by Luke Nguyen on 10/23/17.
//  Copyright © 2017 Luke Nguyen. All rights reserved.
//

import Foundation
class Wage{
    class func gethours(forWage wage:Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
