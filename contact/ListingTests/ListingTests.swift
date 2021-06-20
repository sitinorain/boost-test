//
//  ListingTests.swift
//  ListingTests
//
//  Created by Siti Norain Ishak on 21/06/2021.
//

import XCTest
import RxSwift
import Quick
import Nimble
import RxNimble
import RxTest
import RxBlocking

@testable import contact

class ListingTests: QuickSpec, ReadJsonFromFile {
    override func spec() {
        class ContactServiceSpy: ContactService {
            var isGetContactsCalled = false

            override func getContacts(completionHandler: @escaping (Result<[Contact], Error>) -> Void) {
                isGetContactsCalled = true
            }
        }
        
        class ViewModelMock: ListingViewModel {
            var service: ContactServiceSpy?

            var isLoadInitialDataCalled = false
            var isNavigateToDetailsViewCalled = false

            override func loadInitialData() {
                isLoadInitialDataCalled = true
            }
            
            override func navigateToDetailsView(from: UIViewController, withSelectedContact contact: Contact? = nil) {
                isNavigateToDetailsViewCalled = true
            }
        }
        
        describe("ListingViewModel") {
            var sut: ListingViewModel!
            var service: ContactServiceSpy!

            beforeEach {
                service = ContactServiceSpy()
                sut = ListingViewModel(contactService: service)
            }
            context("loadInitialData") {
                it("Should be called expected") {
                    sut.loadInitialData()
                    expect(service.isGetContactsCalled).to(beTrue())
                }
            }
        }
    }
}
