//
//  ViewController.swift
//  War
//
//  Created by Cinu Mathew on 6/17/17.
//  Copyright © 2017 Chris Mathew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightScore: UILabel!
    @IBOutlet weak var leftScore: UILabel!
    
    var player:Int = 0;
    var CPU:Int = 0;
    
    
    
    let  cards = ["ace", "king", "queen", "jack", "card10", "card9", "card8", "card7", "card6","card5", "card4", "card3", "card2"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        let rand1:Int = Int(arc4random_uniform(13))
        let rand2:Int = Int(arc4random_uniform(13))
        leftImageView.image = UIImage(named: cards[rand1])
        rightImageView.image = UIImage(named: cards[rand2])
        scoreUpdate(rand1: rand1, rand2: rand2)
        
    }
    func scoreUpdate(rand1:Int , rand2:Int){
        if rand1 < rand2 {
            player += 1;
            leftScore.text = String(player)
        }else if rand2 < rand1 {
            CPU += 1;
            rightScore.text = String(CPU)
        }else if rand2 == rand1 {
            return
        }
    }

}

