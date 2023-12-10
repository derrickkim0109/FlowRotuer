//
//  CategoryView.swift
//  FlowRouter
//
//  Created by Derrick kim on 12/11/23.
//

import SwiftUI

struct CategoryView: View {
    @ObservedObject var viewModel: CategoryViewModel
    
    var body: some View {
        Text("CategoryView")
            .onTapGesture {
                viewModel
            }
    }
}
