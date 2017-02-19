//
//  ViewController.swift
//  Configgy
//
//  Created by Steve Baker on 2/18/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        view.backgroundColor = viewBackgroundColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func viewBackgroundColor() -> UIColor {

        guard let filePath = Bundle.main.path(forResource: "Info", ofType:"plist"),
            let plist = NSDictionary(contentsOfFile:filePath),
            let colorName = plist["ThemeBackgroundColor"] as? String
            else { return .white }

        if colorName == "blue" {
            return .blue
        }
        return .white
    }

}

