//
//  Exp4.swift
//  STEAM Hunt APP
//
//  Created by Pari Gulati on 8/18/23.
//

import SwiftUI

struct Exp4: View {
    var body: some View {
        ZStack{
            Color(.systemYellow)
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20.0) {
                Image("exp4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
               
                    Text("Encryption Word Search")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("A simple explanation of encryption will be given, as well as different types of encryption. Kids will then try to encrypt their names and a sentence of their own, then they will decipher encrypted code as a word search. Lastly, they will make their own encrypted word search and have others decipher it.")
            }
            .padding()
            .background(Rectangle() .foregroundColor(Color("PrimaryPink")))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()
        }
    }
    }


struct Exp4_Previews: PreviewProvider {
    static var previews: some View {
        Exp4()
    }
}
