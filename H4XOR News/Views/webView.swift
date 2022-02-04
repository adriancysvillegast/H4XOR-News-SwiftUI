//
//  webView.swift
//  H4XOR News
//
//  Created by Adriancys Jesus Villegas Toro on 30/12/21.
//

import Foundation
import WebKit
import SwiftUI


struct webView : UIViewRepresentable {
    
    let urlString : String?
    //    this methos say that i'll see a webView
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    //    this method request the url from contenView
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
