//
//  ViewController.swift
//  AppsSharedModuleApp
//
//  Created by Łukasz Śliwiński on 07/10/2020.
//  Copyright © 2020 com.plum.unittestingbyexample. All rights reserved.
//

import UIKit
import AppsSharedModule

class ViewController: UIViewController {

    override func viewDidLoad() {
        let x = TripExpirience(version: "test")

        print(x)
        print(SharedAPIKt.helloWorld())

        super.viewDidLoad()
    }
}
