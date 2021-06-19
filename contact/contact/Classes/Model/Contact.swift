//
//  Contact.swift
//  contact
//
//  Created by Siti Norain Ishak on 19/06/2021.
//

import Foundation
import RealmSwift

//public struct Contact: Codable {
//    let id: String
//    let firstName: String
//    let lastName: String
//    let email: String?
//    let phone: String?
//}

public class Contact: Object, Codable {
    @objc dynamic let id: String
    @objc dynamic var firstName: String
    @objc dynamic var lastName: String
    @objc dynamic var email: String?
    @objc dynamic var phone: String?
}
