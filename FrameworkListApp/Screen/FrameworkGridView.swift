//
//  FrameworkGridView.swift
//  FrameworkApp
//
//  Created by Bhavin  Oza on 2/18/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { frmwrk in
                    NavigationLink(destination: FrameworkDetailView(frmwrk: frmwrk, isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FrameworkTitleView(framework: frmwrk)
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
        }
        .accentColor(Color(.label))
    }
}
