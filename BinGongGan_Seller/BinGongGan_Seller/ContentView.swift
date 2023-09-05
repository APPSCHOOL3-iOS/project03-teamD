//
//  ContentView.swift
//  BinGongGan_Seller
//
//  Created by 최하늘 on 2023/09/05.
//

import SwiftUI
import BinGongGanCore

struct ContentView: View {
    
    var binCore: BinGongGanCore = BinGongGanCore()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, 셀러world!")
            
            Text("\(binCore.text)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
