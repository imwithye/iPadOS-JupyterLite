import SwiftUI
import WebKit
 
struct WebView: UIViewRepresentable {
 
//     var url: URL
 
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
 
    func updateUIView(_ webView: WKWebView, context: Context) {
        // For net
//         let request = URLRequest(url: url)
//         webView.load(request)
        
        // For local
        let fileURL =  Bundle.main.url(forResource: "index", withExtension: "html" )
        webView.loadFileURL(fileURL!, allowingReadAccessTo:Bundle.main.bundleURL)
    }
}
