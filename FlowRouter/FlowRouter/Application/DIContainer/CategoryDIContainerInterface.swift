//
//  CategoryDIContainerInterface.swift
//  FlowRouter
//
//  Created by Derrick kim on 12/11/23.
//

import Foundation

protocol CategoryDIContainerInterface {
    func categoryRouter() -> CategoryRouter
    func categoryViewDependencies(categoryRouter: CategoryRouter) -> CategoryViewModel
    func categoryDetailViewDependencies(
        categoryRouter: CategoryRouter
    ) -> CategoryDetailViewModel
}
