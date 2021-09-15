//
//  ViewController.swift
//  clock
//
//  Created by Macbook Pro on 28.06.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var timer = Timer()

        override func viewDidLoad() {
            super.viewDidLoad()
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(self.tick) , userInfo: nil, repeats: true)
        }

        @objc func tick() {
            timeLabel.text = DateFormatter.localizedString(from: Date(),
                                                                  dateStyle: .none,
                                                                  timeStyle: .medium)
        }

}

