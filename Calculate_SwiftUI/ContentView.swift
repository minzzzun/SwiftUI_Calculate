//
//  ContentView.swift
//  Calculate_SwiftUI
//
//  Created by 김민준 on 1/8/25.
//

import SwiftUI

struct ContentView: View {
    @State var number : String
    
    private let buttonData: [[String]] = [
        ["AC","+/-","%","÷"],
        ["7","8","9","X"],
        ["4","5","6","-"],
        ["1","2","3","+"],
        ["📱","0",".","="]
    ]
    
    private let grayColor: [String] = ["AC","+/-","%"]
    private let orangeColor: [String] = ["÷","X","-","+","="]
    
    
    
    
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
                }// h
                
                ForEach(buttonData, id: \.self){ row in
                    HStack{
                        ForEach(row,id: \.self){ column in
                            HStack{
                                if grayColor.contains(column){
                                    CalculatorButton(
                                        number: column,
                                        bgColor: Color("gray"),
                                        action: { value in
                                            number += value
                                        })
                                } else if orangeColor.contains(column){
                                    CalculatorButton(
                                        number: column,
                                        bgColor: Color("orange"),
                                        action: { value in
                                            number += value
                                        })
                                } else {
                                    CalculatorButton(
                                        number: column,
                                        bgColor: Color("darkgray"),
                                        action: { value in
                                            number += value
                                        })
                                }
                                
                            }
                        }
                    }.padding(.bottom, 5)
                }
                
            } // v
            
        } // z
        
    }
}

#Preview {
    ContentView(number: "0")
}
