//
//  CategoryButtonView.swift
//  BinGongGan_Seller
//
//  Created by 오영석 on 2023/09/05.
//

import SwiftUI
import BinGongGanCore
struct CategoryButton: View {
    var buttonText: String
    
    var body: some View {
        Button( action: {},
                label: {
            VStack{
                Image(systemName: "filemenu.and.cursorarrow")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                
                Text(buttonText)
                    .font(.subheadline)
                    .bold()
                    .fixedSize()
            }
        })
        .buttonStyle(.plain)
        .foregroundColor(Color.myPrimary)
        .background(Color.clear)
        .padding()
    }
}


//struct CategoryButton_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryButton()
//    }
//}
