//
//  SplashViewProtocols.swift
//  contact
//
//  Created by Siti Norain Ishak on 19/06/2021.
//

import Foundation

// MARK: View -
protocol SplashViewPresenterToView: AnyObject {
    var presenter: SplashViewToPresenter? { get set }
}

// MARK: Interactor -
protocol SplashViewPresenterToInteractor: AnyObject {
    var presenter: SplashViewInteractorToPresenter? { get set }
}

// MARK: Presenter -
protocol SplashViewToPresenter: AnyObject {
    var view: SplashViewPresenterToView? { get set }
    var interactor: SplashViewPresenterToInteractor? { get set }
    var router: SplashViewPresenterToRouter? { get set }
    
    func viewShouldProceedToNextScreen()
}

protocol SplashViewInteractorToPresenter: AnyObject {
    
}

// MARK: Router -
protocol SplashViewPresenterToRouter: AnyObject {
    func navigateToListingView(from: SplashViewPresenterToView)
}
