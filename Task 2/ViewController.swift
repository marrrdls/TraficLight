//
//  ViewController.swift
//  Task 2
//
//  Created by Margarita on 26.1.25..
//

import UIKit

enum Lights {
    case red, yellow, green
}
class ViewController: UIViewController {

    var currentLight: Lights = .red
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    @IBAction func next(_ sender: Any) {
        startButton.setTitle("Next", for: .normal)
        switch currentLight {
        case .red:
            redView.alpha = 0.3
            yellowView.alpha = 1
            currentLight = .yellow
        case .yellow:
            yellowView.alpha = 0.3
            greenView.alpha = 1
            currentLight = .green
        case .green:
            greenView.alpha = 0.3
            redView.alpha = 1
            currentLight = .red
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        
        startButton.layer.cornerRadius = 10
        startButton.setTitle("Start", for: .normal)
        // Do any additional setup after loading the view.
    }


}

