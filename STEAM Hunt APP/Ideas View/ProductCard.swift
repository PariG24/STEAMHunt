//
//  Product Card.swift
//  STEAM Hunt APP
//
//  Created by Pari Gulati on 9/27/23.
//
//figure out how to keep image here without including video and in product Row 
import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var completionManager: CompletionManager
    var experimentAdded: Bool = false
    var experiment : Experiment
    var body: some View {
        Image(experiment.image!)
                .resizable()
                .aspectRatio(1, contentMode: .fill)
                .cornerRadius(30)
                .overlay (alignment: .bottom){
                    Text(experiment.name)
                        .bold()
                        .padding()
                        .background(.ultraThinMaterial)
                        .cornerRadius(20)
                }
                .overlay(alignment: .topTrailing) {
                    Button {
                        if completionManager.experiments.contains(where: { $0.name == experiment.name }) {
                            // Experiment is in completionManager, remove it
                            completionManager.removeFromCart(experiment: experiment)
                        } else {
                            // Experiment is not in completionManager, add it
                            completionManager.addToCart(experiment: experiment)
                        }/*Button {
                        //check if experiment in completionmanager.experiments
                        //if in there, remove else add
                        completionManager.addToCart(experiment: experiment)*/
                    } label: {
                        Image(systemName: completionManager.experiments.contains(where: { experimentSaved in
                            experiment.name == experimentSaved.name
                        }) ? "checkmark" : "clock")
                            .padding(5)
                            .foregroundColor(.white)
                            .background(.black)
                            .cornerRadius(50)
                            .padding()
                    }
                }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(experiment: experimentList [0])
    }
}
