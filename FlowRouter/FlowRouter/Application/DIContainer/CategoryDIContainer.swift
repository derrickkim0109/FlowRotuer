//
//  CategoryDIContainer.swift
//  FlowRouter
//
//  Created by Derrick kim on 12/11/23.
//

import Foundation

final class CategoryDIContainer: CategoryDIContainerInterface {
    func categoryRouter() -> CategoryRouter {
        return CategoryRouter(categoryDIContainer: self)
    }
    
    func categoryViewDependencies(categoryRouter: CategoryRouter) -> CategoryViewModel {
        let viewModel = CategoryViewModel()
        return viewModel
    }
    
    func categoryDetailViewDependencies(
        categoryRouter: CategoryRouter
    ) -> CategoryDetailViewModel {
        let viewModel = CategoryDetailViewModelWithRouter(
            router: categoryRouter
        )

        return viewModel
    }
}
