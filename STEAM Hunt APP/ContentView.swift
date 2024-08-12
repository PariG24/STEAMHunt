//
//  ContentView.swift
//  STEAM Hunt APP
//
//  Created by Pari Gulati on 8/17/23.
//

import SwiftUI

struct ContentView: View {
    @State var selection = 2
    var body: some View {
        TabView (selection: $selection) {
            IdeasView()
                .tabItem{
                    Label("Checklist", systemImage: "checkmark.square")
                }
                .tag(1)
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
                .tag(2)
            JournalView()
                .tabItem{
                    Label("Journal", systemImage: "book")
                }
                .tag(4)
        }
    }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
