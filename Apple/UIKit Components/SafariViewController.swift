//
//  SafariViewController.swift
//  Apple
//
//  Created by Joshua David on 11/12/23.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->
         SFSafariViewController {
         SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context:
    UIViewControllerRepresentableContext<SafariView>) {}
}
