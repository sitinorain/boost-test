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
    
    init(contactService: ContactService) {
        self.contactService = contactService
        super.init()
    }
}
