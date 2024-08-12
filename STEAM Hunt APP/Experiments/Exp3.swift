//
//  Exp3.swift
//  STEAM Hunt APP
//
//  Created by Pari Gulati on 8/18/23.
//

import SwiftUI

struct Exp3: View {
    var body: some View {
        ZStack{
            Color(.systemYellow)
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading, spacing: 20.0) {
                    Image("exp3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    
                    Text("Balloon Car")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("Take an empty bottle (water, Gatorade, etc.) and have four lids of the same size. Put the lids aside and cut two straws of equal length. Tape the straws on the bottle making sure they are parallel from each other. Cut skewers and make them a little longer than the straw so that when you put the skewer in the straw you will still have some room for the lids to fit on the skewer. With the help of an adult make small holes into the lids and push the lids through the skewers. Each skewer should have two wheels on it, one on each side.  Take one more straw and slide the balloon to the top of it and tie it with a rubber band. make sure you can blow it up without any problem. Make a small hole in the top of the bottle and fish the straw through the bottle having the  balloon side up on the bottle and the other side coming out on the open end so you can blow the balloon up. To run your car, blow up the balloon and hold your finger on the hole of the straw so no air escapes from the balloon and when you are ready, release and see your car zoom! ")
                    HStack{
                        Text("Competition Day:")
                        Text("TBD")
                    }
                }
                .padding()
                .background(Rectangle() .foregroundColor(Color("PrimaryRed")))
                .shadow(radius: 15)
                .cornerRadius(15)
                
            }

            .padding()
        }
    }
    }

struct Exp3_Previews: PreviewProvider {
    static var previews: some View {
        Exp3()
    }
}
