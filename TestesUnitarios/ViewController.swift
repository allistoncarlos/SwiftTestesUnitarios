//
//  ViewController.swift
//  TestesUnitarios
//
//  Created by Alliston Aleixo on 01/02/17.
//  Copyright © 2017 Alliston Aleixo. All rights reserved.
//

import UIKit

public class ViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    public static func sum(_ num1: Int, _ num2: Int) -> Int {
        return num1 + num2;
    }
    
    public static func sumAsync(_ num1: Int, _ num2: Int, completionHandler: @escaping (_ result: Int) -> Void) {
        debugPrint("Iniciando soma");
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            completionHandler(self.sum(num1, num2));
        }
    }
}

