//
//  ViewController.swift
//  Calculator
//
//  Created by Admin on 4/20/16.
//  Copyright © 2016 riis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultsFld: UITextField!

    var res = Int()
    var num = Int()
    var op = String()

    let resCalc = CalculatorModel()


    override func viewDidLoad() {
        super.viewDidLoad()
        op = "="
        resultsFld.text = ("\(res)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func compute(_ sender: UIButton) {
        num = num * 10 + Int(sender.titleLabel!.text!)!
        resultsFld.text = ("\(num)")
    }

    @IBAction func operation(_ sender: UIButton) {

        switch op {

            case "=":
                res = num
            case "+":
                res = resCalc.add(res, num)
            case "-":
                res = resCalc.sub(res, num)
            case "*":
                res = resCalc.mul(res, num)
            case "/":
                res = resCalc.div(res, num)
            default:
                print("error")

        }

        num = 0
        resultsFld.text = ("\(res)")

        if(sender.titleLabel!.text == "=") {
            res = 0
        }

        op = sender.titleLabel!.text! as String!

    }

    @IBAction func clear(_ sender: UIButton) {
        res = 0
        num = 0
        op = "="
        resultsFld.text = ("\(res)")
    }
}
