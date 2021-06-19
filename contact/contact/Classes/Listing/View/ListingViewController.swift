//
//  ListingViewController.swift
//  contact
//
//  Created by Siti Norain Ishak on 19/06/2021.
//

import UIKit
import RxSwift
import RxCocoa

class ListingViewController: TableViewController {
    
    var viewModel: ListingViewModel!
    
    static func fromStoryboard() -> ListingViewController {
        let viewController = R.storyboard.listing.instantiateInitialViewController()!
        return viewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
