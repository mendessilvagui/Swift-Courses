//
//  ViewController.swift
//  HelloRxSwift
//
//  Created by Guilherme on 13/07/21.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = Observable.from([1,2,3,4,5])
    }


}

