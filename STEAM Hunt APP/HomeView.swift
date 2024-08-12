//
//  HomeView.swift
//  STEAM Hunt APP
//
//  Created by Pari Gulati on 8/17/23.
//

import SwiftUI
struct circle: ViewModifier {
    let circleColor: Color
    func body(content: Content) -> some View {
        content
            .font(.title)
            .clipShape(Circle())
            .tint(circleColor)
            .buttonStyle(.borderedProminent)
            .frame(width: 60)
            
    }
}
    
struct HomeView: View {
    var body: some View {
        NavigationStack{
            VStack{
                //Text("STEAM Hunt")
                    //.font(.largeTitle)
                    //.padding()
            }
            LazyVGrid(columns: [
                GridItem(),
                GridItem(),
                GridItem()]){
                    ForEach(experimentList.indices) { index in
                        switch index {
                        case _ where (index + 1) % 3 == 0:
                            NavigationLink(value: index) {
                                let expNum = index < 9 ? "0\(index+1)" : "\(index+1)"
                                Text(expNum)
                            }
                            .modifier(circle(circleColor: Color("PrimaryRed")))
                        case _ where (index + 1) % 3 == 2:
                            NavigationLink(value: index) {
                                let expNum = index < 9 ? "0\(index+1)" : "\(index+1)"
                                Text(expNum)
                            }
                            .modifier(circle(circleColor: Color("PrimaryBlue")))
                        default:
                            NavigationLink(value: index) {
                                let expNum = index < 9 ? "0\(index+1)" : "\(index+1)"
                                Text(expNum)
                            }
                            .modifier(circle(circleColor: Color("PrimaryPink")))
                            .navigationDestination(for: Int.self) { value in
                                ExperimentView(experiment: experimentList[value])
                            }
                        }
                    }
                    
                }
                .padding(.top, 100)
                .navigationTitle("STEAM Hunt Activities")
            Spacer()
        }
    }
}

    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }

