//
//  Fish.swift
//  Ponder
//
//  Created by Emily Zacharias on 9/12/23.
//

import Foundation
import RealityKit
import RealityKitContent
import SwiftUI
import UIKit

class Fish: Identifiable{
    var id = UUID()
    @Published var name: String = fishNameGenerated.randomElement()!
    @Published var type: String = fishType.randomElement()!
    @Published var color: Color = fishColor.randomElement()!
    @Published var length: Int = Int.random(in: 1..<10)
    @Published var rarity: Int = Int.random(in: 1..<20)
    @Published var occupation: String = fishOccupation.randomElement()!
    @Published var quote: String = fishQuote.randomElement()!
}

let fishColor: [Color] = [.blue, .yellow, .red, .pink, .orange, .green, .purple, .white, .cyan, .indigo, .mint]

let fishType = ["Goldfish", "Beta", "Carp"]

let fishLength = [2...5]

let fishNameGenerated = ["Sally", "Long John Silver", "Fishion Pro", "Mr Fish", "Elvis Fishley", "Jaws", "Sticks", "Flipper", "Cheeto", "Crab Rangoon", "Bubbles", "Dillon", "Sharkbait", "Chum Bucket", "Steve Jobs", "Baxter", "Gilbert", "Fintastic", "Captain Nemo", "Finn Deisel", "Sushi", "Stew", "California Roll", "Codzilla", "Salmonella", "Gill Clinton", "Marco", "Polo", "Bepondce", "President Chomp", "Jim"]

let grad = LinearGradient(gradient: Gradient(colors: [.pink, .orange, .yellow, .green, .cyan]), startPoint: .top, endPoint: .bottom)

let fishOccupation = ["Doctor", "Firefighter", "Archaeologist", "App Developer", "Magician", "Pyromancer", "Bard", "Unemployed"]

let fishQuote = ["In the depths of the ocean, we find tranquility in silence.", 
                 "We may swim in different schools, but we all share the same sea.",
                 "Life's currents may be unpredictable, but we must keep swimming forward.",
                 "To truly understand the world, you must explore it from every angle, just like a fish in a coral reef.",
                 "Embrace change like the tides, for it brings new opportunities.",
                 "The key to happiness is to savor each moment, just as we savor the taste of plankton.",
                 "Sometimes, the smallest ripples can create the biggest waves", 
                 "We may be fish, but we too have stories that ripple through time.", 
                 "In the dance of life, we are all part of a grand, watery ballet.",
                 "When life gives you seaweed, make a garden.",
                 "What did the fish say when it hit the wall? Dam.",
                 "A fish's wisdom lies in knowing when to swim against the current and when to go with the flow.",
                 "Our scales may glisten with different colors, but beneath the surface, we all share the same iridescence.",
                 "The ocean is our canvas, and we paint our stories with the strokes of our fins.", 
                 "Just as a pearl emerges from an oyster's struggle, our strength is born from challenges in the deep.",
                 "Life is a school, and the sea is our classroom; every wave carries a lesson.",
                 "Love is like the ocean's tide; it may ebb and flow, but it's always there.",
                 "A wise fish knows that every shell hides a treasure, even if it appears empty.",
                 "The beauty of the coral reef lies not only in its colors but in the diversity of its inhabitants.",
                 "Our world may seem vast, but it's a small pond when compared to the universe beyond.",
                 "Even in the darkest depths, there is a glimmer of hope, just as a lanternfish lights the way.",
                 "Why did the fish blush? Because it saw the ocean's bottom!", 
                 "What do you call a fish with no eyes? Fsh.",
                 "How do fish always know how much they weigh? Because they have their own scales!", 
                 "What do you get when you cross a fish with an elephant? Swimming trunks!",
                 "What's a fish's favorite instrument? The bass guitar.",
                 "Why don't fish do well in school? Because they're always swimming below \"sea\" level.",
                 "What do you call a fish who practices medicine? Sturgeon.", 
                 "What do you call a fish that wears a crown? King Neptune.",
                 "How do you communicate with a fish? Drop it a line!", 
                 "Why did the fisherman put his money in the blender? He wanted to make liquid assets!",
                 "Life is a current of opportunities; don't be afraid to swim against the tide.",
                 "In the sea of existence, the best moments are the ones when you're hooked on happiness.",
                 "Just as the ocean holds secrets in its depths, so too do we carry untold stories within.",
                 "A fish's heart knows no borders; our love flows through the entire ocean.",
                 "In the symphony of the sea, every species plays a unique and essential note.",
                 "To truly find yourself, dive deep into the waters of self-discovery.",
                 "Life's challenges are like whirlpools; they may spin you around, but you can always swim out.",
                 "The sea teaches patience, for even the mightiest waves eventually return to calm waters.",
                 "When you feel lost in life, remember that even a compass needs the North Star.",
                 "Happiness is a shoal where friends swim together.",
                 "Life's a beach, and I'm just swimming in it.", //best quote
                 "This place is a real dive!",
                 "There are plenty of fish in the pond.",
                 "I'm just fishing for a good time.",
                 "I'm feeling a bit under the weather, but over the water.",
                 "Something smells fishy around here.",
                 "Just keep pond-ering, you'll figure it out.",
                 "Life's too short to be koi.",
                 "I'm a reel catch, don't you think?",
                 "I'm so good at hide and seek that even the seaweed can't find me!",
                 "I asked the clam for advice, but it just gave me a little pearl of wisdom.",
                 "I'm on a seafood diet. I see food, and I eat it!",
                 "I'm so famous in the fish world that they call me the Finfluencer!",
                 "I'm writing a book about fish, and I'm calling it 'The Codfather'!",
                 "I tried to play hide and seek with a crab, but it was always 'shell-tered'!",
                 "Man, I love swimming"
                ]
