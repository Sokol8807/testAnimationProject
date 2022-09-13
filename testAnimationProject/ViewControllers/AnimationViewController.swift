//
//  ViewController.swift
//  testAnimationProject
//
//  Created by Ilya Sokolov on 13.09.2022.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {
    
    let animation = Animation.getAnimationList()
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var springButton: UIButton!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }

    @IBAction func springButtonPressed(_ sender: UIButton) {
        
        
        guard let animatioName = animation.first?.nameAnimation else {return}
        guard let animationCurve = animation.first?.curveName else {return}
        guard let animationForceValue = animation.first?.forceValue else {return}
        guard let animationDurationValue = animation.first?.durationValue else {return}
        guard let animationDelay = animation.first?.delayValue else {return}
        
        springAnimationView.animation = animatioName.rawValue
        springAnimationView.curve = animationCurve.rawValue
        springAnimationView.force = animationForceValue
        springAnimationView.duration = animationDurationValue
        springAnimationView.delay = animationDelay
        
        springButton.setTitle(animatioName.rawValue, for: .normal)
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
