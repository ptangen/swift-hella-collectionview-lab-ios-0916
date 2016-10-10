//
//  Detail1ViewController.swift
//  HellaCollectionCells
//
//  Created by Paul Tangen on 10/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class Detail1ViewController: UIViewController {
    
    @IBOutlet var detailUIView: UIView!
    @IBOutlet weak var cellNumberLabel: UILabel!
    
    var cellNumber = 0
    var cellColor = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(" ****** cellColor: \(cellColor)")
        
        if self.cellColor == "purple" {
            detailUIView.backgroundColor = UIColor.purple
        } else {
            detailUIView.backgroundColor = UIColor.yellow
        }
        
        cellNumberLabel.text = String(cellNumber)
        
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
