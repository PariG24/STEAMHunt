//
//  ProductRow.swift
//  STEAM Hunt APP
//
//  Created by Pari Gulati on 10/2/23.
//

import SwiftUI


struct ProductRow: View {
    @EnvironmentObject var completionManager: CompletionManager
    var experiment: Experiment
    
    var body: some View {
        HStack(spacing: 20) {
                 Image(experiment.image!)
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(width: 50)
                 .cornerRadius(10)
                VStack(alignment: .leading, spacing: 10) {
                    Text(experiment.name)
                        .bold()
                    
                }
                
                Spacer()
            }
               .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
    
struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(experiment: experimentList[1])
            .environmentObject(CompletionManager())
    }
}

