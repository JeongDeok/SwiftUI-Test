//
//  ContentView.swift
//  swiftUI_Test
//
//  Created by 서정덕 on 2022/11/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
