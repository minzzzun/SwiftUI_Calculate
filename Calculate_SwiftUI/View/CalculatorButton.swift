

import SwiftUI


struct CalculatorButton : View {
    @State var number : String
    @State var bgColor : Color
    
    var body: some View {
        Button( action: {
            print("클릭함")
        }
        
        ){
            Text(number)
                .font(.system(size: 30))
                .frame(width: 80, height: 80)
                .background(bgColor)
                .clipShape(Circle())
                .foregroundColor(Color.white)
        }
    }
}


#Preview {
    CalculatorButton(number: "1", bgColor: Color.gray)
}
