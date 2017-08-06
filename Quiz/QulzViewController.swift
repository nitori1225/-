//
//  QulzViewController.swift
//  Quiz
//
//  Created by 與野裕士 on 2017/08/05.
//  Copyright © 2017年 與野裕士. All rights reserved.
//

import UIKit

class QulzViewController: UIViewController {
    
    //　問題文を格納する配列
    var quizArray = [Quiz]()
    
    // 正解数
    var correctAnswer: Int = 0
    
    // クイズを表示するTextView
    @IBOutlet var quizTextview: UITextView!
    
    // 選択肢のボタン
    @IBOutlet var choiceButton1: UIButton!
    @IBOutlet var choiceButton2: UIButton!
    @IBOutlet var choiceButton3: UIButton!
    @IBOutlet var choiceButton4: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        //一時的にクイズを格納しておく配列
        //var tmpArray = [Any]()
        
        // tmpArrayに問題文と3つの選択肢と答えの番号の入った配列を追加していく
        //tmpArray.append(["来月開催される平昌オリンピックのメダルの獲得数が一番多い国は？","開催国の韓国でしょ！！","やっぱアメリカでしょ！！","我らが日本だ！！","まさかの他の国？？",0,0,0,0])
        var tmpArray = [Quiz]()
        tmpArray.append(Quiz(answer1: "開催国の韓国でしょ！！", answer2: "やっぱアメリカでしょ！！",  answer3: "我らが日本だ！！", answer4: "まさかの他の国？？", answerCount1: 0, answerCount2: 0, answerCount3: 0, answerCount4: 0, question: "来月開催される平昌オリンピックのメダルの獲得数が一番多い国は？"))
        
        
        
        // tmpArrayに問題文、3つの選択肢、答えの番号が入った配列を追加していく
        //tmpArray.append(["問題文1","選択肢1","選択肢2","選択肢3",1])
        //tmpArray.append(["問題文2","選択肢1","選択肢2","選択肢3",2])
        //tmpArray.append(["問題文3","選択肢1","選択肢2","選択肢3",2])
        //tmpArray.append(["問題文4","選択肢1","選択肢2","選択肢3",3])
        //tmpArray.append(["問題文5","選択肢1","選択肢2","選択肢3",3])
        //tmpArray.append(["問題文6","選択肢1","選択肢2","選択肢3",3])
        
        //　問題をシャフルしてquizArrayに格納する
        //while (tmpArray.count > 0) {
        //    let index = Int(arc4random()) % tmpArray.count
        //    quizArray.append(tmpArray[index])
        //    tmpArray.remove(at: index)
        //}
        
        choiceQuiz()
    }
    
    func choiceQuiz() {
    
        // 一時的にクイズを取り出す配列
       let tmpArray = quizArray[0]
        
        //問題文のテキストを表示
       // quizTextview.text = tmpArray[0] as! String
        
        //選択肢のボタンにそれぞれ選択肢のテキストをセット
        choiceButton1.setTitle(tmpArray.answer1, for: .normal)
        choiceButton2.setTitle(tmpArray.answer2, for: .normal)
        choiceButton3.setTitle(tmpArray.answer3, for: .normal)
        choiceButton4.setTitle(tmpArray.answer4, for: .normal)
    }
    
    @IBAction func choiceAnswer(sender: UIButton) {
        
        //var tmpArray = quizArray[0]
        
        //if tmpArray[] as! Int == sender.tag  {
            
            //数字を増やす
          //  correctAnswer = correctAnswer + 1
        //}
        
        switch sender.tag {
        case 1:
            quizArray[0].answerCount1 += 1
        case 2:
            quizArray[0].answerCount2 += 1
        case 3:
            quizArray[0].answerCount3 += 1
        case 4:
            quizArray[0].answerCount4 += 1
        default:
            break
        }
        
        //print((tmpArray[sender.tag+4] as! Int) + 1)
        
        // 解いた問題をquizArrayから取り除く
        
        //quizArray.remove(at: 0)
        
        // 解いた問題数の合計があらかじめ設定していた問題数に達したら結果画面へ
        //if quizArray.count == 0 {
        //    performSefueToResult()
        //} else {
        //    choiceQuiz()
        //}
        correctAnswer += 1
        
        if correctAnswer == 10 {
            performSefueToResult()
        }
    }
    
    func performSefueToResult() {
        performSegue(withIdentifier: "toResultView", sender: nil)
    }
    
    //　セグエを準備(prepare)するときに呼ばれるメゾッド
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultView" {
            let resultViewController = segue.destination as! ResultViewController
            // resultViewController.correctAnswer = self.correctAnswer
            resultViewController.answerRate1 = Double(quizArray[0].answerCount1) / Double(correctAnswer)
            resultViewController.answerRate2 = Double(quizArray[0].answerCount2) / Double(correctAnswer)
            resultViewController.answerRate3 = Double(quizArray[0].answerCount3) / Double(correctAnswer)
            resultViewController.answerRate4 = Double(quizArray[0].answerCount4) / Double(correctAnswer)
        }
    }

        // Do any additional setup after loading the view.
    

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
