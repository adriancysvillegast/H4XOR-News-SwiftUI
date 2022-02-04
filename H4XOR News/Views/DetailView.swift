//
//  DetailView.swift
//  H4XOR News
//
//  Created by Adriancys Jesus Villegas Toro on 30/12/21.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    
    
    var body: some View {
        webView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
        
    }
}

