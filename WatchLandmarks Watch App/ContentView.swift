//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by 서정덕 on 2022/11/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color.blue
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
