//
//  Exp6.swift
//  STEAM Hunt APP
//
//  Created by Pari Gulati on 8/18/23.
//

import SwiftUI
import _AVKit_SwiftUI

struct ExperimentView: View {
    var experiment: Experiment
    var foregroundExperiementColor: Color {
        switch experiment.number {
        case _ where experiment.number % 3 == 0:
            return Color("PrimaryRed")
        case _ where experiment.number % 3 == 2:
            return Color("PrimaryBlue")
        default:
            return Color("PrimaryPink")
        }
    }
    var body: some View {
        ZStack{
            Color(.systemYellow)
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20.0) {
                switch experiment.hasVideo {
                case true:
                    VideoView(experiment: experiment)
                        .cornerRadius(15)
                case false:
                    Image(experiment.image!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }

                
                Text(experiment.name)
                    .font(.title)
                    .fontWeight(.bold)
                ScrollView{
                   Text(experiment.description)
                }
            }
            .padding()
            .background(Rectangle() .foregroundColor(foregroundExperiementColor))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()
        }
    }
    }

struct ExperimentView_Previews: PreviewProvider {
    static var previews: some View {
        ExperimentView(experiment: experimentList[0])
    }
}
