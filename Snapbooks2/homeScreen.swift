//
//  homeScreen.swift
//  Snapbooks2
//
//  Created by Byron Chan on 25/6/2018.
//  Copyright © 2018 Byron Chan. All rights reserved.
//

import UIKit

class homeScreen: UIViewController {


    @IBOutlet weak var receiptButton: UIButton!
    
    @IBAction func goToUploadReceipt(_ sender: UIButton) {
        performSegue(withIdentifier: "goToUploadReceipt", sender: self)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
