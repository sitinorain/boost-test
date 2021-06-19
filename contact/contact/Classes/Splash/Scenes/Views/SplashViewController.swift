//
//  SplashViewController.swift
//  contact
//
//  Created by Siti Norain Ishak on 19/06/2021.
//

import UIKit

class SplashViewController: UIViewController, SplashViewPresenterToView {
    var presenter: SplashViewToPresenter?
    
    static func fromStoryboard() -> SplashViewController {
        let viewController = R.storyboard.splash.instantiateInitialViewController()!
        return viewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureViews() 
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        perform(#selector(proceedToNextScreen), with: nil, afterDelay: 2.0)
    }
    
    func configureViews() {
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @objc func proceedToNextScreen() {
        presenter?.viewShouldProceedToNextScreen()
    }
}
