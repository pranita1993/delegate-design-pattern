//
//  NextViewController.swift
//  swiftdelegate30
//
//  Created by Student P_04 on 30/12/19.
//  Copyright © 2019 Felix ITs. All rights reserved.
//

import UIKit
protocol UpdateLabelTextDelegate {
    func updateLabelText(withText:String)
}

class NextViewController: UIViewController {
    var delegate:UpdateLabelTextDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var textField: UITextField!

    @IBAction func sendButton(_ sender: UIButton) {
        delegate?.updateLabelText(withText: textField.text!)
        dismiss(animated: true, completion: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
