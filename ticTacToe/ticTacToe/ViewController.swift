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
  
  var row1 = ["a", "b" ,"c"]
  var row2 = ["d", "e" ,"f"]
  var row3 = ["g", "h" ,"i"]
  
  var winner: String = ""//stores winning player's X or O
  
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
    checkIfGameWon()
    turnCounter += 1
  }
  @IBAction func topMiddleButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    topMiddleButton.setTitle(buttonText, for: .normal)
    row1[1] = buttonText
    checkIfGameWon()
    turnCounter += 1
  }
  @IBAction func topRightButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    topRightButton.setTitle(buttonText, for: .normal)
    row1[2] = buttonText
    checkIfGameWon()
    turnCounter += 1
  }
  
  @IBAction func middleLeftButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    middleLeftButton.setTitle(buttonText, for: .normal)
    row2[0] = buttonText
    checkIfGameWon()
    turnCounter += 1
  }
  @IBAction func middleMiddleButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    middleMiddleButton.setTitle(buttonText, for: .normal)
    row2[1] = buttonText
    checkIfGameWon()
    turnCounter += 1
  }
  @IBAction func middleRightButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    middleRightButton.setTitle(buttonText, for: .normal)
    row2[2] = buttonText
    checkIfGameWon()
    turnCounter += 1
  }
  
  @IBAction func bottomLeftButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    bottomLeftButton.setTitle(buttonText, for: .normal)
    row3[0] = buttonText
    checkIfGameWon()
    turnCounter += 1
  }
  @IBAction func bottomMiddleLeftButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    bottomMiddleButton.setTitle(buttonText, for: .normal)
    row3[1] = buttonText
    checkIfGameWon()
    turnCounter += 1
  }
  @IBAction func bottomRightButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    bottomRightButton.setTitle(buttonText, for: .normal)
    row3[2] = buttonText
    checkIfGameWon()
    turnCounter += 1
  }

  func hideAllButtons() {
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
  
  func gameWon(rowIndexValue value: String){
    endGameLabel.text = "Congratulations, player \(value) is the winner!"
    endGameLabel.isHidden = false
  }
  
  func checkIfGameWon() {
    //check vertical rows
    if row1[0] ==  row2[0]  && row3[0] == row2[0]  {
      gameWon(rowIndexValue: row1[0])
    }
    else if row1[1] ==  row2[1]  && row3[1] == row2[1]{
      gameWon(rowIndexValue: row1[1])
    }
    else if row1[2] ==  row2[2]  && row3[2] == row2[2]{
      gameWon(rowIndexValue: row1[2])
    }
    //check diagonal rows
    else if row1[0] == row2[1] && row3[2] == row2[1]{
      gameWon(rowIndexValue: row1[0])
    }
    else if row1[2] == row2[1] && row3[0] == row2[1]{
      gameWon(rowIndexValue: row1[2])
    }
    //check horizontal rows
    else if row1[0] == row1[1] && row1[2] == row1[1]{
      gameWon(rowIndexValue: row1[0])
    }
    else if row2[0] == row2[1] && row2[2] == row2[1]{
      gameWon(rowIndexValue: row1[0])
    }
    else if row3[0] == row3[1] && row3[2] == row3[1]{
      gameWon(rowIndexValue: row1[0])
    }
  }
}

