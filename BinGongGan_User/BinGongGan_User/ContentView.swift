//
//  ContentView.swift
//  BinGongGan_User
//
//  Created by 최하늘 on 2023/09/05.
//

import SwiftUI
import BinGongGanCore

struct ContentView: View {
    var binGongGanCore: BinGongGanCore = BinGongGanCore()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, 사용자world!")
            
            Text("\(binGongGanCore.text)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
