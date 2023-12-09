//
//  MyPond.swift
//  Ponder
//
//  Created by Emily Zacharias on 9/12/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct MyPond: View {
    @State private var isShowingFish = false
    @State var newFish = Fish()
    
    var body: some View {
        ZStack {
                VStack {
                    Button(action: {
                        isShowingFish.toggle()
                        if (isShowingFish == true) {
                            newFish = Fish()
                           // myFish.append(newFish)
                            Journal().addToMyFish(fish: newFish)
                            // print(newFish.name)
                        }
                    }) {
                        Text("Click here to fish")
                            .padding()
                    }
                    Spacer()
                    Ellipse()
                        .fill(.blue)
                        .frame(width: 600, height: 100)
                }
            if (isShowingFish) {
                HStack {
                    DetailedFishView(fish: newFish)
                        .zIndex(1)
                    
                    Button(action: {
                        isShowingFish.toggle()
                    }) {
                        Image(systemName: "x.circle")
                    }
                    .frame(width: 28, height: 28)
                    .padding(10)
                    .zIndex(2)
                    
                }
            }
        }
    }
}

#Preview {
    MyPond()
}
