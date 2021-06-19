//
//  Contact.swift
//  contact
//
//  Created by Siti Norain Ishak on 19/06/2021.
//

import Foundation

public struct Contact: Codable {
    let id: String
    let firstName: String
    let lastName: String
    let email: String?
    let phone: String?
}
