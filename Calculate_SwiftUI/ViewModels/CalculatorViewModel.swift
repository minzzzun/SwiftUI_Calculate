

import Foundation

class CalculatorViewModel: ObservableObject {
    @Published var displayNumber: String = "0"
    
    
    private var firstNumber: Double = 0
    private var currentOperator: String?
    private var shouldResetNumber = false
    
    //숫자 입력
    func inputNumber(_ number: String){
        if shouldResetNumber {
            displayNumber = number
            shouldResetNumber = false
        } else {
            if displayNumber == "0" {
                displayNumber = number
            } else {
                displayNumber += number
            }
        }
    }
    
    func performOperation(_ operation: String){
        switch operation {
        case "AC":
            reset()
        case "+/-":
            if let number = Double(displayNumber){
                displayNumber = String(-number)
            }
        case "%":
            if let number = Double(displayNumber){
                displayNumber = String(number/100)
            }
        case "=":
            
            calculateResult()
        default:
            if currentOperator != nil {
                calculateResult()
            }
            firstNumber = Double(displayNumber) ?? 0
            currentOperator = operation
            shouldResetNumber = true
        }
    }
    
    // 계산 
    private func calculateResult() {
        guard let operation = currentOperator,
              let secondNumber = Double(displayNumber) else { return }
        
        let result: Double
        
        switch operation {
        case "+":
            result = firstNumber + secondNumber
        case "-":
            result = firstNumber - secondNumber
        case "X":
            result = firstNumber * secondNumber
        case "÷":
            result = firstNumber / secondNumber
        default:
            return
        }
        
        displayNumber = formatResult(result)
        currentOperator = nil
    }
    
    // 결과 포맷팅
    private func formatResult(_ number: Double) -> String {
        if number.truncatingRemainder(dividingBy: 1) == 0 {
            return String(format: "%.0f", number)
        } else {
            return String(number)
        }
    }
  
    // 초기화
    private func reset(){
        displayNumber = "0"
        firstNumber = 0
        currentOperator = nil
        shouldResetNumber = false
        
    }
    
    
    
}
