//
//  ContactService.swift
//  contact
//
//  Created by Siti Norain Ishak on 19/06/2021.
//

import Foundation

public protocol GetContactsProtocol: AnyObject {
    func didSuccessGetContacts(response: [Contact]?)
    func didFailedGetContacts(error: Error?)
}

public class ContactService: ReadJsonFromFile {
    public weak var contactListDelegate: GetContactsProtocol?
    
    public func getContacts() {
        do {
            let responseData = self.readJson(type(of: self), fromFile: "data")
            let response = try JSONDecoder().decode(ContactsResponse.self, from: responseData ?? Data())
            contactListDelegate?.didSuccessGetContacts(response: response.contacts)
        } catch {
            contactListDelegate?.didFailedGetContacts(error: DescriptiveError("serialization error"))
        }
    }
}
