//
//  CardView.swift
//  Learn by Doing
//
//  Created by Mary Moreira on 25/10/2022.
//

import SwiftUI

struct CardView: View {
    //MARK: - Properties
    
    var grandient: [Color] = [Color("Color01"), Color("Color02")]
    
    //MARK: - CARD
    var body: some View {
        ZStack {
          Image("developer-no1")
            
            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text("Better apps. Less Code.")
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
            }//:VStack
            .offset(y: -218)
            
            Button {
                print("Button")
            } label: {
                HStack {
                    Text("Learn".uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                    .tint(Color.white)
                    
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .tint(Color.white)
                }//HSTack
                .padding(.vertical)
                .padding(.horizontal, 24)
                    .background(LinearGradient(gradient: Gradient(colors: grandient), startPoint: .leading, endPoint: .trailing))
                    .clipShape(Capsule())
                    .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            }
            .offset(y: 210)

        } //ZSTack
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: grandient), startPoint: .top, endPoint: .bottom))
    
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

//MARK: - Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}
