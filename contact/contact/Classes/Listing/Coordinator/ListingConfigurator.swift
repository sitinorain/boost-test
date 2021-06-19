//
//  ListingConfigurator.swift
//  contact
//
//  Created by Siti Norain Ishak on 19/06/2021.
//

import UIKit

public class ListingConfigurator {
    public static var shared = ListingConfigurator()
    public weak var delegate: ListingWireframe?

    public func createListingScene() -> UIViewController {
        let contactService = ContactService()
        let viewController = ListingViewController.fromStoryboard()
        viewController.viewModel = ListingViewModel(contactService: contactService)
        return viewController
    }
}
