//
//  Completed View.swift
//  STEAM Hunt APP
//
//  Created by Pari Gulati on 9/27/23.
//

import SwiftUI

struct CompletedView: View {
        @EnvironmentObject var completionManager: CompletionManager
        var body: some View {
            ScrollView {
                if completionManager.experiments.count > 0 {
                    ForEach(completionManager.experiments, id: \.id) {
                        experiment in
                        ProductRow(experiment: experiment)
                    }
                } else {
                    Text("You haven't completed any experiments yet")
                }
            }
            .navigationTitle(Text("Completed"))
            .padding(.top)
    }
}

struct CompletedView_Previews: PreviewProvider {
    static var previews: some View {
        CompletedView()
            .environmentObject(CompletionManager())
    }
}
