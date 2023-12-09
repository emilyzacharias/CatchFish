//
//  Navigation.swift
//  Ponder
//
//  Created by Emily Zacharias on 9/12/23.
//

import SwiftUI

struct Navigation: View {
    @State var newFishCount = 0
    var body: some View {
        TabView {
            MyPond()
                .tabItem {
                    Label("Pond", systemImage: "fish")
                }
            Journal()
                .tabItem {
                    Label("Journal", systemImage: "book.closed")
                }
                .badge(newFishCount)
            Challenges()
                .tabItem {
                    Label("Challenges", systemImage: "trophy")
                }
                .badge(newFishCount)
        }
        .padding(20.0)

    }
}

#Preview {
    Navigation()
        .glassBackgroundEffect(
            in: RoundedRectangle(
                cornerRadius: 32,
                style: .continuous
            )
        )
        .frame(maxWidth: 700)
}
