//
//  ViewController.swift
//  Calc
//
//  Created by remi on 2018/08/07.
//  Copyright © 2018年 rmei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var formulaLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        //ビューがロードされた際に空
        formulaLabel.text = ""
        answerLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func inputFormula(_ sender: UIButton) {
        // ボタン（Cと＝以外）が押されたら式を表記
        guard let formulaText = formulaLabel.text else{
            return
        }
        // [sender.titleLabel?.text]で押されたボタンのTitleを取得
        guard let senderedText = sender.titleLabel?.text else {
            return
        }
        // 式を連結
        formulaLabel.text = formulaText + senderedText
    }
    @IBAction func clearCalculation(_ sender: UIButton) {
        // Cボタンで式、答えをクリア
        formulaLabel.text = ""
        answerLabel.text = ""
    }
    @IBAction func calculateAnswer(_ sender: UIButton) {
        // 計算
        
    }

}

