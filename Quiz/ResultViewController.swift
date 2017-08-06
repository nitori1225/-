//
//  ResultViewController.swift
//  Quiz
//
//  Created by 與野裕士 on 2017/08/05.
//  Copyright © 2017年 與野裕士. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //正解数
    var correctAnswer: Int = 0
    
    var answerRate1: Double = 0.0
    var answerRate2: Double = 0.0
    var answerRate3: Double = 0.0
    var answerRate4: Double = 0.0
    
    //結果を表示するラベル
    @IBOutlet var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultLabel.text = String(correctAnswer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back() {
        self.presentingViewController?.presentingViewController?
            .dismiss(animated: true, completion: nil)
        
       resultLabel=
        
        
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
