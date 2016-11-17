//
//  Extensions.swift
//  Flappy Bird
//
//  Created by Jesse Tipton on 11/17/16.
//  Copyright © 2016 MAD. All rights reserved.
//

import SpriteKit

extension SKColor {
    
    static func flappyBirdSkyColor() -> SKColor {
        let red: CGFloat = 113.0 / 255.0
        let green: CGFloat = 197.0 / 255.0
        let blue: CGFloat = 207.0 / 255.0
        let alpha: CGFloat = 1.0
        return SKColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
}

extension CGRect {
    
    var center: CGPoint {
        return CGPoint(x: self.midX, y: self.midY)
    }
    
}

func clamp(min: CGFloat, max: CGFloat, value: CGFloat) -> CGFloat {
    if value > max {
        return max
    } else if value < min {
        return min
    } else {
        return value
    }
}
