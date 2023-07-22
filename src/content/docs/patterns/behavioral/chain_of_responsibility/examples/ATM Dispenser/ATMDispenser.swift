// Currency struct
struct Currency {
    let amount: Int
}

// ATM dispenser handler protocol
protocol ATMDispenser {
    var nextDispenser: ATMDispenser? { get set }
    func dispense(amount: Int)
}

// Concrete dispenser 1 - Dispense $100 bills
class HundredBillDispenser: ATMDispenser {
    var nextDispenser: ATMDispenser?
    
    func dispense(amount: Int) {
        let billValue = 100
        
        if amount >= billValue {
            let numBills = amount / billValue
            let remainingAmount = amount % billValue
            print("Dispensing \(numBills) $100 bills")
            
            if remainingAmount > 0, let nextDispenser = self.nextDispenser {
                nextDispenser.dispense(amount: remainingAmount)
            }
        } else if let nextDispenser = self.nextDispenser {
            nextDispenser.dispense(amount: amount)
        } else {
            print("Unable to dispense requested amount")
        }
    }
}

// Concrete dispenser 2 - Dispense $50 bills
class FiftyBillDispenser: ATMDispenser {
    var nextDispenser: ATMDispenser?
    
    func dispense(amount: Int) {
        let billValue = 50
        
        if amount >= billValue {
            let numBills = amount / billValue
            let remainingAmount = amount % billValue
            print("Dispensing \(numBills) $50 bills")
            
            if remainingAmount > 0, let nextDispenser = self.nextDispenser {
                nextDispenser.dispense(amount: remainingAmount)
            }
        } else if let nextDispenser = self.nextDispenser {
            nextDispenser.dispense(amount: amount)
        } else {
            print("Unable to dispense requested amount")
        }
    }
}

// Concrete dispenser 3 - Dispense $20 bills
class TwentyBillDispenser: ATMDispenser {
    var nextDispenser: ATMDispenser?
    
    func dispense(amount: Int) {
        let billValue = 20
        
        if amount >= billValue {
            let numBills = amount / billValue
            let remainingAmount = amount % billValue
            print("Dispensing \(numBills) $20 bills")
            
            if remainingAmount > 0, let nextDispenser = self.nextDispenser {
                nextDispenser.dispense(amount: remainingAmount)
            }
        } else if let nextDispenser = self.nextDispenser {
            nextDispenser.dispense(amount: amount)
        } else {
            print("Unable to dispense requested amount")
        }
    }
}

// Usage
let hundredBillDispenser = HundredBillDispenser()
let fiftyBillDispenser = FiftyBillDispenser()
let twentyBillDispenser = TwentyBillDispenser()

hundredBillDispenser.nextDispenser = fiftyBillDispenser
fiftyBillDispenser.nextDispenser = twentyBillDispenser

// Dispensing amount
let amountToDispense = 370
hundredBillDispenser.dispense(amount: amountToDispense)
