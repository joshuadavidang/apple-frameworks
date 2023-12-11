//
//  ContentView.swift
//  Apple
//
//  Created by Joshua David on 11/12/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView(content: {
            LazyVGrid(columns: viewModel.columns) {
                ForEach(MockData.frameworks) { framework in
                    FrameworkTitleView(framework: framework)
                        .onTapGesture {
                            viewModel.selectedFramework = framework
                        }
                }
            }
            
            .navigationTitle(" Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailsView(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        })
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
