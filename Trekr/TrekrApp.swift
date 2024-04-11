//
//  TrekrApp.swift
//  Trekr
//
//  Created by Umair Salam on 4/10/24.
//

import SwiftUI

@main
struct TrekrApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView {
                    ContentView(location: locations.primary)
                }
                
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
            }
                
                NavigationView {
                    WorldView()
                
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                
                NavigationView {
                    TipsView()

                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
                
            }.environmentObject(locations)
        }
    }
}
