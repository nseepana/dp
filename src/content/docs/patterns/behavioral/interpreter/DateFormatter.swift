protocol DateFormatter {
    func format(date: Date) -> String
}

class ShortDateFormatter: DateFormatter {
    func format(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter.string(from: date)
    }
}

class LongDateFormatter: DateFormatter {
    func format(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy"
        return formatter.string(from: date)
    }
}

// Usage
let date = Date()

let shortFormatter = ShortDateFormatter()
let shortFormattedDate = shortFormatter.format(date: date)

let longFormatter = LongDateFormatter()
let longFormattedDate = longFormatter.format(date: date)
