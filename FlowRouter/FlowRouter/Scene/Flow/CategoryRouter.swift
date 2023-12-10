//
//  CategoryRouter.swift
//  FlowRouter
//
//  Created by Derrick kim on 12/11/23.
//

import SwiftUI

final class CategoryRouter: ObservableObject, FlowRouter {
    let id = UUID()

    init(categoryDIContainer: CategoryDIContainerInterface) {
        self.categoryDIContainer = categoryDIContainer
    }

    @Published var navigationPath: NavigationPath = .init()
    var nextTransitionRoute: PushRoute = .categoryDetail

    private let categoryDIContainer: CategoryDIContainerInterface

    func triggerScreenTransition(route: PushRoute) {
        navigationPath.append(route)

        nextTransitionRoute = route
    }

    func nextTransitionScreen() -> some View {
        let view = nextTransitionRoute.nextView(
            categoryDIContainer: categoryDIContainer,
            router: self
        )
        return view
    }

    func dismiss() {
        navigationPath = .init()
    }
}

extension CategoryRouter {
    enum PushRoute: Hashable {
        case categoryDetail

        @ViewBuilder
        func nextView(
            categoryDIContainer: CategoryDIContainerInterface,
            router: CategoryRouter
        ) -> some View {
            switch self {
            case .categoryDetail:
                CategoryDetailView(
                    viewModel: categoryDIContainer.categoryDetailViewDependencies(
                        categoryRouter: router
                    )
                )
            }
        }
    }
}
