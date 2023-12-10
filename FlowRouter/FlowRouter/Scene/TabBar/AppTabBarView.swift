//
//  AppTabBarView.swift
//  FlowRouter
//
//  Created by Derrick kim on 12/11/23.
//

import SwiftUI

struct AppTabBarView: View {
    @State private var tabSelection: TabBarItemType = .category
    private var categoryDIContainer: CategoryDIContainerInterface
    @StateObject private var router: CategoryRouter

    init(categoryDIContainer: CategoryDIContainerInterface) {
        self.categoryDIContainer = categoryDIContainer

        let router = categoryDIContainer.categoryRouter()
        self._router = .init(wrappedValue: router)
    }

    var body: some View {
        NavigationStack(path: $router.navigationPath) {
            TabBarContainerView(selection: $tabSelection) {
                CategoryView(
                    viewModel: categoryDIContainer.categoryViewDependencies(
                        categoryRouter: categoryDIContainer.categoryRouter()
                    )
                )
                .tabBarItem(tab: .category, selection: $tabSelection)

                Color.clear
                    .tabBarItem(tab: .favorites, selection: $tabSelection)

                Color.clear
                    .tabBarItem(tab: .home, selection: $tabSelection)

                Color.clear
                    .tabBarItem(tab: .cart, selection: $tabSelection)

                Color.clear
                    .tabBarItem(tab: .myPage, selection: $tabSelection)
            }
        }
    }
}

