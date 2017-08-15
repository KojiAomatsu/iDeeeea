//
//  ViewController.swift
//  iDeeeeA
//
//  Created by 青松洸司 on 2016/03/29.
//  Copyright © 2016年 青松洸司. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pageMenu : CAPSPageMenu?
    
    var myLabel1 : UILabel?
    var myLabel12 : UILabel?
    var myLabel2 : UILabel?
    var myLabel22 : UILabel?
    var myLabel3 : UILabel?
    var myLabel32 : UILabel?
    
    let array1 = ["服","眼鏡","家","食べ物","アプリ","アイディア","スマホ","夢","現在","過去","未来","怪獣","ヒーロー","ゲーム","パソコン","敵","母","父","海賊","学校","先生","山","海","川","砂漠","太陽","魚","犬","猫","鳥","子ども","大人","お金","男","女","理想","手","足","腰","本","一瞬","永遠","冒険","進化","写真","動画","友達","つぶやき","起業","車","電車","バス","宗教","解説","民族","恋愛",
        "作る","食べる","飲む","投げる","蹴る","生きる","育てる","考える","動く","見る","聞く","感じる","倒す","寝る","起きる","笑う","歌う","立つ","座る","乗る","飛ぶ","沈む","読む",
        "大きい","小さい","きれい","汚い","面白い","つらい","はやい","遅い","明るい","暗い","からい","甘い","苦い","怖い","優しい"
    ]
    let array2 = ["服","眼鏡","家","食べ物","アプリ","アイディア","スマホ","夢","現在","過去","未来","怪獣","ヒーロー","ゲーム","パソコン","敵","母","父","海賊","学校","先生","山","海","川","砂漠","太陽","雲","魚","犬","猫","鳥","子ども","大人","お金","男","女","理想","手","足","腰","本","一瞬","永遠","冒険","進化","写真","動画","友達","つぶやき","起業","車","電車","バス","宗教","解説","民族","恋愛",
        "作る","食べる","飲む","投げる","蹴る","生きる","育てる","考える","動く","見る","聞く","感じる","倒す","寝る","起きる","笑う","歌う","立つ","座る","乗る","飛ぶ","沈む","読む",
        "大きい","小さい","きれい","汚い","面白い","つらい","はやい","遅い","明るい","暗い","からい","甘い","苦い","怖い","優しい",
    ]
    let array3 = ["初めての","三回目の","面白い","最悪の","最高の","理想の","最近の","夏の","冬の"]
    
    let array4 = ["恋","武勇伝","買い物","喧嘩","キス","旅","世間話","プロポーズ","友達","出逢い","先生","あるある"]
    
    override var shouldAutorotate : Bool {
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Array to keep track of controllers in page menu
        var controllerArray : [UIViewController] = []
        // Create variables for all view controllers you want to put in the
        // page menu, initialize them, and add each to the controller array.
        // (Can be any UIViewController subclass)
        // Make sure the title property of all view controllers is set
        // Example:
        let controller1 : UIViewController = UIViewController()
        controller1.title = "シンプル"
        controller1.view.backgroundColor = UIColor(red: 0.1, green: 0.4, blue: 0.1, alpha: 0.2)
        controllerArray.append(controller1)
        
        let controller2 : UIViewController = UIViewController()
        controller2.title = "複雑"
        controller2.view.backgroundColor = UIColor(red: 0.4, green: 0.1, blue: 0.1, alpha: 0.2)
        controllerArray.append(controller2)
        
        let controller3 : UIViewController = UIViewController()
        controller3.title = "ネタ作り"
        controller3.view.backgroundColor = UIColor(red: 0.1, green: 0.1, blue: 0.4, alpha: 0.2)
        controllerArray.append(controller3)
        
        // Customize page menu to your liking (optional) or use default settings by sending nil for 'options' in the init
        // Example:
        let parameters: [CAPSPageMenuOption] = [
            .menuItemSeparatorWidth(4.3),
            .useMenuLikeSegmentedControl(true),
            .menuItemSeparatorPercentageHeight(0.1),
            .scrollMenuBackgroundColor(UIColor(red: 0, green: 0, blue: 0, alpha: 0.9)),
            .menuHeight(70)
        ]
        
        
        
        // Initialize page menu with controller array, frame, and optional parameters
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0.0, y: 0.0, width: self.view.frame.width, height: self.view.frame.height), pageMenuOptions: parameters)
        
        // Lastly add page menu as subview of base view controller view
        // or use pageMenu controller in you view hierachy as desired
        self.view.addSubview(pageMenu!.view)
        
        
        
        
        
        let myImageView1 = UIImageView(frame: CGRect(x: 0,y: 0,width: 300,height: 150))
        // 表示する画像を設定する.
        let myImage = UIImage(named: "f00299.png")
        // 画像をUIImageViewに設定する.
        myImageView1.image = myImage
        
        // 画像の表示する座標を指定する.
        myImageView1.layer.position = CGPoint(x: self.view.bounds.width/2, y: 100.0)
        
        // UIImageViewをViewに追加する.
        
        controller1.view.addSubview(myImageView1)
        
        let myItalicLabel1: UILabel = UILabel()
        myItalicLabel1.font = UIFont.italicSystemFont(ofSize: 30)
        myItalicLabel1.text = "&"
        myItalicLabel1.frame = CGRect(x: 0, y: 180, width: self.view.bounds.width, height: 30)
        myItalicLabel1.textAlignment = NSTextAlignment.center
        controller1.view.addSubview(myItalicLabel1)
        

        let myImageView2 = UIImageView(frame: CGRect(x: 0,y: 0,width: 300,height: 150))
        
        // 画像をUIImageViewに設定する.
        myImageView2.image = myImage
        
        // 画像の表示する座標を指定する.
        myImageView2.layer.position = CGPoint(x: self.view.bounds.width/2, y: 290.0)
        
        // UIImageViewをViewに追加する.
        controller1.view.addSubview(myImageView2)
        
        
        
        
        let myImageView21 = UIImageView(frame: CGRect(x: 0,y: 0,width: 300,height: 150))
        
        // 表示する画像を設定する.
        myImageView21.image = myImage
        
        // 画像の表示する座標を指定する.
        myImageView21.layer.position = CGPoint(x: self.view.bounds.width/2, y: 100.0)
        
        // UIImageViewをViewに追加する.
        
        controller2.view.addSubview(myImageView21)
        
        let myItalicLabel21: UILabel = UILabel()
        myItalicLabel21.font = UIFont.italicSystemFont(ofSize: 30)
        myItalicLabel21.text = "&"
        myItalicLabel21.frame = CGRect(x: 0, y: 180, width: self.view.bounds.width, height: 30)
        myItalicLabel21.textAlignment = NSTextAlignment.center
        controller2.view.addSubview(myItalicLabel21)
        
        let myImageView22 = UIImageView(frame: CGRect(x: 0,y: 0,width: 300,height: 150))
        
        // 画像をUIImageViewに設定する.
        myImageView22.image = myImage
        
        // 画像の表示する座標を指定する.
        myImageView22.layer.position = CGPoint(x: self.view.bounds.width/2, y: 290.0)
        
        // UIImageViewをViewに追加する.
        controller2.view.addSubview(myImageView22)
        
        
        
        
        let myImageView31 = UIImageView(frame: CGRect(x: 0,y: 0,width: 300,height: 150))
        // 表示する画像を設定する.
        // 画像をUIImageViewに設定する.
        myImageView31.image = myImage
        
        // 画像の表示する座標を指定する.
        myImageView31.layer.position = CGPoint(x: self.view.bounds.width/2, y: 100.0)
        
        // UIImageViewをViewに追加する.
        
        controller3.view.addSubview(myImageView31)
        
        let myItalicLabel31: UILabel = UILabel()
        myItalicLabel31.font = UIFont.italicSystemFont(ofSize: 30)
        myItalicLabel31.text = "&"
        myItalicLabel31.frame = CGRect(x: 0, y: 180, width: self.view.bounds.width, height: 30)
        myItalicLabel31.textAlignment = NSTextAlignment.center
        controller3.view.addSubview(myItalicLabel31)
        
        let myImageView32 = UIImageView(frame: CGRect(x: 0,y: 0,width: 300,height: 150))
        
        // 画像をUIImageViewに設定する.
        myImageView32.image = myImage
        
        // 画像の表示する座標を指定する.
        myImageView32.layer.position = CGPoint(x: self.view.bounds.width/2, y: 290.0)
        
        // UIImageViewをViewに追加する.
        controller3.view.addSubview(myImageView32)
        
        
        //ボタン
        let image = UIImage(named: "btn045_10.png")
        let imageButton1   = UIButton()
        imageButton1.tag = 1
        imageButton1.frame = CGRect(x: 0, y: 0, width: 128, height: 128)
        imageButton1.layer.position = CGPoint(x: self.view.frame.width/2, y:450)
        imageButton1.setImage(image, for: UIControlState())
        imageButton1.addTarget(self, action: #selector(ViewController.tapped(_:)), for:.touchUpInside)
        
        controller1.view.addSubview(imageButton1)
        
        let imageButton2   = UIButton()
        imageButton2.tag = 2
        imageButton2.frame = CGRect(x: 0, y: 0, width: 128, height: 128)
        imageButton2.layer.position = CGPoint(x: self.view.frame.width/2, y:450)
        imageButton2.setImage(image, for: UIControlState())
        imageButton2.addTarget(self, action: #selector(ViewController.tapped(_:)), for:.touchUpInside)
        
        controller2.view.addSubview(imageButton2)
        

        let imageButton3   = UIButton()
        imageButton3.tag = 3
        imageButton3.frame = CGRect(x: 0, y: 0, width: 128, height: 128)
        imageButton3.layer.position = CGPoint(x: self.view.frame.width/2, y:450)
        imageButton3.setImage(image, for: UIControlState())
        imageButton3.addTarget(self, action: #selector(ViewController.tapped(_:)), for:.touchUpInside)
        
        controller3.view.addSubview(imageButton3)
        

        
        
        myLabel1 = UILabel(frame: CGRect(x: 0,y: 0,width: 300,height: 100))
        myLabel1!.layer.position = CGPoint(x: self.view.bounds.width/2,y: 100)
        myLabel1!.textAlignment = NSTextAlignment.center
        myLabel1!.font = UIFont.systemFont(ofSize: 30)
        controller1.view.addSubview(myLabel1!)
        
        myLabel12 = UILabel(frame: CGRect(x: 0,y: 0,width: 300,height: 100))
        myLabel12!.layer.position = CGPoint(x: self.view.bounds.width/2,y: 290)
        myLabel12!.textAlignment = NSTextAlignment.center
        myLabel12!.font = UIFont.systemFont(ofSize: 30)
        controller1.view.addSubview(myLabel12!)
        
        
        myLabel2 = UILabel(frame: CGRect(x: 0,y: 0,width: 300,height: 100))
        myLabel2!.layer.position = CGPoint(x: self.view.bounds.width/2,y: 100)
        myLabel2!.textAlignment = NSTextAlignment.center
        myLabel2!.font = UIFont.systemFont(ofSize: 30)
        controller2.view.addSubview(myLabel2!)
        
        myLabel22 = UILabel(frame: CGRect(x: 0,y: 0,width: 300,height: 100))
        myLabel22!.layer.position = CGPoint(x: self.view.bounds.width/2,y: 290)
        myLabel22!.textAlignment = NSTextAlignment.center
        myLabel22!.font = UIFont.systemFont(ofSize: 30)
        controller2.view.addSubview(myLabel22!)
        
        
        myLabel3 = UILabel(frame: CGRect(x: 0,y: 0,width: 300,height: 100))
        myLabel3!.layer.position = CGPoint(x: self.view.bounds.width/2,y: 100)
        myLabel3!.textAlignment = NSTextAlignment.center
        myLabel3!.font = UIFont.systemFont(ofSize: 30)
        controller3.view.addSubview(myLabel3!)
        
        myLabel32 = UILabel(frame: CGRect(x: 0,y: 0,width: 300,height: 100))
        myLabel32!.layer.position = CGPoint(x: self.view.bounds.width/2,y: 290)
        myLabel32!.textAlignment = NSTextAlignment.center
        myLabel32!.font = UIFont.systemFont(ofSize: 30)
        controller3.view.addSubview(myLabel32!)
        
        
        
        // ラベル作成
        let myLabel: UILabel = UILabel()
        // またはサイズを指定して初期化
        // let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,300,100))
        
        // サイズ
        myLabel.frame = CGRect(x: 0,y: 0,width: 300,height: 100)
        
        // 位置
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
        
        // 背景色
        myLabel.backgroundColor = UIColor.red
        
        // 文字
        myLabel.text = "Hello!!"
        
        // フォントサイズ
        myLabel.font = UIFont.systemFont(ofSize: 40)
        
        // 文字色
        myLabel.textColor = UIColor.white
        
        // 文字の影の色
        myLabel.shadowColor = UIColor.blue
        
        // 文字を中央寄せ
        myLabel.textAlignment = NSTextAlignment.center
        
        // 角丸
        myLabel.layer.masksToBounds = true
        
        // コーナーの半径
        myLabel.layer.cornerRadius = 20.0
        
        // Viewにラベルを追加
        //controller3.view.addSubview(myLabel)
        
    }
    
    func tapped(_ sender : UIButton) {
        
        switch sender.tag {
        
        case 1:
            let randomNum11 = arc4random_uniform(UInt32(array1.count))
            let randomNum12 = arc4random_uniform(UInt32(array1.count))
            myLabel1!.text = "\(array1[Int(randomNum11)])"
            myLabel12!.text = "\(array1[Int(randomNum12)])"
            
            break
            
        case 2:
            let randomNum21 = arc4random_uniform(UInt32(array2.count))
            let randomNum22 = arc4random_uniform(UInt32(array2.count))
            myLabel2!.text = "\(array2[Int(randomNum21)])"
            myLabel22!.text = "\(array2[Int(randomNum22)])"
            
            break
            
        case 3:
            let randomNum31 = arc4random_uniform(UInt32(array3.count))
            let randomNum32 = arc4random_uniform(UInt32(array4.count))
            myLabel3!.text = "\(array3[Int(randomNum31)])"
            myLabel32!.text = "\(array4[Int(randomNum32)])"
            
            break
            
        default:
            
            
            break
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

