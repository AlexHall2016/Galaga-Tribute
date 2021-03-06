//
//  GameViewController.swift
//  Galaga-Tribute
//
//  Created by Anthony Owyeong on 4/13/19.
//  Copyright © 2019 Anthony Owyeong. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        
        print(username)
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
               
                
                let gScene: GameScene = scene as! GameScene
                gScene.vc = self
                // Present the scene
                view.presentScene(scene)
            
                gScene.user = self.username
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
