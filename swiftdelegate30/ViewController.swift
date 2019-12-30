//
//  ViewController.swift
//  swiftdelegate30
//
//  Created by Student P_04 on 30/12/19.
//  Copyright © 2019 Felix ITs. All rights reserved.
//
//delegate design pattern
import UIKit

class ViewController: UIViewController,UpdateLabelTextDelegate {

    
    @IBOutlet weak var Label: UILabel!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let next = segue.destination as! NextViewController
        next.delegate = self
        

    }
    func updateLabelText(withText text: String)  {
        Label.text = text
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

