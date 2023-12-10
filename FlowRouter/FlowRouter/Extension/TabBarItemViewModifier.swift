//
//  TabBarItemViewModifier.swift
//  FlowRouter
//
//  Created by Derrick kim on 12/11/23.
//

import SwiftUI

struct TabBarItemViewModifier: ViewModifier {
    let tab: TabBarItemType
    @Binding var selection: TabBarItemType

    func body(content: Content) -> some View {
        content
            .opacity(selection == tab ? 1.0 : 0.0)
            .preference(
                key: TabBarItemPreferenceKey.self,
                value: [tab]
            )
    }
}
