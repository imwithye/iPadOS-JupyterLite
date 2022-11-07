//
//  ContentView.swift
//  iPadOS-JupyterLite
//
//  Created by Yiwei Gong on 2022/11/7.
//

import SwiftUI

struct ContentView: View {
    @State private var showWebView = false
    var body: some View {
        Button {
            showWebView.toggle()
        } label: {
            Text("AppCoda")
        }
        .sheet(isPresented: $showWebView) {
            WebView(url: URL(string: "https://www.appcoda.com")!)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
