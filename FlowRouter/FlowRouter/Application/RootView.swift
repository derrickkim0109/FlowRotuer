//
//  RootView.swift
//  FlowRouter
//
//  Created by Derrick kim on 12/11/23.
//

import SwiftUI

@main
struct RootView: App {
    private let categoryDIContainer: CategoryDIContainerInterface
    
    init() {
        self.categoryDIContainer = CategoryDIContainer()
    }

    var body: some Scene {
        WindowGroup {
            AppTabBarView(categoryDIContainer: categoryDIContainer)
        }
    }
}
