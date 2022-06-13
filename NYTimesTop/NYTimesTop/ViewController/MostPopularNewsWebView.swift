//
//  MostPopularNewsWebView.swift
//  NYTimesTop
//
//  Created by Jeril V Raj on 13/06/22.
//

import Foundation
import UIKit
import WebKit
import Alamofire
import MessageUI


class MostPopularNewsWebView: BaseVC {
    
    var newsUrl: String?
    
    @IBOutlet var newsWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        navigationItem.title = StringConstants.NavTitle.navigationTitle
        newsWebView = WKWebView(frame: view.frame)
        newsWebView.translatesAutoresizingMaskIntoConstraints = false
        newsWebView.isUserInteractionEnabled = true
        newsWebView.contentMode = .scaleAspectFit
        self.view.addSubview(self.newsWebView)
        self.newsWebView.navigationDelegate = self
        let completeUrl = newsUrl
        let urlRequest = URLRequest(url: URL(string: completeUrl!)!)
        setupWebView(urlRequest)
        showLoader()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        dismissLoader()
    }
    
    private func setupWebView(_ urlRequest: URLRequest) {
        newsWebView.load(urlRequest)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


extension MostPopularNewsWebView: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        if NetworkReachabilityManager()?.isReachable == true {
            showLoader()
        }
    }
    
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation, withError error: Error) {
        dismissLoader()
        self.navigationController?.popViewController(animated: true)
        print("didFailProvisionalNavigation: \(navigation), error: \(error)")
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("finisehd load")
        dismissLoader()
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("finished load fail")
        dismissLoader()
    }
}
