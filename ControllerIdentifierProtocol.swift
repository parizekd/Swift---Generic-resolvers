//
//  ControllerIdentifierProtocol.swift
//  MV7
//
//  Created by David Parizek on 11/02/2020.
//  Copyright © 2020 Oriflame. All rights reserved.
//

import Foundation
import UIKit

protocol ControllerIdentifierProtocol {
    static var storyboarIdentifier: String { get }
}

extension ControllerIdentifierProtocol where Self: UIViewController, Self: IdentifierProtocol {

    static func loadFromStoryboard() -> Self {
        UIStoryboard.init(name: Self.storyboarIdentifier, bundle: Bundle.main).instantiateViewController(withIdentifier: Self.identifier) as! Self
    }

}
