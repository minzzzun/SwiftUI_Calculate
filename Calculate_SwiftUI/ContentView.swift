//
//  ContentView.swift
//  Calculate_SwiftUI
//
//  Created by 김민준 on 1/8/25.
//

import SwiftUI

struct ContentView: View {
    @State var number : String
    
    var body: some View {
        
        ZStack{
            Color.black.ignoresSafeArea()
                
            VStack{
                Spacer()
                    
                HStack(){
                    Spacer()
                        
                
                    Text("\(number)")
                        .padding()
                        .font(.system(size:73))
                        .foregroundColor(Color.white)
                        
                    
                }
                
                
                HStack{
                    CalculatorButton(number: "AC", bgColor: Color(hex: "5c5c5f"))
                    CalculatorButton(number: "+/-", bgColor: Color(hex: "5c5c5f"))
                    CalculatorButton(number: "%", bgColor: Color(hex: "5c5c5f"))
                    CalculatorButton(number:  "÷", bgColor: Color(hex:"ff9f0a"))
                }
                .padding(.bottom, 5)
                
                HStack{
                    CalculatorButton(number: "7", bgColor: Color(hex: "2a2a2c"))
                    CalculatorButton(number: "8", bgColor: Color(hex: "2a2a2c"))
                    CalculatorButton(number: "9", bgColor: Color(hex: "2a2a2c"))
                    CalculatorButton(number:  "X", bgColor: Color(hex:"ff9f0a"))
                }
                .padding(.bottom, 5)
                
                HStack{
                    CalculatorButton(number: "4", bgColor: Color(hex: "2a2a2c"))
                    CalculatorButton(number: "5", bgColor: Color(hex: "2a2a2c"))
                    CalculatorButton(number: "6", bgColor: Color(hex: "2a2a2c"))
                    CalculatorButton(number:  "-", bgColor: Color(hex:"ff9f0a"))
                }
                .padding(.bottom, 5)
                
                HStack{
                    CalculatorButton(number: "1", bgColor: Color(hex: "2a2a2c"))
                    CalculatorButton(number: "2", bgColor: Color(hex: "2a2a2c"))
                    CalculatorButton(number: "3", bgColor: Color(hex: "2a2a2c"))
                    CalculatorButton(number:  "+", bgColor: Color(hex:"ff9f0a"))
                }
                .padding(.bottom, 5)
                
                HStack{
                    CalculatorButton(number: "📱", bgColor: Color(hex: "2a2a2c"))
                    CalculatorButton(number: "0", bgColor: Color(hex: "2a2a2c"))
                    CalculatorButton(number: ".", bgColor: Color(hex: "2a2a2c"))
                    CalculatorButton(number:  "=", bgColor: Color(hex:"ff9f0a"))
                }
                .padding(.bottom, 5)
                
                
                
                
                
            }
            
        }
      
    }
}

#Preview {
    ContentView(number: "0")
}
