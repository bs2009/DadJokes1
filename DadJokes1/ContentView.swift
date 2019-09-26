//
//  ContentView.swift
//  DadJokes1
//
//  Created by William Song on 9/26/19.
//  Copyright © 2019 awa. All rights reserved.
//

import SwiftUI

struct Joke {
    var setup: String
    var punchline: String
    var rating: String
}
struct ContentView: View {
    
    let jokes = [
        Joke(setup: "What's a cow's favourite place?", punchline: "A mooseum.", rating: "Silence"),
        Joke(setup: "What's brown and stick?", punchline: "A stick.", rating: "Sigh"),
        Joke(setup: "What's orange and sounds like a parrot?", punchline: "A carrot.", rating: "Smirk")
    
]
    var body: some View {
        NavigationView {
            List {
                ForEach(jokes, id: \.setup) { joke in
                    NavigationLink(destination: Text(joke.punchline)) {
                        EmojiView(for: joke.rating)
                        Text(joke.setup)
                    }
                }
            }.navigationBarTitle("All Groan UP")
       }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
