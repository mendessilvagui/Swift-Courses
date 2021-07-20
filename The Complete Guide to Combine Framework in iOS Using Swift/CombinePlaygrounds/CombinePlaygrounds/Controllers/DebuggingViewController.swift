//
//  DebuggingViewController.swift
//  CombinePlaygrounds
//
//  Created by Guilherme on 20/07/21.
//

import UIKit
import Combine

class DebuggingViewController: UIViewController {

    private var cancellabe: AnyCancellable?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let publisher = (1...10).publisher
        
        self.cancellabe = publisher
            .breakpoint(receiveOutput: { value in
                return value > 9
            })
            .sink {
            print($0)
        }
    }
}
