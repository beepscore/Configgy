//
//  ViewController.swift
//  Configgy
//
//  Created by Steve Baker on 2/18/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var label0: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        view.backgroundColor = viewBackgroundColor()
        label0.text = label0Text()
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
        } else if colorName == "orange" {
            return .orange
        } else {
            return .white
        }
    }

    func label0Text() -> String {
        guard let filePath = Bundle.main.path(forResource: "Info", ofType:"plist"),
            let plist = NSDictionary(contentsOfFile:filePath),
            let text = plist["ThemeText0"] as? String
            else { return "" }
        return text
    }

}

