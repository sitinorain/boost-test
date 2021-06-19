//
//  ContactService.swift
//  contact
//
//  Created by Siti Norain Ishak on 19/06/2021.
//

import Foundation

public class ContactService: ReadJsonFromFile {
    public func getContacts(completionHandler: @escaping (Result<[Contact], Error>) -> Void) {
        do {
            let responseData = self.readJson(type(of: self), fromFile: "data")
            let response = try JSONDecoder().decode([Contact].self, from: responseData ?? Data())
            if !response.isEmpty {
                DispatchQueue.main.async {
                    completionHandler(.success(response))
                }
            } else {
                DispatchQueue.main.async {
                    completionHandler(.failure(DescriptiveError("No available data")))
                }
            }
        } catch {
            DispatchQueue.main.async {
                completionHandler(.failure(DescriptiveError("Serialization Error")))
            }
        }
    }
}
