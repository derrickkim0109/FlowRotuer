//
//  View.swift
//  FlowRouter
//
//  Created by Derrick kim on 12/11/23.
//

import SwiftUI

extension View {
    func tabBarItem(
        tab: TabBarItemType,
        selection: Binding<TabBarItemType>
    ) -> some View {
        modifier(
            TabBarItemViewModifier(
                tab: tab,
                selection: selection
            )
        )
    }
}
