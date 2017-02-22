//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 小川拓未 on 2017/02/22.
//  Copyright © 2017年 takumi.ogawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているnameに値を代入して渡す
        resultViewController.name = textField.text!
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
    }
    
    
    
}
