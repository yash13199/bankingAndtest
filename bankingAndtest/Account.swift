//
//  Account.swift
//  bankingAndtest
//
//  Created by Sohagia Yash on 11/26/24.
//


class Account {
    private var balance: Double
    
    init(initialBalance: Double) {
        self.balance = initialBalance
    }
    
    func deposit(amount: Double) {
        guard amount > 0 else {
            fatalError("Deposit amount must be positive")
        }
        balance += amount
    }
    
    func withdraw(amount: Double) {
        guard amount > 0 else {
            fatalError("Withdrawal amount must be positive")
        }
        guard balance >= amount else {
            fatalError("Insufficient funds")
        }
        balance -= amount
    }
    
    func getBalance() -> Double {
        return balance
    }
}