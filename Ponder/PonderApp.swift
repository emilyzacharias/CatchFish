//
//  PonderApp.swift
//  Ponder
//
//  Created by Emily Zacharias on 9/6/23.
//

import SwiftUI

@main
struct PonderApp: App {
    // The immersion styles for different modules.
    @State private var orbitImmersionStyle: ImmersionStyle = .mixed
    @State private var solarImmersionStyle: ImmersionStyle = .full
    @State private var UIApplicationSupportsMultipleScenes = true
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        WindowGroup("Fish", id: "detailed-fish-viewer", for: Fish.ID.self) { $fishID in
            DetailedFishView(fish: Journal().getMyFish(id: fishID ?? Fish().id))
        }
        
        .windowStyle(.plain)
    }
}
