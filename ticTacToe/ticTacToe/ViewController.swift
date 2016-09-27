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
  @IBOutlet weak var startOverButton: UIButton!
  
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
  
  var board: [[String]] = Array(repeating: Array(repeating:"", count:3), count:3)
  
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
    board[0][0] = buttonText
    topLeftButton.titleLabel?.isHidden = false;
    checkIfGameWon()
    turnCounter += 1
    printBoardArr()
  }
  
  @IBAction func topMiddleButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    topMiddleButton.setTitle(buttonText, for: .normal)
    board[0][1] = buttonText
    topMiddleButton.titleLabel?.isHidden = false;
    checkIfGameWon()
    turnCounter += 1
    printBoardArr()
  }
  
  @IBAction func topRightButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    topRightButton.setTitle(buttonText, for: .normal)
    board[0][2] = buttonText
    topRightButton.titleLabel?.isHidden = false;
    checkIfGameWon()
    turnCounter += 1
    printBoardArr()
  }
  
  @IBAction func middleLeftButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    middleLeftButton.setTitle(buttonText, for: .normal)
    board[1][0] = buttonText
    middleLeftButton.titleLabel?.isHidden = false;
    checkIfGameWon()
    turnCounter += 1
    printBoardArr()
  }
  
  @IBAction func middleMiddleButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    middleMiddleButton.setTitle(buttonText, for: .normal)
    board[1][1] = buttonText
    middleMiddleButton.titleLabel?.isHidden = false;
    checkIfGameWon()
    turnCounter += 1
    printBoardArr()
  }
  
  @IBAction func middleRightButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    middleRightButton.setTitle(buttonText, for: .normal)
    board[1][2] = buttonText
    middleRightButton.titleLabel?.isHidden = false;
    checkIfGameWon()
    turnCounter += 1
    printBoardArr()
  }
  
  @IBAction func bottomLeftButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    bottomLeftButton.setTitle(buttonText, for: .normal)
    board[2][0] = buttonText
    bottomLeftButton.titleLabel?.isHidden = false;
    checkIfGameWon()
    turnCounter += 1
    printBoardArr()
  }
  
  @IBAction func bottomMiddleLeftButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    bottomMiddleButton.setTitle(buttonText, for: .normal)
    board[2][1] = buttonText
    bottomMiddleButton.titleLabel?.isHidden = false;
    checkIfGameWon()
    turnCounter += 1
    printBoardArr()
  }
  
  @IBAction func bottomRightButtonClicked(_ sender: AnyObject) {
    let buttonText = showXorO()
    bottomRightButton.setTitle(buttonText, for: .normal)
    board[2][2] = buttonText
    bottomRightButton.titleLabel?.isHidden = false;
    checkIfGameWon()
    turnCounter += 1
    printBoardArr()
  }

  @IBAction func startNewGameClicked(_ sender: UIButton) {
    resetGame()
  }
  
  func hideAllButtons() {
    topLeftButton.titleLabel?.isHidden = true
    topMiddleButton.titleLabel?.isHidden = true
    topRightButton.titleLabel?.isHidden = true
    middleLeftButton.titleLabel?.isHidden = true
    middleMiddleButton.titleLabel?.isHidden = true
    middleRightButton.titleLabel?.isHidden = true
    bottomLeftButton.titleLabel?.isHidden = true
    bottomMiddleButton.titleLabel?.isHidden = true
    bottomRightButton.titleLabel?.isHidden = true
  }
  
  func resetGame() {
    endGameLabel.isHidden = true
    hideAllButtons()
    board = Array(repeating: Array(repeating:"", count:3), count:3)
    turnCounter = 1
  }
  
  func showXorO() -> String{
    print("counter = \(turnCounter)")
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
    if board[0][0] != "" && board[0][0] == board[1][0] && board[1][0] == board[2][0]  {
      gameWon(rowIndexValue: board[0][0])
    }
    else if board[0][1] != "" && board[0][1] == board[1][1] && board[2][1] == board[1][1]  {
      gameWon(rowIndexValue: board[0][1])
    }
    else if board[0][2] != "" && board[0][2] == board[1][2] && board[2][2] == board[1][2]  {
      gameWon(rowIndexValue: board[0][2])
    }
    //check horizontal
    if board[0][0] != "" && board[0][0] == board[0][1] && board[0][1] == board[0][2]  {
      gameWon(rowIndexValue: board[0][0])
    }
    else if board[1][0] != "" && board[1][0] == board[1][1] && board[1][2] == board[1][1]  {
      gameWon(rowIndexValue: board[0][1])
    }
    else if board[2][0] != "" && board[2][0] == board[2][1] && board[2][2] == board[2][1]  {
      gameWon(rowIndexValue: board[2][0])
    }
  }
  
  func printBoardArr() {
    print("Board X: ")
    print(board)
    print("\n")
  }
  
}

