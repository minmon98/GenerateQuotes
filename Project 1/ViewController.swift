//
//  ViewController.swift
//  Project 1
//
//  Created by Minh Mon on 6/27/18.
//  Copyright © 2018 Minh Mon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    let amountOfType: Int = 3
    let amountOfBackground: Int = 3
    var type: Int = 0
    
    @IBOutlet weak var lblQoute: UILabel!
    @IBOutlet weak var imgBackground: UIImageView!
        
    @IBAction func Pressed(_ sender: Any) {
        let image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        self.present(image, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        generateQoute()
        NotificationCenter.default.addObserver(self, selector: #selector(self.showQouteWithNotification), name: NSNotification.Name(rawValue: "NewQoute"), object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showQouteWithNotification() {
        generateQoute()
    }

    func generateQoute() {
        
        let selectedIndex = Int(arc4random_uniform(UInt32(Data.qoutes[type].count)))
        
        let background = type
        
        lblQoute.text = Data.qoutes[type][selectedIndex]
        imgBackground.image = UIImage.init(named: "back\(background+1).jpg")
    }
}

