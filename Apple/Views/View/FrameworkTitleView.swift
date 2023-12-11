//
//  Icon.swift
//  Apple
//
//  Created by Joshua David on 11/12/23.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 60, height: 60)
                .padding(.bottom, 10)
            
            Text(framework.name)
                .font(.body)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
}
