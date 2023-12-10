//
//  CustomTabBarView.swift
//  FlowRouter
//
//  Created by Derrick kim on 12/11/23.
//

import SwiftUI

struct CustomTabBarView: View {
    @State var localSelection: TabBarItemType
    @Binding var selection: TabBarItemType
    @Binding var showToast: Bool

    let allTabItemType: [TabBarItemType]

    var body: some View {
        HStack {
            ForEach(allTabItemType, id:\.self) { tab in
                tabBarView(tab: tab)
                    .onTapGesture {
                        switchToTab(tab: tab)
                    }
            }
        }
        .padding(2)
        .background(
            Color.white.ignoresSafeArea(edges: .bottom)
        )
        .onChange(of: selection, { oldValue, newValue in
            localSelection = newValue
        })
    }
}

extension CustomTabBarView {
    private func tabBarView(tab: TabBarItemType) -> some View {
        VStack(alignment: .center) {
            tab.iconImage
                .renderingMode(.template)
                .frame(width: 24,height: 24)

            Text(tab.title)
                .font(.callout)
        }
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .cornerRadius(10)
    }

    private func switchToTab(tab: TabBarItemType) {
        selection = tab

        if tab != .category {
            showToast = true
        }
    }
}

