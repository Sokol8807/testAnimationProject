//
//  DataStore.swift
//  testAnimationProject
//
//  Created by Ilya Sokolov on 13.09.2022.
//

import SpringAnimation
final class DataStore {
    static let shared = DataStore()
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
