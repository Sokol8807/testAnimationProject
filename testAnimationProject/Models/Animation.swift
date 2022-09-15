//
//  Animation.swift
//  testAnimationProject
//
//  Created by Ilya Sokolov on 13.09.2022.
//
struct Animation {
    let nameAnimation: String
    let curveName: String
    let forceValue: Double
    let durationValue: Double
    let delayValue: Double
}

extension Animation {
    static func getAnimationList() -> [Animation] {
        let dataStore = DataStore.shared
        var animationsList: [Animation] = []
        
        let animations = dataStore.animations.shuffled()
        let curves = dataStore.curves.shuffled()
        
        
        for index in 0..<animations.count {
            let animation = Animation(
                nameAnimation: animations[index].rawValue,
                curveName: curves[index].rawValue,
                forceValue: Double.random(in: 0...1),
                durationValue: Double.random(in: 0...1),
                delayValue: Double.random(in: 0...1))
                 
            animationsList.append(animation)
        }
        
        return animationsList
    }
}

