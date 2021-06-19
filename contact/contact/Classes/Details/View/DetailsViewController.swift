//
//  DetailsViewController.swift
//  contact
//
//  Created by Siti Norain Ishak on 20/06/2021.
//

import UIKit

class DetailsViewController: ScrollViewController {
    
    var viewModel: DetailsViewModel!
    
    static func fromStoryboard() -> DetailsViewController {
        let viewController = R.storyboard.details.instantiateInitialViewController()!
        return viewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func configureViews() {
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
