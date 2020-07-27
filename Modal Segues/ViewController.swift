//
//  ViewController.swift
//  Modal Segues
//
//  Created by Student on 7/27/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textBox: UITextField!
    var words = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func segueButton(_ sender: Any) {
        self.words = textBox.text!
        performSegue(withIdentifier: "word", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! SecondViewController
        vc.word = self.words
    }
    
}

