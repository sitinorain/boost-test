//
//  SplashViewPresenter.swift
//  contact
//
//  Created by Siti Norain Ishak on 19/06/2021.
//

import Foundation

class SplashViewPresenter: SplashViewToPresenter {
    weak var view: SplashViewPresenterToView?
    var interactor: SplashViewPresenterToInteractor?
    var router: SplashViewPresenterToRouter?

    func viewShouldProceedToNextScreen() {
        guard let view = view else { return }
        router?.navigateToListingView(from: view)
    }
}

extension SplashViewPresenter: SplashViewInteractorToPresenter {
    
}
