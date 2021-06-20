//
//  Contact.swift
//  contact
//
//  Created by Siti Norain Ishak on 19/06/2021.
//

import Foundation
import RealmSwift

public class Contact: Object, Codable {
    @objc dynamic var id: String
    @objc dynamic var firstName: String
    @objc dynamic var lastName: String
    @objc dynamic var email: String?
    @objc dynamic var phone: String?
}
