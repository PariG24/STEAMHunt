//
//  IdeasView.swift
//  STEAM Hunt APP
//
//  Created by Pari Gulati on 8/17/23.
//

import SwiftUI

struct IdeasView: View {
    @StateObject var completionManager = CompletionManager()
    var columns = [GridItem(spacing: 20), GridItem(spacing: 20)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(experimentList, id: \.id) { experiment in
                      ProductCard(experiment: experiment)
                            .environmentObject(completionManager)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Check List"))
            .toolbar {
                NavigationLink {
                    CompletedView()
                        .environmentObject(completionManager)
                } label: {
                    CompletedButton(numberofExperiments: completionManager.experiments.count)
                }
            }
        }
    }
}

struct IdeasView_Previews: PreviewProvider {
    static var previews: some View {
        IdeasView()
    }
}
