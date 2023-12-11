//
//  FrameworkDetailsView.swift
//  Apple
//
//  Created by Joshua David on 11/12/23.
//

import SwiftUI

struct FrameworkDetailsView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            
            DismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                ButtonText(title: "Learn More")
            }
            .sheet(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
                    .ignoresSafeArea()
            })
            
            Spacer()
        }
    }
}

#Preview {
    FrameworkDetailsView(framework: MockData.sampleFramework,
                         isShowingDetailView: .constant(false))
    .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
