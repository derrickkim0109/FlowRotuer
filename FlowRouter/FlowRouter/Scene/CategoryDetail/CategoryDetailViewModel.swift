//
//  CategoryDetailViewModel.swift
//  FlowRouter
//
//  Created by Derrick kim on 12/11/23.
//

import Foundation

final class CategoryDetailViewModelWithRouter: CategoryDetailViewModel {
    private var router: CategoryRouter

    init(router: CategoryRouter) {
        self.router = router
        super.init()
    }
}

class CategoryDetailViewModel: ObservableObject {
    
}
