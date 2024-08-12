//
//  ExampleView.swift
//  STEAM Hunt APP
//
//  Created by Pari Gulati on 9/12/23.
//

import SwiftUI

struct ExampleView: View {
    var body: some View {
     
        ScrollView{
            
            ZStack {
                    VStack(alignment: .leading, spacing: 20) {
                        Image("exp1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        HStack {
                            Text("Baking Soda Volcano")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            Text("186/200")
                                .foregroundColor(.black)
                            
                        }
                        
                        Text("I made my baking soda volcano and it was AWESOME!! I put baking soda at the bottom of my modeling clay volcano and then poured viniger in it (dyed red) and it errupeted like a volcano!!!")
                            .foregroundColor(.black)
                    
                    }
                    .padding()
                    .background(Rectangle().foregroundColor(.white))
                    .cornerRadius(15)
                    .shadow(radius: 15)
                    .padding()
                    .foregroundColor(.white)
                    
                  
                    
                }
            }
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}

