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
                
        springAnimationView.animation = animations[counter].nameAnimation
        springAnimationView.curve = animations[counter].curveName
        springAnimationView.force = animations[counter].forceValue
        springAnimationView.duration = animations[counter].durationValue
        springAnimationView.delay = animations[counter].delayValue
        
        counter += 1
    
        runButton.setTitle(animations[counter].nameAnimation, for: .normal)
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
