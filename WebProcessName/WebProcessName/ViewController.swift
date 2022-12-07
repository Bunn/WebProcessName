//
//  ViewController.swift
//  WebViewNameTest
//
//  Created by Fernando Bunn on 07/12/2022.
//

import Cocoa
import WebKit

class ViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let configuration = WKWebViewConfiguration()
        configuration.websiteDataStore = WKWebsiteDataStore.nonPersistent()
        
        let web1 = createWebViewWithURL(URL(string: "https://apple.com")!, configuration: configuration)
        view.addSubview(web1) //Keep them in memory
        
        let web2 = createWebViewWithURL(URL(string: "https://google.com")!)
        view.addSubview(web2) //Keep them in memory
        
        let web3 = createWebViewWithURL(URL(string: "https://microsoft.com")!)
        view.addSubview(web3) //Keep them in memory
        
        
    }
    
    func createWebViewWithURL(_ url: URL,
                              configuration: WKWebViewConfiguration = WKWebViewConfiguration()) -> WKWebView {
        let request = URLRequest(url: url)
        let webView = WKWebView(frame: CGRect(x: 0, y: 0, width: 500, height: 500), configuration: configuration)
        webView.load(request)
        webView.autoresizingMask = [.width, .height]
        return webView
    }

}

