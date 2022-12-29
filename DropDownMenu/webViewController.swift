//
//  webViewController.swift
//  DropDownMenu
//
//  Created by Peiyun on 2022/12/29.
//

import UIKit
import WebKit

class webViewController: UIViewController, WKNavigationDelegate {
    
    
    @IBOutlet weak var myWebView: WKWebView!
    
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    //加入變數，使網址能夠傳進WebViewController
    var linkFromViewOne:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        myWebView.navigationDelegate = self
        
        //address > URL > URLRequest :三者皆不能是optional，故linkFromViewOne:String?需解binding
        //若linkFromViewOne真的有值，則執行裡面程式碼
        if let okLink = linkFromViewOne, let okURL = URL(string: okLink){
            let request = URLRequest(url: okURL)
            myWebView.load(request)
        }
    }
    
    
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        myActivityIndicator.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myActivityIndicator.stopAnimating()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
