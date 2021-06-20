//
//  DetailsConfigurator.swift
//  contact
//
//  Created by Siti Norain Ishak on 20/06/2021.
//

import UIKit

public class DetailsConfigurator {
    public static var shared = DetailsConfigurator()
    public weak var delegate: DetailsWireframe?

    public func createDetailsScene(withSelectedContact contact: Contact? = nil) -> UIViewController {
        let contactService = ContactService()
        let viewController = DetailsViewController.fromStoryboard()
        viewController.viewModel = DetailsViewModel(contact: contact, contactService: contactService)
        return viewController
    }
}
