//
//  Completion Manager.swift
//  STEAM Hunt APP
//
//  Created by Pari Gulati on 9/29/23.
//

import Foundation

class CompletionManager: ObservableObject {
    @Published private(set) var experiments: [Experiment] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(experiment: Experiment) {
        experiments.append(experiment)

    }
    func removeFromCart(experiment: Experiment) {
        if let index = experiments.firstIndex(where: { $0.name == experiment.name }) {
            experiments.remove(at: index)
        }
    }
}

