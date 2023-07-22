// Context class
class Order {
    private var state: OrderState
    
    init() {
        state = NewOrderState()
    }
    
    func setState(state: OrderState) {
        self.state = state
    }
    
    func process() {
        state.processOrder(context: self)
    }
    
    func cancel() {
        state.cancelOrder(context: self)
    }
}

// State protocol
protocol OrderState {
    func processOrder(context: Order)
    func cancelOrder(context: Order)
}

// Concrete state 1 - New Order state
class NewOrderState: OrderState {
    func processOrder(context: Order) {
        print("Processing new order...")
        context.setState(state: InProgressOrderState())
    }
    
    func cancelOrder(context: Order) {
        print("Cancelling new order...")
        context.setState(state: CancelledOrderState())
    }
}

// Concrete state 2 - In Progress Order state
class InProgressOrderState: OrderState {
    func processOrder(context: Order) {
        print("Order is already in progress.")
    }
    
    func cancelOrder(context: Order) {
        print("Cancelling order in progress...")
        context.setState(state: CancelledOrderState())
    }
}

// Concrete state 3 - Cancelled Order state
class CancelledOrderState: OrderState {
    func processOrder(context: Order) {
        print("Cannot process cancelled order.")
    }
    
    func cancelOrder(context: Order) {
        print("Order is already cancelled.")
    }
}

// Usage
let order = Order()

order.process()  // Processing new order...

order.process()  // Order is already in progress.

order.cancel()   // Cancelling order in progress...

order.cancel()   // Order is already cancelled.

order.process()  // Cannot process cancelled order.
