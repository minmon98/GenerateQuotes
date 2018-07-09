//
//  ChooseQouteType.swift
//  Project 1
//
//  Created by Minh Mon on 6/27/18.
//  Copyright © 2018 Minh Mon. All rights reserved.
//

import UIKit

class ChooseQouteType: UIViewController {
    
    var typeTag: Int = 0
    
    @IBAction func btnChoiceType_Clicked(_ sender: UIButton) {
        typeTag = sender.tag
        performSegue(withIdentifier: "segueCatToQoute", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "segueCatToQoute") {
            let destinationQoute = segue.destination as! ViewController
            destinationQoute.type = typeTag
        }
    }
}
