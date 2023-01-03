//
//  DetailView.swift
//  Leak New
//
//  Created by Vũ Chiến Thắng on 03/01/2023.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
