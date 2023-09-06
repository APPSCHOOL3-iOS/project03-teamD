//
//  MyReservationRowView.swift
//  BinGongGan_User
//
//  Created by 민근의 mac on 2023/09/06.
//

import SwiftUI

struct MyReservationRowView: View {
    
    var reservate: ReservationModel
    
    var body: some View {
        
        HStack {
            VStack(alignment: .leading) {
                Text("\(reservate.placeName)")
                    .font(.body1Bold)
                    .foregroundColor(reservate.isReservation ? .white : .myPrimary)
                
                Text("예약 번호 : \(reservate.reservationNumber)")
                    .font(.captionRegular)
                    .foregroundColor(reservate.isReservation ? .white : .myPrimary)
                
                Spacer().frame(height: UIScreen.main.bounds.height * 0.01)
                
                Text("\(reservate.reservationDate) (\(reservate.reservationPersonal)명)")
                    .font(.captionRegular)
                    .foregroundColor(reservate.isReservation ? .white : .myPrimary)
                
                Spacer().frame(height: UIScreen.main.bounds.height * 0.01)
                
                Text("\(reservate.placeAddress)")
                    .font(.captionRegular)
                    .foregroundColor(reservate.isReservation ? .white : .myPrimary)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Text(reservate.isReservation ? "리뷰작성" : "예약취소")
                    .font(.captionRegular)
                    .foregroundColor(reservate.isReservation ? .myPrimary : .white)
            }
            .buttonStyle(.plain)
            .padding(8)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(reservate.isReservation ? .white : .myPrimary)
            )
        }
        .padding()
  
    }
}

struct MyReservationRowView_Previews: PreviewProvider {
    static var previews: some View {
        MyReservationRowView(reservate:  ReservationModel(placeName: "희권이네 설빙", reservationNumber: "A103120235", reservationDate: "9/7 (목) 17:00 ~ 21:00", reservationPersonal: 5, placeAddress: "서울특별시 희권구", isReservation: false))
    }
}
