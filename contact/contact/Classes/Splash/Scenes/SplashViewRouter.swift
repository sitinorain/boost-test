//
//  SplashViewRouter.swift
//  contact
//
//  Created by Siti Norain Ishak on 19/06/2021.
//

import Foundation

class SplashViewRouter: SplashViewPresenterToRouter {
    func navigateToListingView(from: SplashViewPresenterToView) {
        guard let fromViewController = from as? SplashViewController else { return }
        SplashConfigurator.shared.delegate?.navigateToListingViewFromSplash(fromViewController)
    }
}
