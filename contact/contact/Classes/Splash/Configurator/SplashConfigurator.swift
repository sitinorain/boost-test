//
//  SplashConfigurator.swift
//  contact
//
//  Created by Siti Norain Ishak on 19/06/2021.
//

import UIKit

public class SplashConfigurator {
    public static var shared = SplashConfigurator()
    public weak var delegate: SplashWireframe?

    public func createSplashScene() -> UIViewController {
        let view: UIViewController & SplashViewPresenterToView = SplashViewController.fromStoryboard()
        let presenter: SplashViewToPresenter & SplashViewInteractorToPresenter = SplashViewPresenter()
        let interactor: SplashViewPresenterToInteractor = SplashViewInteractor()
        let router: SplashViewPresenterToRouter = SplashViewRouter()

        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        return view
    }
}
