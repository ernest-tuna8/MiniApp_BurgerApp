//
//  ViewController2ElectricBoogaloo.swift
//  MiniApp_BurgerApp
//
//  Created by Tiger Coder on 11/4/20.
//  Copyright © 2020 clc babischkin. All rights reserved.
//

import UIKit
var incoming : Burger!
var cooked : String = "nil"
var type : String = "nil"

class ViewController2ElectricBoogaloo: UIViewController {
    @IBOutlet weak var chooseWiselyImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseWiselyImageView.image = UIImage(named:"Choose-wisely")

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
