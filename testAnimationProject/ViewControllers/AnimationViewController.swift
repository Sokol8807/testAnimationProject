//
//  ViewController.swift
//  testAnimationProject
//
//  Created by Ilya Sokolov on 13.09.2022.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {
    let animations = Animation.getAnimationList()
    var counter = 0
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var runButton: UIButton!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func springButtonPressed(_ sender: UIButton) {
    
        guard let animatioName = animations.randomElement()?.nameAnimation else {return}
        guard let animationCurve = animations.randomElement()?.curveName else {return}
        guard let animationForceValue = animations.randomElement()?.forceValue else {return}
        guard let animationDurationValue = animations.randomElement()?.durationValue else {return}
        guard let animationDelay = animations.randomElement()?.delayValue else {return}

        springAnimationView.animation = animatioName.rawValue
        springAnimationView.curve = animationCurve.rawValue
        springAnimationView.force = animationForceValue
        springAnimationView.duration = animationDurationValue
        springAnimationView.delay = animationDelay
        
        runButton.setTitle(animatioName.rawValue, for: .normal)
        springAnimationView.animate()
        
        setupLable()
    }
    
    private func setupLable(){
        presetLabel.text = "preset:" + " " + springAnimationView.animation
        curveLabel.text = "curve:" + " " + springAnimationView.curve
        forceLabel.text = "force:" + " " + String(Float(springAnimationView.force))
        durationLabel.text = "duration" + " " + String(Float(springAnimationView.duration))
        delayLabel.text = "delay:" + " " + String(Float(springAnimationView.delay))
        
    }
}
