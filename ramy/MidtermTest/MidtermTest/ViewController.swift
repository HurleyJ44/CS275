//
//  ViewController.swift
//  MidtermTest
//
//  Created by Student on 10/4/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    //declare stuff aka when you drag it here
    @IBOutlet weak var rootViewLabel: UILabel!
    @IBOutlet weak var cheeseWheel: UIPickerView!
    @IBOutlet weak var rootNextButton: UIButton!

    //for cheeseWheel
    let pickerData = ["Mozzarella","Gorgonzola","Provolone","Brie","Maytag Blue","Sharp Cheddar","Monterrey Jack","Stilton","Gouda","Goat Cheese", "Asiago"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cheeseWheel.dataSource = self
        cheeseWheel.delegate = self

        rootViewLabel.text = "Which cheese do you please?"
        rootViewLabel.textAlignment = NSTextAlignment.center
        rootViewLabel.font = UIFont(name: rootViewLabel.font.fontName, size: 16)
        
        rootNextButton.setTitle("Next", for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }


}

