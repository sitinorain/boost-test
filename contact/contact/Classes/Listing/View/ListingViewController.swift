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
    
    private let disposeBag = DisposeBag()
    private let cell = ListingTableViewCell.fromXib()
    private let refreshControl = UIRefreshControl()
    
    var viewModel: ListingViewModel!
    
    static func fromStoryboard() -> ListingViewController {
        let viewController = R.storyboard.listing.instantiateInitialViewController()!
        return viewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupObserver()
        viewModel.loadInitialData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func configureViews() {
        navigationItem.hidesBackButton = true
        navigationItem.title = "Contacts"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonOnSelected(_:)))
        
        tableView.register(cell.cellNib, forCellReuseIdentifier: cell.reuseIdentifier)
        
        refreshControl.attributedTitle = NSAttributedString(string: "Refreshing...")
        if #available(iOS 10, *) {
            tableView.refreshControl = refreshControl
        } else {
            tableView.addSubview(refreshControl)
        }
    }
    
    private func setupObserver() {
        viewModel.contacts
            .bind(to: tableView
                    .rx
                    .items(cellIdentifier: cell.reuseIdentifier,
                           cellType: ListingTableViewCell.self)) { row, contact, cell in
//                let imagePath = movie.posterPath != nil ? movie.posterPath : movie.backdropPath
//                let imageType = movie.posterPath != nil ? ImageType.poster : ImageType.backdrop
//                let imageUrl = ConfigurationManager.imageURLForPath(imagePath, type: imageType, size: .thumbnail)
//                let title = movie.title
//                let popularity = (movie.popularity ?? 0.0) > 0 ? "Popularity: \(movie.popularity ?? 0.0)" : nil
//                cell.refreshViews(imageUrl: imageUrl, title: title, details: popularity)
                cell.refreshViews(firstName: contact.firstName, lastName: contact.lastName)
            }
            .disposed(by: disposeBag)

    }
    
    @objc private func addButtonOnSelected(_ sender: UIBarButtonItem) {
        
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
