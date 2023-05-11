//
//  ViewController.swift
//  Destiny
//
//  Created by Joel Joseph on 9/14/22.
//

import UIKit

class ViewController: UIViewController {
    var screenWidth = 0
    var screenHight = 0
    var game = Destiny()
    
    @IBOutlet var story: UILabel!
    @IBOutlet weak var path1: UIButton!
    @IBOutlet weak var path2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        story.text = game.title()
        path1.setTitle(game.choice1(), for: .normal)
        path2.setTitle(game.choice2(), for: .normal)
    }
    
    @IBAction func path1(_ sender: Any) {
        print("clicked path 1")
        game.current = game.indexChoice1()
        story.text = game.title()
        // gets the path for choice 1 with the index given 
        path1.setTitle(game.choice1(), for: .normal )
        path2.setTitle(game.choice2(), for: .normal)
    }
    @IBAction func path2(_ sender: Any) {
        print("clicked path 2")
        game.current = game.indexChoice2()
        story.text = game.title()
        path1.setTitle(game.choice1(), for: .normal )
        path2.setTitle(game.choice2(), for: .normal)

    }
}

