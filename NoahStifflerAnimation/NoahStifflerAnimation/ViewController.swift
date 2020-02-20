//
//  ViewController.swift
//  NoahStifflerAnimation
//
//  Created by Noah Stiffler on 2/14/20.
//  Copyright © 2020 Noah Stiffler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var backgroundPic: UIImageView!
    
    @IBAction func toggle(_ sender: Any) {
        if (imageView.isAnimating){
            imageView.stopAnimating()
        } else {
            imageView.startAnimating()
        }
    }
    
    @IBAction func backgroundToggle(_ sender: Any) {
        backgroundPic.isHidden.toggle()
    }
    
    @IBAction func setSpeed(_ sender: Any) {
        imageView.animationDuration = TimeInterval(3.0-slider.value)
        imageView.startAnimating()

        framesPerSecond.text = String(22 / imageView.animationDuration)
    }
    
    
    
    @IBOutlet weak var framesPerSecond: UILabel!
    
    override func viewDidLoad() {
   
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let animation: [UIImage] = [
            
        UIImage(named: "feelsgoodman")!,
        UIImage(named: "feelsgoodman1")!,
        UIImage(named: "feelsgoodman2")!,
        UIImage(named: "feelsgoodman3")!,
        UIImage(named: "feelsgoodman4")!,
        UIImage(named: "feelsgoodman5")!,
        UIImage(named: "feelsgoodman6")!,
        UIImage(named: "feelsgoodman7")!,
        UIImage(named: "feelsgoodman8")!,
        UIImage(named: "feelsgoodman9")!,
        UIImage(named: "feelsgoodman10")!,
        UIImage(named: "feelsgoodman11")!,
        UIImage(named: "feelsgoodman12")!,
        UIImage(named: "feelsgoodman13")!,
        UIImage(named: "feelsgoodman14")!,
        UIImage(named: "feelsgoodman15")!,
        UIImage(named: "feelsgoodman16")!,
        UIImage(named: "feelsgoodman17")!,
        UIImage(named: "feelsgoodman18")!,
        UIImage(named: "feelsgoodman19")!,
        UIImage(named: "feelsgoodman20")!,
        UIImage(named: "feelsgoodman21")!,
        ]
        
        imageView.animationImages = animation
        imageView.animationDuration = 1
        framesPerSecond.text = String(22)
    }


}

