//
//  WebView.swift
//  Leak New
//
//  Created by Vũ Chiến Thắng on 03/01/2023.
//

import WebKit
import SwiftUI


struct WebView: UIViewRepresentable {

    let urlString: String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
    
}
