//
//  ViewController.swift
//  NumbersGame
//
//  Created by 志賀大河 on 2019/08/05.
//  Copyright © 2019 Taigashiga. All rights reserved.
//

//ViewController.swift
//シミュレーターで表示された真っ白な画面がありましたね？
//あの画面の制御を行うのが「ViewController.swift」です。
//基本的には1画面につき1つのViewControllerがあると考えておけば良いでしょう。
//また、このViewControllerはclass定義されていることを覚えておきましょう。

import UIKit

class ViewController: UIViewController {
    
    
    //  入力した数字を表示するラベル
    @IBOutlet weak var answerLabel: UILabel!
    
    // ここは数字を入力するやつ
    @IBOutlet weak var inputTextfield: UITextField!
    
    // 過去に答えた数字表示します。
    @IBOutlet weak var answerDisplay: UITextView!
    
    //メッセージの初期値を設定
    
    var writtingNum = 0
    
    // 正解の数を入れる
    var treuNum : Int = 0
    
    // 回答した数を入れる(何周目かを入れるところ)
    var numberTimeCount: Int = 0
    
    //  ランダムな数（答え）を変数で定義
    var answerNum: Int = Int.random(in: 0...100)
    
    
    //   正解を更新する関数を作成する
    
    func resetRandNum() {
        answerNum = Int.random(in: 0...100)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // テキストビューを触れさせないようにする
        
        answerDisplay.isUserInteractionEnabled = false
        
    }
    
    //決定ボタン
    @IBAction func DecideButton(_ sender: Any) {
        
        
        // string型、nil を除去
        guard let num = Int(inputTextfield.text!) else {
            showAlert(title: "エラー", message: "1から１００の間の数字をお願いします")
            return
            
        }
        writtingNum = num
        
        
        // もし１から１００の間で
        if 0 < writtingNum && writtingNum <= 100{
            
            // 入力数値　＞　正解数値
            if writtingNum > answerNum {
                
                // 答えた数を足していく
                numberTimeCount += 1
                
                // ラベルに入力した数を入れる
                answerLabel.text = "\(writtingNum)"
                
                // 不正解アラートを表示
                showAlert(message: "答えは\(writtingNum)より低い数字です")
                // textviewの履歴を更新します。
                answerDisplay.text += "\(numberTimeCount)回目の答えは\(writtingNum)より低い数字です\n"
                // 入力数　＜　正解数値より高い場合
            } else if writtingNum < answerNum  {
                
                //  答えをに足していくよん
                numberTimeCount += 1
                
                // ラベルに入力したの数を入れるよん
                answerLabel.text = "\(writtingNum)"
                
                // 不正解アラートを表示するよん
                showAlert(message: "答えは\(writtingNum)より高い数字です")
                
                //textviewに履歴を更新します
                answerDisplay.text += "\(numberTimeCount)回目の答えは\(writtingNum)より高い数字です\n"
                 //正解の場合
            } else {
                // 正解数を足しますよん
                numberTimeCount += 1
                // 正解アラートの表示します
                showAlert(message: "\(numberTimeCount)回目で正解しました")
                
                //textviewを更新します
                answerDisplay.text += "\(numberTimeCount)回目の答えで正解しました\n"
                
                // 正解したので答えの値を更新
                resetRandNum()
                
                numberTimeCount = 0
                
            }
            // それ以外の場合
        } else {
            
            showAlert(title: "エラー", message: "1から１００の間の数字をお願いします")
            
            
        }
    }
    //アラートを表示する関数
    
    func showAlert(title: String = "", message: String) {
        //  アラート表示を作成
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        // アラートの遷移先を作成
        let close = UIAlertAction(title: "閉じるよーーん", style: .cancel, handler: nil)
        
        //  二つの定数を結合します
        alert.addAction(close)
        
        // アラートを起動させます
        present(alert, animated: true, completion: nil)
    }
    
}

