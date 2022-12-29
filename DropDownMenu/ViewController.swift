//
//  ViewController.swift
//  DropDownMenu
//
//  Created by Peiyun on 2022/12/28.
//

import UIKit

class ViewController: UIViewController {
    
    //遊戲
    @IBOutlet var options: [UIButton]!
 
    //game的按鈕
    @IBAction func startSelect(_ sender: UIButton) {
        for option in options{
            //加入動畫
            UIView.animate(withDuration: 0.5) {
                //！：相反的意思 隱藏<->顯現
                option.isHidden = !option.isHidden
                self.view.layoutIfNeeded()
            }
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //因options是個array，要使用迴圈讀取每個按鈕，讓圖片一開始是關起來的
        for option in options{
            option.isHidden = true
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.identifier{
        case "cell1": //Zelda
                if let webView = segue.destination as? webViewController{
                    webView.linkFromViewOne = "https://www.zelda.com/"
                }

        case "cell2": //Mario

                if let webView = segue.destination as? webViewController{
                    webView.linkFromViewOne = "https://www.nintendo.com/store/products/super-mario-3d-world-plus-bowsers-fury-switch/"
                }

        case "cell3": //Clashroyale

                if let webView = segue.destination as? webViewController{
                    webView.linkFromViewOne = "https://clashroyale.com/"
                }

        case "cell4": //LineageM

                if let webView = segue.destination as? webViewController{
                    webView.linkFromViewOne = "https://tw.hicdn.beanfun.com/beanfun/promo/LineageM/E20221123/index.html"
                }

        default:
            break
        
        }
       
    }


}

