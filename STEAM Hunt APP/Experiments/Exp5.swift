//
//  Exp5.swift
//  STEAM Hunt APP
//
//  Created by Pari Gulati on 8/18/23.
//

import SwiftUI

struct Exp5: View {
    var body: some View {
        ZStack{
            Color(.systemYellow)
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20.0) {
                Image("exp5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
               
                    Text("Lava Lamp")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("Fill a water bottle halfway with water and add a few drops of food coloring. Fill the remaining half with cooking oil and let components settle and separate. Then, take an alka-seltzer tablet into four pieces and put a small piece in the bottle. Seal the bottle and observe what happens. For better results put a flash light underneath! ")
            }
            .padding()
            .background(Rectangle() .foregroundColor(Color("PrimaryBlue")))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()
        }
    }
}

struct Exp5_Previews: PreviewProvider {
    static var previews: some View {
        Exp5()
    }
}
