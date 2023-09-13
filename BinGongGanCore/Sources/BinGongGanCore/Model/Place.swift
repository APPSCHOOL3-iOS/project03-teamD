//
//  Place.swift
//  
//
//  Created by 방유빈 on 2023/09/11.
//

import Foundation

public struct Place:Identifiable, Codable {
    public var sellerId: String //판매자 id
    public var placeName: String //이름
    public var placeCategory: PlaceCategory //카테고리 -
    public var placeImageStringList: [String] // 이미지 링크 -
    public var placeImageString: String {
        print("지금 여길 확인하고 있어요 \(placeImageStringList)")
        if !placeImageStringList.isEmpty {
            return placeImageStringList[0]
        } else {
            return "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNrDzAAsGUNWG4_XHOoiO0r3maZPFRQ4YqylZ40DT4lSLBflDVbD_w6IIxEFIslGm9KW8&usqp=CAU"
        }
    }
    public var note: [String] //공간 내용 -
    public var placeInfomationList: [String] //공간 정보
    public var address: Address //주소
  
    public var id: String {
        return sellerId
    }
  
    public init(sellerId: String,placeName: String, placeCategory: PlaceCategory, placeImageStringList: [String], note: [String], placeInfomationList: [String], address: Address) {
        self.sellerId = sellerId
        self.placeName = placeName
        self.placeCategory = placeCategory
        self.placeImageStringList = placeImageStringList
        self.note = note
        self.placeInfomationList = placeInfomationList
        self.address = address
    }
    
    public init() {
           self.sellerId = ""
             self.placeName = ""
             self.placeCategory = .share
             self.placeImageStringList = []
             self.note = []
             self.placeInfomationList = []
             self.address = Address()
       }
}

public enum PlaceCategory: String, CaseIterable, Identifiable, Codable {
    case share
    case band
    case studio
    case kitchen
    public var id: Self { self }
    
    public var placeCategoryName: String {
        switch self {
        case .share:
            return "쉐어오피스"
        case .band:
            return "밴드룸"
        case .studio:
            return "스튜디오"
        case .kitchen:
            return "키친룸"
        }
    }
    
    public static func fromRawString(_ rawString: String) -> PlaceCategory {
           switch rawString {
           case "쉐어오피스":
               return .share
           case "밴드룸":
               return .band
           case "스튜디오":
               return .studio
           case "키친룸":
               return .kitchen
           default:
               return .share
           }
       }
}
