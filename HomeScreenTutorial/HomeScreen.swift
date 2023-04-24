//
//  HomeScreen.swift
//  HomeScreenTutorial
//
//  Created by Mary Paskhaver on 4/21/23.
//

import Foundation
import SpriteKit

class HomeScreen: SKScene {
    
    var playButton: Button!
    var settingsButton: Button!
    
    var gvc: GameViewController!
    
    override func didMove(to view: SKView) {
        playButton = self.childNode(withName: "playButton") as! Button

        playButton.action = {
            self.gvc.presentScene(named: "Game")
        }
        
        settingsButton = self.childNode(withName: "settingsButton") as! Button
        
        settingsButton.action = {
            self.gvc.presentScene(named: "Settings")
        }
   }
}
