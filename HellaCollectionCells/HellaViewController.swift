//
//  ViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView1: UICollectionView!
    
    var sequenceF = [Int]()
    
    override func viewDidLoad() {
    // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "prototypeCell", for: indexPath)
        self.sequenceF = generateFibonacciSequence()
        
        if self.sequenceF.contains(indexPath.row) {
            cell.backgroundColor = UIColor.purple
        } else {
            cell.backgroundColor = UIColor.yellow
        }
        return cell
    }
    
    func generateFibonacciSequence() -> [Int] {
        var sequence = [Int]()
        
        for i in 0...17{
            if i == 0 {
                sequence.append(0)
            } else if i == 1 {
                sequence.append(1)
            } else {
                let valueBack2 = sequence[i-2];
                let valueBack1 = sequence[i-1];
                let sum = valueBack2 + valueBack1;
                sequence.append(sum);
            }
        }
        return sequence
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue1" {
            
            let cell = sender as! UICollectionViewCell
            let index = collectionView1.indexPath(for: cell)?.row
            
            if let destinationViewController = segue.destination as? Detail1ViewController {
                if let number = index {
                    destinationViewController.cellNumber = number
                    
                    if self.sequenceF.contains(number) {
                        destinationViewController.cellColor = "purple"
                    }
                }
            }
        }
    }


}

