//
//  TabBarContainerView.swift
//  FlowRouter
//
//  Created by Derrick kim on 12/11/23.
//

import SwiftUI

struct TabBarContainerView<Content: View>: View {
    let content: Content
    @Binding var selection: TabBarItemType
    @State var showToast: Bool = false

    @State private var allTabItemType: [TabBarItemType] = TabBarItemType.allCases

    init(
        selection: Binding<TabBarItemType>,
        @ViewBuilder content: () -> Content
    ) {
        self._selection = selection
        self.content = content()
    }

    var body: some View {
        ZStack(alignment: .bottom) {
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay {
                    VStack {
                        Text("개발예정")
                    }
                }

            VStack(spacing: 0) {
                Divider()
                    .background(.gray)

                CustomTabBarView(
                    localSelection: selection,
                    selection: $selection,
                    showToast: $showToast,
                    allTabItemType: allTabItemType
                )
            }
        }
        .onPreferenceChange(TabBarItemPreferenceKey.self) { value in
            allTabItemType = value
        }
    }
}

