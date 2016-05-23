//
//  ViewController.swift
//  RxSwift-iOS7
//
//  Created by Shinichiro Oba on 5/23/16.
//  Copyright © 2016 Shinichiro Oba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.rx_text.asDriver()
            .map { "'\($0)'" }
            .drive(label.rx_text)
            .addDisposableTo(disposeBag)
    }
}

