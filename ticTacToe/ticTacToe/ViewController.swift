//
//  ViewController.swift
//  ticTacToe
//
//  Created by Johann Kerr on 9/26/16.
//  Copyright © 2016 Johann Kerr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var nameOfGameLabelo: UILabel!
  @IBOutlet weak var endGameLabel: UILabel!
  
  //top row buttons
  @IBOutlet weak var topLeftButton: UIButton!
  @IBOutlet weak var topMiddleButton: UIButton!
  @IBOutlet weak var topRightButton: UIButton!
  
  //middle row buttons
  @IBOutlet weak var middleLeftButton: UIButton!
  @IBOutlet weak var middleMiddleButton: UIButton!
  @IBOutlet weak var middleRightButton: UIButton!

  //bottom row buttons
  @IBOutlet weak var bottomLeftButton: UIButton!
  @IBOutlet weak var bottomMiddleButton: UIButton!
  @IBOutlet weak var bottomRightButton: UIButton!
  
  var row1 = ["", "" ,""]
  var row2 = ["", "" ,""]
  var row3 = ["", "" ,""]
  
  var turnCounter = 1 //odd turn is x, even is o
  
  override func viewDidLoad() {
        super.viewDidLoad()
        resetGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  @IBAction func topLeftButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    topLeftButton.setTitle(buttonText, for: .normal)
    row1[0] = buttonText
    turnCounter += 1
  }
  @IBAction func topMiddleButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    topMiddleButton.setTitle(buttonText, for: .normal)
    row1[1] = buttonText
    turnCounter += 1
  }
  @IBAction func topRightButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    topRightButton.setTitle(buttonText, for: .normal)
    row1[2] = buttonText
    turnCounter += 1
  }
  
  @IBAction func middleLeftButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    middleLeftButton.setTitle(buttonText, for: .normal)
    row2[0] = buttonText
    turnCounter += 1
  }
  @IBAction func middleMiddleButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    middleMiddleButton.setTitle(buttonText, for: .normal)
    row2[1] = buttonText
    turnCounter += 1
  }
  @IBAction func middleRightButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    middleRightButton.setTitle(buttonText, for: .normal)
    row2[2] = buttonText
    turnCounter += 1
  }
  
  @IBAction func bottomLeftButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    bottomLeftButton.setTitle(buttonText, for: .normal)
    row3[0] = buttonText
    turnCounter += 1
  }
  @IBAction func bottomMiddleLeftButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    bottomMiddleButton.setTitle(buttonText, for: .normal)
    row3[1] = buttonText
    turnCounter += 1
  }
  @IBAction func bottomRightButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    bottomRightButton.setTitle(buttonText, for: .normal)
    row3[2] = buttonText
    turnCounter += 1
    print(row1.joined(separator: " "))
    print(row2.joined(separator: " "))
    print(row3.joined(separator: " "))
  }

  func hideAllButtons() {
    topLeftButton.isHidden = true
    topMiddleButton.isHidden = true
    topRightButton.isHidden = true
    middleLeftButton.isHidden = true
    middleMiddleButton.isHidden = true
    middleRightButton.isHidden = true
    bottomLeftButton.isHidden = true
    bottomMiddleButton.isHidden = true
    bottomRightButton.isHidden = true
  }
  
  func resetGame() {
    endGameLabel.isHidden = true
    turnCounter = 1
  }
  
  func showXorO() -> String{
    if turnCounter % 2 == 0 {
      return "X"
    }
    else{
      return "O"
    }
  }
}

