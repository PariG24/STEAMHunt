//
//  Exp2.swift
//  STEAM Hunt APP
//
//  Created by Pari Gulati on 8/18/23.
//

import SwiftUI

struct Exp2: View {
    var body: some View {
        ZStack{
            Color(.systemYellow)
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20.0) {
                Image("exp2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
               
                    Text("Tornado in a Bottle")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("Fill a water bottle about 3/4 of the way full with water. Then, put some glitter or food coloring (if you want) and seal the bottle tightly. In circular motions spin the water bottle and watch a tornado emerge! Will the tornado form quickly or slowly? Write down your hypothesis and observation. ")
            }
            .padding()
            .background(Rectangle() .foregroundColor(Color("PrimaryBlue")))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()
        }
    }
    }

struct Exp2_Previews: PreviewProvider {
    static var previews: some View {
        Exp2()
    }
}
