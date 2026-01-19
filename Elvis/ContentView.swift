//
//  ContentView.swift
//  Elvis
//
//  Created by Aidan McGinty on 1/19/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.black)
                .frame(width: 300, height: 300)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            HStack {
                Button ("Peace") {
                    imageName = "peacesign"
                    message = "Peace"
                }
                Button ("Love") {
                    imageName = "heart"
                    message = "Love"
                }
                Button ("Understanding") {
                    imageName = "lightbulb"
                    message = "Understanding"
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
