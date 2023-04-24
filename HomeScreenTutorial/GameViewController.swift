//
//  GameViewController.swift
//  HomeScreenTutorial
//
//  Created by Mary Paskhaver on 4/21/23.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presentHomeScreen()
    }
    
    func presentHomeScreen() {
        if let view = self.view as! SKView? {
            if let scene = HomeScreen(fileNamed: "HomeScreen") {
                scene.scaleMode = .aspectFill
                scene.gvc = self
                view.presentScene(scene)
           }
       }
   }
    
    func presentScene(named sceneName: String) {
        if let view = self.view as! SKView? {
            if let scene = SKScene(fileNamed: sceneName) {
                scene.scaleMode = .aspectFill
                view.presentScene(scene)
            }
        }
    }
}
