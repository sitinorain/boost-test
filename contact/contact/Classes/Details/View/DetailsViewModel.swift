//
//  DetailsViewModel.swift
//  contact
//
//  Created by Siti Norain Ishak on 20/06/2021.
//

import Foundation
import UIKit

class DetailsViewModel: NSObject {
    private let contactService: ContactService
    private let contact: Contact?
    
    init(contact: Contact? = nil, contactService: ContactService) {
        self.contact = contact
        self.contactService = contactService
        super.init()
    }
    
    func navigateBack(from: UIViewController) {
        guard let fromViewController = from as? DetailsViewController else { return }
        fromViewController.navigationController?.popViewController(animated: true)
    }
}
