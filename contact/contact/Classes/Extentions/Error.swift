//
//  Error.swift
//  contact
//
//  Created by Siti Norain Ishak on 19/06/2021.
//

import Foundation

struct DescriptiveError: LocalizedError {
    let errorDescription: String?
    init(_ errorDescription: String) {
        self.errorDescription = errorDescription
    }
}
