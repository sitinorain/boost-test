//
//  ListingViewModel.swift
//  contact
//
//  Created by Siti Norain Ishak on 19/06/2021.
//

import Foundation
import RxSwift
import RxCocoa

class ListingViewModel: NSObject {
    private let contactService: ContactService
    private let disposeBag = DisposeBag()
    private var _totalPages = 0
    private let page: BehaviorRelay<Int> = BehaviorRelay(value: 1)
    let contacts: BehaviorRelay<[Contact]> = BehaviorRelay(value: [])
    
    var totalPages: Int {
        return _totalPages
    }
    
    init(contactService: ContactService) {
        self.contactService = contactService
        super.init()
        setupObserver()
    }
    
    private func setupObserver() {
        page.asObservable()
            .subscribe(onNext: {
                [weak self] page in
                self?.loadContactList(isRefresh: page == 1)
              })
            .disposed(by: disposeBag)
    }
    
    private func loadContactList(isRefresh: Bool) {
        contactService.getContacts { response in
            switch response {
            case .success(let value):
                let newValue = isRefresh ? value : self.contacts.value + value
                self.contacts.accept(newValue)
            case .failure(let error):
                print("contactService.getContacts, error: \(error)")
                self.contacts.accept([])
            }
        }
    }
    
    func loadInitialData() {
        loadContactList(isRefresh: true)
    }
    
    func viewDidReachEndOfPage() {
        let newPage = page.value+1
        page.accept(newPage)
    }
}
