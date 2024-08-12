//
//  CompletedButton.swift
//  STEAM Hunt APP
//
//  Created by Pari Gulati on 10/2/23.
//

import SwiftUI

struct CompletedButton: View {
        var numberofExperiments: Int
        var body: some View {
            ZStack(alignment: .topTrailing){
                Image(systemName: "checkmark.square")
                    .padding(.top, 8)
                
                if numberofExperiments > 0 {
                    Text("\(numberofExperiments)")
                        .font(.caption2).bold()
                        .foregroundColor(.white)
                        .frame(width: 15, height: 15)
                        .background(Color(.systemYellow))
                        .cornerRadius(40)
                }
            }
    }
}

struct CompletedButton_Previews: PreviewProvider {
    static var previews: some View {
        CompletedButton(numberofExperiments: 1)
    }
}
