//
//  ContentView.swift
//  Ponder
//
//  Created by Emily Zacharias on 9/6/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
    @State private var isShowingFish = false
    var body: some View {
        Navigation()
        // .padding()
    }
}

#Preview(windowStyle: .automatic) {
        ContentView()
        .glassBackgroundEffect(
            in: RoundedRectangle(
                cornerRadius: 32,
                style: .continuous
            )
        )
        
}
