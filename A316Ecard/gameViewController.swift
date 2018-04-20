//
//  gameViewController.swift
//  A316Ecard
//
//  Created by 范博勝 on 2018/4/20.
//  Copyright © 2018年 范博勝. All rights reserved.
//

import UIKit
import GameplayKit

class gameViewController: UIViewController {

    @IBOutlet weak var liword: UILabel!
    
    @IBOutlet weak var liphoto: UIImageView!
    
    @IBOutlet weak var licard1: UIImageView!
    @IBOutlet weak var licard2: UIImageView!
    @IBOutlet weak var licard3: UIImageView!
    @IBOutlet weak var licard4: UIImageView!
    @IBOutlet weak var licard5: UIImageView!
    
    
    @IBOutlet weak var kacard1: UIImageView!
    @IBOutlet weak var kacard2: UIImageView!
    @IBOutlet weak var kacard3: UIImageView!
    @IBOutlet weak var kacard4: UIImageView!
    @IBOutlet weak var kacard5: UIImageView!
   
    @IBOutlet weak var winorlose: UILabel!
    
    @IBOutlet weak var kaphoto: UIImageView!
    @IBOutlet weak var kaword: UILabel!
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var peopleButton: UIButton!
    
    @IBOutlet weak var slaveButton: UIButton!
    
    
    
    var cardnum = 1 //出第幾張牌
    //按市民按鈕
    @IBAction func peoplebutton(_ sender: UIButton) {
        let rannum = distribution.nextInt()
        liword.text = liwordnormal[rannum] //利根川挑釁發言
        
        let rannum3 = distribution3.nextInt()
        kaword.text = kawordnormal[rannum3] //開司挑釁發言
        
        let rannum4 = distribution4.nextInt()
        
        if cardnum == 1{
        kacard1.image = UIImage(named: "市民")
        kacard1.isHidden = false //開司第一張顯示市民
        let linow = licardout[distribution2.nextInt()]
            if linow == 1{ //利根川的牌是市民
                licard1.image = UIImage(named: "市民")
                licard1.isHidden = false //利根川第一張顯示市民
            }
            if linow == 2{ //利根川的牌是皇帝
                licard1.image = UIImage(named: "皇帝")
                licard1.isHidden = false //利根川第一張顯示皇帝
                
                //失敗處理
                winorlose.text = "You Lose"
                winorlose.isHidden = false
                nextButton.isHidden = false
                kaphoto.image = UIImage(named: "開司失敗")
                kaword.text = "不可能 不可能的"
                liphoto.image = UIImage(named: "利根川勝利")
                liword.text = liwordwin[rannum4]
                peopleButton.isEnabled = false
                slaveButton.isEnabled = false
            }
        }
        
        if cardnum == 2{
            kacard2.image = UIImage(named: "市民")
            kacard2.isHidden = false
            let linow = licardout[distribution2.nextInt()]
            if linow == 1{
                licard2.image = UIImage(named: "市民")
                licard2.isHidden = false
            }
            if linow == 2{
                licard2.image = UIImage(named: "皇帝")
                licard2.isHidden = false
                winorlose.text = "You Lose"
                winorlose.isHidden = false
                nextButton.isHidden = false
                kaphoto.image = UIImage(named: "開司失敗")
                kaword.text = "不可能 不可能的"
                liphoto.image = UIImage(named: "利根川勝利")
                liword.text = liwordwin[rannum4]
                peopleButton.isEnabled = false
                slaveButton.isEnabled = false
            }
        }
        
        if cardnum == 3{
            kacard3.image = UIImage(named: "市民")
            kacard3.isHidden = false
            let linow = licardout[distribution2.nextInt()]
            if linow == 1{
                licard3.image = UIImage(named: "市民")
                licard3.isHidden = false
            }
            if linow == 2{
                licard3.image = UIImage(named: "皇帝")
                licard3.isHidden = false
                winorlose.text = "You Lose"
                winorlose.isHidden = false
                nextButton.isHidden = false
                kaphoto.image = UIImage(named: "開司失敗")
                kaword.text = "不可能 不可能的"
                liphoto.image = UIImage(named: "利根川勝利")
                liword.text = liwordwin[rannum4]
                peopleButton.isEnabled = false
                slaveButton.isEnabled = false
            }
        }
        
        if cardnum == 4{
            kacard4.image = UIImage(named: "市民")
            kacard4.isHidden = false
            let linow = licardout[distribution2.nextInt()]
            if linow == 1{
                licard4.image = UIImage(named: "市民")
                licard4.isHidden = false
            }
            if linow == 2{
                licard4.image = UIImage(named: "皇帝")
                licard4.isHidden = false
                winorlose.text = "You Lose"
                winorlose.isHidden = false
                nextButton.isHidden = false
                kaphoto.image = UIImage(named: "開司失敗")
                kaword.text = "不可能 不可能的"
                liphoto.image = UIImage(named: "利根川勝利")
                liword.text = liwordwin[rannum4]
                peopleButton.isEnabled = false
                slaveButton.isEnabled = false
            }
        }
        
        if cardnum == 5{
            kacard5.image = UIImage(named: "市民")
            kacard5.isHidden = false
            let linow = licardout[distribution2.nextInt()]
            if linow == 1{
                licard5.image = UIImage(named: "市民")
                licard5.isHidden = false
            }
            if linow == 2{
                licard5.image = UIImage(named: "皇帝")
                licard5.isHidden = false
                winorlose.text = "You Lose"
                winorlose.isHidden = false
                nextButton.isHidden = false
                kaphoto.image = UIImage(named: "開司失敗")
                kaword.text = "不可能 不可能的"
                liphoto.image = UIImage(named: "利根川勝利")
                liword.text = liwordwin[rannum4]
                peopleButton.isEnabled = false
                slaveButton.isEnabled = false
            }
        }
        
        
        
        cardnum = cardnum + 1
    }
    
    @IBAction func slavebutton(_ sender: UIButton) {
    
        let rannum4 = distribution4.nextInt()
        
        if cardnum == 1{
            kacard1.image = UIImage(named: "奴隸")
            kacard1.isHidden = false
            let linow = licardout[distribution2.nextInt()]
            if linow == 1{
                licard1.image = UIImage(named: "市民")
                licard1.isHidden = false
                winorlose.text = "You Lose"
                winorlose.isHidden = false
                nextButton.isHidden = false
                kaphoto.image = UIImage(named: "開司失敗")
                kaword.text = "不可能 不可能的"
                liphoto.image = UIImage(named: "利根川勝利")
                liword.text = liwordwin[rannum4]
                
                winorlose.text = "You Lose"
                winorlose.isHidden = false
                nextButton.isHidden = false
            }
            if linow == 2{
                licard1.image = UIImage(named: "皇帝")
                licard1.isHidden = false
                
                winorlose.text = "You Win"
                winorlose.isHidden = false
                nextButton.isHidden = false
                kaphoto.image = UIImage(named: "開司勝利")
                kaword.text = "知道厲害了吧 快把錢拿來"
                liphoto.image = UIImage(named: "利根川失敗")
                liword.text = "居然輸給你這畜生"
            }
        }
        
        if cardnum == 2{
            kacard2.image = UIImage(named: "奴隸")
            kacard2.isHidden = false
            let linow = licardout[distribution2.nextInt()]
            if linow == 1{
                licard2.image = UIImage(named: "市民")
                licard2.isHidden = false
                winorlose.text = "You Lose"
                winorlose.isHidden = false
                nextButton.isHidden = false
                kaphoto.image = UIImage(named: "開司失敗")
                kaword.text = "不可能 不可能的"
                liphoto.image = UIImage(named: "利根川勝利")
                liword.text = liwordwin[rannum4]
                
                winorlose.text = "You Lose"
                winorlose.isHidden = false
                nextButton.isHidden = false
            }
            if linow == 2{
                licard2.image = UIImage(named: "皇帝")
                licard2.isHidden = false
                
                winorlose.text = "You Win"
                winorlose.isHidden = false
                nextButton.isHidden = false
                kaphoto.image = UIImage(named: "開司勝利")
                kaword.text = "知道厲害了吧 快把錢拿來"
                liphoto.image = UIImage(named: "利根川失敗")
                liword.text = "居然輸給你這畜生"
            }
        }
        
        if cardnum == 3{
            kacard3.image = UIImage(named: "奴隸")
            kacard3.isHidden = false
            let linow = licardout[distribution2.nextInt()]
            if linow == 1{
                licard3.image = UIImage(named: "市民")
                licard3.isHidden = false
                winorlose.text = "You Lose"
                winorlose.isHidden = false
                nextButton.isHidden = false
                kaphoto.image = UIImage(named: "開司失敗")
                kaword.text = "不可能 不可能的"
                liphoto.image = UIImage(named: "利根川勝利")
                liword.text = liwordwin[rannum4]
                
                winorlose.text = "You Lose"
                winorlose.isHidden = false
                nextButton.isHidden = false
            }
            if linow == 2{
                licard3.image = UIImage(named: "皇帝")
                licard3.isHidden = false
                
                winorlose.text = "You Win"
                winorlose.isHidden = false
                nextButton.isHidden = false
                kaphoto.image = UIImage(named: "開司勝利")
                kaword.text = "知道厲害了吧 快把錢拿來"
                liphoto.image = UIImage(named: "利根川失敗")
                liword.text = "居然輸給你這畜生"
            }
        }
        
        if cardnum == 4{
            kacard4.image = UIImage(named: "奴隸")
            kacard4.isHidden = false
            let linow = licardout[distribution2.nextInt()]
            if linow == 1{
                licard4.image = UIImage(named: "市民")
                licard4.isHidden = false
                winorlose.text = "You Lose"
                winorlose.isHidden = false
                nextButton.isHidden = false
                kaphoto.image = UIImage(named: "開司失敗")
                kaword.text = "不可能 不可能的"
                liphoto.image = UIImage(named: "利根川勝利")
                liword.text = liwordwin[rannum4]
                
                winorlose.text = "You Lose"
                winorlose.isHidden = false
                nextButton.isHidden = false
            }
            if linow == 2{
                licard4.image = UIImage(named: "皇帝")
                licard4.isHidden = false
                
                winorlose.text = "You Win"
                winorlose.isHidden = false
                nextButton.isHidden = false
                kaphoto.image = UIImage(named: "開司勝利")
                kaword.text = "知道厲害了吧 快把錢拿來"
                liphoto.image = UIImage(named: "利根川失敗")
                liword.text = "居然輸給你這畜生"
            }
        }
        
        if cardnum == 5{
            kacard5.image = UIImage(named: "奴隸")
            kacard5.isHidden = false
            let linow = licardout[distribution2.nextInt()]
            if linow == 1{
                licard5.image = UIImage(named: "市民")
                licard5.isHidden = false
                winorlose.text = "You Lose"
                winorlose.isHidden = false
                nextButton.isHidden = false
                kaphoto.image = UIImage(named: "開司失敗")
                kaword.text = "不可能 不可能的"
                liphoto.image = UIImage(named: "利根川勝利")
                liword.text = liwordwin[rannum4]
                
                winorlose.text = "You Lose"
                winorlose.isHidden = false
                nextButton.isHidden = false
            }
            if linow == 2{
                licard5.image = UIImage(named: "皇帝")
                licard5.isHidden = false
                
                winorlose.text = "You Win"
                winorlose.isHidden = false
                nextButton.isHidden = false
                kaphoto.image = UIImage(named: "開司勝利")
                kaword.text = "知道厲害了吧 快把錢拿來"
                liphoto.image = UIImage(named: "利根川失敗")
                liword.text = "居然輸給你這畜生"
            }
        }
    
    
    
        peopleButton.isEnabled = false
        slaveButton.isEnabled = false
    }
    
    @IBAction func nextbutton(_ sender: UIButton) {
    cardnum = 1
    peopleButton.isEnabled = true
    slaveButton.isEnabled = true
    nextButton.isHidden = true
    liphoto.image = UIImage(named: "利根川2")
    kaphoto.image = UIImage(named: "開司1")
    liword.text = "再玩一百次你也是輸給我"
    kaword.text = "待會你就笑不出來"
    winorlose.isHidden = true
    licard1.isHidden = true
    licard2.isHidden = true
    licard3.isHidden = true
    licard4.isHidden = true
    licard5.isHidden = true
    kacard1.isHidden = true
    kacard2.isHidden = true
    kacard3.isHidden = true
    kacard4.isHidden = true
    kacard5.isHidden = true
        
    }
    
    let licardout = [1,1,1,1,2] //1:利根川出市民 2:利根川出皇帝
    let distribution2 = GKShuffledDistribution(lowestValue: 0, highestValue: 4)
    
    
    //設定隨機數，隨機選取利根川挑釁發言，字串array在word.swift
    let distribution = GKShuffledDistribution(lowestValue: 0, highestValue: liwordnormal.count - 1)
    
    //隨機選取開司挑釁發言
    let distribution3 = GKShuffledDistribution(lowestValue: 0, highestValue: kawordnormal.count - 1)
    
    //隨機選取利根川勝利發言
    let distribution4 = GKShuffledDistribution(lowestValue: 0, highestValue: liwordwin.count - 1)
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
