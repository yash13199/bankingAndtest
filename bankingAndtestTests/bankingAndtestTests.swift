//
//  bankingAndtestTests.swift
//  bankingAndtestTests
//
//  Created by Sohagia Yash on 11/26/24.
//

import XCTest
@testable import bankingAndtest

//struct Errors {
//    
//     var invalidAmount : String
//    invalidAmount = "Withdrawal amount must be positive"
//    
////    func invalidAount() -> Never {
////        return "Withdrawal amount must be positive"
////    }
//}

final class bankingAndtestTests: XCTestCase {
    var account: Account?
    //var errors: Errors?
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        account = Account(initialBalance: 100)
        //errors = Errors()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        account = nil
    }

    func test_desposite(){
        account?.deposit(amount: 100)
        let result = account?.getBalance()
        XCTAssertEqual(result, 200)
    }
    
    func test_withdraw(){
        account?.withdraw(amount: 100)
        let result = account?.getBalance()
        XCTAssertEqual(result, 0)
    }
    
//    func test_withdraw_error(){
//        let result = account?.withdraw(amount: 0) as Any
//        
//        XCTAssertEqual(
//            result as! Never ,
//            fatalError("Withdrawal amount must be positive")
//        )
////        
//    }
    
    
    
}
