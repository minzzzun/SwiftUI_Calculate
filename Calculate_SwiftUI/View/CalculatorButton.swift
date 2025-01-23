

import SwiftUI


struct CalculatorButton : View {
    @State var number : String
    @State var bgColor : Color
    let action: (String) -> Void
    
    
    
    
    var body: some View {
        Button( action: {
            print("\(number)클릭함")
            
            action(number)
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


//#Preview {
//    CalculatorButton(number: "1", bgColor: Color.gray,action: "1")
//}
