import SwiftUI

struct StepperField: View {
    @Binding var value: Double
    var range: ClosedRange<Double>
    var step: Double
    var label: String
    var isInt: Bool
    init(value: Binding<Double>, in range: ClosedRange<Double>, step: Double = 1, label: String = "") {
        self._value = value
        self.range = range
        self.step = step
        self.label = label
        isInt = false
    }
    init(value: Binding<Int>, in range: ClosedRange<Double>, step: Double = 1, label: String = "") {
        self.init(value: value.double, in: range, step: step, label: label)
    }
    
    private var formatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.allowsFloats = !isInt
        formatter.minimum = range.lowerBound as NSNumber
        formatter.maximum = range.upperBound as NSNumber
        return formatter
    }
    
    @inlinable var body: some View {
        Stepper(value: $value, in: range, step: step) {
            HStack {
                Text(label)
                Spacer()
                TextField("", value: $value, formatter: formatter)
                    .textFieldStyle(.squareBorder)
                    .fixedSize()
                    .multilineTextAlignment(.trailing)
                    .font(.monospacedDigit(.body)())
            }
        }
    }
}

extension Int {
    var double: Double {
        get {
            Double(self)
        }
        set {
            self = Int(newValue)
        }
    }
}

struct StepperField_Previews: PreviewProvider {
    static var previews: some View {
        StepperField(value: .constant(5), in: 1...10, step: 2, label: "Testing")
    }
}
