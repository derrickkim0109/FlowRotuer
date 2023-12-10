//
//  TabBarItemType.swift
//  FlowRouter
//
//  Created by Derrick kim on 12/11/23.
//

import SwiftUI

enum TabBarItemType: CaseIterable {
    case category
    case favorites
    case home
    case cart
    case myPage

    var iconImage: Image {
        switch self {
        case .category:
            return Images.iconHamburgerImage
        case .favorites:
            return Images.iconStarImage
        case .home:
            return Images.iconHomeImage
        case .cart:
            return Images.iconCartFillImage
        case .myPage:
            return Images.iconPersonImage
        }
    }

    var title: String {
        switch self {
        case .category:
            return "카테고리"
        case .favorites:
            return "즐겨찾기"
        case .home:
            return "홈"
        case .cart:
            return "장바구니"
        case .myPage:
            return "내 정보"
        }
    }

    var color: Color {
        switch self {
        default:
            return Color.blue900
        }
    }
}

