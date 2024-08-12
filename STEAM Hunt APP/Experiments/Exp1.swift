//
//  Exp1.swift
//  STEAM Hunt APP
//
//  Created by Pari Gulati on 8/18/23.
//

import SwiftUI

struct Exp1: View {
    var body: some View {
        ZStack{
            Color(.systemYellow)
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20.0) {
                Image("exp1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
               
                    Text("Baking Soda Volcano")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("In a cup pour some baking soda, then pour vinegar into the cup and see the volcano erupt! To avoid cleaning up a mess, conduct this experiment outdoors. Design the volcano however you want using play-dough, modeling clay, paint, or whatever you like! Observe what happens if you put boiling hot water in the cup along with the baking soda before putting the vinegar.")
            }
            .padding()
            .background(Rectangle() .foregroundColor(Color("PrimaryPink")))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()
        }
    }
    struct Exp1_Previews: PreviewProvider {
        static var previews: some View {
            Exp1()
        }
    }
}
