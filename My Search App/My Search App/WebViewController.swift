//
//  WebViewController.swift
//  My Search App
//
//  Created by 吉原大輝 on 2020/05/10.
//  Copyright © 2020 吉原大輝. All rights reserved.
//

import UIKit
import WebKit // WKWebViewを利用するために必要

// 商品ページを参照するための画面
class WebViewController: UIViewController {

    // 商品ページのURL
    var itemUrl: String?

    // 商品ページを参照するためのWebView
    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // User–AgentをiPhoneに設定する
        webView.customUserAgent = "Mozilla/5.0 (iPhone; CPU iPhone OS 11_0_1 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A402 Safari/604.1"

        //WebViewのurlを読み込ませてWebページを表示させる
        guard let url = URL(string: itemUrl!) else{
            return
            
        }
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
