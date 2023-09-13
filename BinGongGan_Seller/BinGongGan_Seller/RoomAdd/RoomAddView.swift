//
//  RoomAddView.swift
//  BinGongGan_Seller
//
//  Created by 신희권 on 2023/09/11.
//

import SwiftUI
import BinGongGanCore
import Combine

struct RoomAddView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var roomStore: RoomStore
    @State private var selectedImage: [UIImage] = []
    @State private var roomName: String = ""
    @State private var roomPrice: String = ""
    @State private var roomNote: String = ""
    @State private var imageNames: [String] = []
    
    var body: some View {
        ZStack {
            Color.myBackground
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading) {
                    Group{
                        Text("방이름")
                        CustomTextField(placeholder: "방이름을 입력하세요", text: $roomName)
                    }
                    
                    Group {
                        Text("공간 대여 가격")
                        HStack(spacing: 0) {
                            Text("시간 당")
                                .padding(.trailing, 5)
                                .foregroundColor(Color.myDarkGray)
                            
                            TextField("가격을 입력하세요", text: $roomPrice)
                                .keyboardType(.decimalPad)
                                .onReceive(Just(roomPrice)) { newValue in
                                    let filtered = newValue.filter { "0123456789".contains($0) }
                                    if filtered != newValue {
                                        self.roomPrice = filtered
                                    }
                                }
                                .overlay(alignment:.trailing) {
                                    Text("￦")
                                        .padding(.trailing, 1)
                                }
                            
                        }
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
                    }
                    .padding(.top, 15)
                    //
                    //                    Section {
                    //                        Text("방 상세사진")
                    //                        PhotoSelectedView(selectedImages: $selectedImage, selectedImageNames: imageNames)
                    //                    }
                    //
                    Section{
                        Text("방 상세내용")
                        TextEditor(text: $roomNote)
                            .font(.body1Regular)
                            .frame(height: 300)
                            .cornerRadius(10)
                    }
                    
                    PrimaryButton(title: "등록 하기") {
                        roomStore.addRoom(placeId: "heeheehee", roomName: roomName, roomPrice: roomPrice, roomNote: roomNote, imageNames: imageNames)
                        dismiss()
                    }
                }
            }
            .padding(20)
        }
        .customBackbutton()
        .navigationTitle("방 추가")
    }
}

struct RoomAddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            RoomAddView()
                .environmentObject(RoomStore())
        }
    }
}
