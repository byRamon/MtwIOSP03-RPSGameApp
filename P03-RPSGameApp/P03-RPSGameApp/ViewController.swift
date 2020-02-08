//
//  ViewController.swift
//  P03-RPSGameApp
//
//  Created by ByRamon on 2/8/20.
//  Copyright © 2020 ByRamon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnRockClick(_ sender: UIButton) {
        let controller: ResultsViewController
        controller = storyboard?.instantiateViewController(withIdentifier:
        "ResultsViewController") as! ResultsViewController
        //Pass data to destination viewcontroller. ResultsViewController must be declare myvar as int.
        controller.myvar = 1 //pass data.
        present(controller, animated: true, completion: nil)
    }
    @IBAction func btnPaperClick(_ sender: UIButton) {
        let controller: ResultsViewController
        controller = storyboard?.instantiateViewController(withIdentifier:
        "ResultsViewController") as! ResultsViewController
        //Pass data to destination viewcontroller. ResultsViewController must be declare myvar as int.
        controller.myvar = 2 //pass data.
        present(controller, animated: true, completion: nil)
    }
    @IBAction func btnScissorsClick(_ sender: UIButton) {
        let controller: ResultsViewController
        controller = storyboard?.instantiateViewController(withIdentifier:
        "ResultsViewController") as! ResultsViewController
        //Pass data to destination viewcontroller. ResultsViewController must be declare myvar as int.
        controller.myvar = 3 //pass data.
        present(controller, animated: true, completion: nil)
    }
    
}

