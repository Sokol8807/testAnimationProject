//
//  Animation.swift
//  testAnimationProject
//
//  Created by Ilya Sokolov on 13.09.2022.
//

import SpringAnimation
import UIKit

struct Animation {
    let nameAnimation: AnimationPreset
    let curveName: AnimationCurve
    let forceValue = CGFloat.random(in: 0...2)
    let durationValue = CGFloat.random(in: 0...1)
    let delayValue = CGFloat.random(in: 0...1)
}

extension Animation {
    static func getAnimationList() -> [Animation] {
        let dataStore = DataStore.shared
        var animationsList: [Animation] = []
        
        let animations = dataStore.animations.shuffled()
        let curves = dataStore.curves.shuffled()
        
        
        for index in 0..<animations.count {
            let animation = Animation(
                nameAnimation: animations[index],
                curveName: curves[index])
            
            animationsList.append(animation)
        }
        
        return animationsList
    }
}

