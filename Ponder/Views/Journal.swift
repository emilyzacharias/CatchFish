//
//  Journal.swift
//  Ponder
//
//  Created by Emily Zacharias on 9/12/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

private(set) var myFish: [Fish] = [Fish(), Fish()]

struct Journal: View {
    
    @State var fishList: [Fish] = myFish
    
    let columns = [GridItem(.flexible(), spacing: 10), GridItem(.flexible(), spacing: 10), GridItem(.flexible(), spacing: 10), GridItem(.flexible(), spacing: 10)]
    
    public func addToMyFish(fish: Fish) {
        myFish.append(fish)
        print(myFish[myFish.count - 1].name)
    }
    
    public func getMyFish(id: UUID) -> Fish {
        for fish in myFish {
            if (fish.id == id) {
                return fish
            }
        }
        return Fish()
    }
    
    public func getFishName(fish: Fish) -> String{
        return fish.name
    }
    
    public func setFishName(id: UUID, name: String) {
        for fish in myFish {
            if (fish.id == id) {
                fish.name = name
                printMyFish()
            }
        }
    }
    
    public func printMyFish() {
        for fish in myFish {
            print(fish.name)
        }
    }
    
    var body: some View {
        ScrollView() {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(myFish, id: \.id){ fish in
                    FishView(fish: fish)
                }
            }
        }
    }
}

#Preview {
    Journal()
}
