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
  }
  @IBAction func topMiddleButtonClicked(_ sender: AnyObject) {
  }
  @IBAction func topRightButtonClicked(_ sender: AnyObject) {
  }
  
  @IBAction func middleLeftButtonClicked(_ sender: AnyObject) {
  }
  @IBAction func middleMiddleButtonClicked(_ sender: AnyObject) {
  }
  @IBAction func middleRightButtonClicked(_ sender: AnyObject) {
  }
  
  @IBAction func bottomLeftButtonClicked(_ sender: AnyObject) {
  }
  @IBAction func bottomMiddleLeftButtonClicked(_ sender: AnyObject) {
  }
  @IBAction func bottomRightButtonClicked(_ sender: AnyObject) {
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
    hideAllButtons()
    endGameLabel.isHidden = true
  }
}

