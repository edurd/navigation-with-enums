//
//  NavigationEnum.swift
//  Navigation
//
//  Created by Eduardo Hoyos on 3/12/24.
//

import Foundation

enum NavigationEnum: Hashable {
    case childOne
    case childTwo
    case childThree(object: SomeObject)
}

struct SomeObject: Hashable {}
