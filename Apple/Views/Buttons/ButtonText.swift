//
//  Button.swift
//  Apple
//
//  Created by Joshua David on 11/12/23.
//

import SwiftUI

struct ButtonText: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
