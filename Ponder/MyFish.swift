//
//  MyFish.swift
//  Ponder
//
//  Created by Emily Zacharias on 9/12/23.
//

import Foundation
import SwiftUI

struct FishView: View {
   // var fishID: UUID
    var fish: Fish = Fish()
    @Environment(\.supportsMultipleWindows) private var supportsMultipleWindows
        @Environment(\.openWindow) private var openWindow

    var body: some View {
        VStack {
            Image(systemName: "fish.fill")
                .resizable()
                .frame(width: 75.0, height: 80.0)
                .imageScale(.large)
                .foregroundStyle(fish.rarity != 2 ? LinearGradient(gradient: Gradient(colors: [fish.color]), startPoint: .leading, endPoint: .trailing) : LinearGradient(gradient: Gradient(colors: [.pink, .orange, .yellow, .green, .cyan]), startPoint: .leading, endPoint: .trailing))
            Text(fish.name)
                .font(.title)
            Text(fish.type)
                .font(.headline)
            Text(String(fish.length) + " meters")
                .font(.headline)
            Button(action: {
                openWindow(id: "detailed-fish-viewer", value: fish.id)
                
            }) {
                Text("Learn more")
                    .padding()
            }
            
        }
        .frame(width: 190, height: 200.0)
        .padding(20)
        .glassBackgroundEffect(
            in: RoundedRectangle(
                cornerRadius: 32,
                style: .continuous
            )
        )
    }
}

struct DetailedFishView: View {
    var fish: Fish = Fish()
    @State var fishname = "name"
    
    var body: some View {
        
        VStack {
            Image(systemName: "fish.fill")
                .resizable()
                .frame(width: 75.0, height: 80.0)
                .imageScale(.large)
                .foregroundStyle(fish.rarity != 2 ? LinearGradient(gradient: Gradient(colors: [fish.color]), startPoint: .leading, endPoint: .trailing) : LinearGradient(gradient: Gradient(colors: [.pink, .orange, .yellow, .green, .cyan]), startPoint: .leading, endPoint: .trailing))
            TextField("Fish name", text: $fishname)
                .onSubmit {
                    Journal().setFishName(id: fish.id, name: fishname)
                }
                .font(.title)
                .multilineTextAlignment(.center)
            Text(fish.type)
                .font(.headline)
            Text(String(fish.length) + " meters")
                .font(.headline)
            Text("\n" + fish.occupation)
                .font(.subheadline)
            Text("\n\"" + fish.quote + "\"")
                .font(.subheadline)
                .fixedSize(horizontal: false, vertical: true)
        }
        .frame(width: 270, height: 300)
        .padding(20)
        .glassBackgroundEffect(
            in: RoundedRectangle(
                cornerRadius: 32,
                style: .continuous
            )
        )
    }
}

#Preview {
    DetailedFishView(fish:  Fish())
}
