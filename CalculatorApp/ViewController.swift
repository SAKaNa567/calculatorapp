//
//  ViewController.swift
//  CalculatorApp
//
//  Created by abc def on 2018/07/07.
//  Copyright © 2018年 abc def. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var formulaLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //ビューがロードされた時点で式と答えのラベルは空にする
        formulaLabel.text = ""
        answerLabel.text = ""
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func inputFormula(_ sender: UIButton) {
        //ボタン(cと=以外）が押されたら式を表示する。
        guard let formulaText = formulaLabel.text else {
            return
        }
        guard let senderedText = sender.titleLabel?.text else {
            return
        }
        formulaLabel.text = formulaText + senderedText
    }
   
    @IBAction func clearCalculation(_ sender: UIButton) {
    }
    @IBAction func calculateAnswer(_ sender: UIButton) {
    }
    
}

