//
//  Navigation.swift
//  contact
//
//  Created by Siti Norain Ishak on 19/06/2021.
//

import Foundation
import UIKit

public class Navigation {
    
    public static let shared = Navigation()
    
    init() {
        SplashConfigurator.shared.delegate = self
    }
    
    public func buildSplashViewModule() -> UIViewController {
        return SplashConfigurator.shared.createSplashScene()
    }
}
