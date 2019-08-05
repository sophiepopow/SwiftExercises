//
//  main.swift
//  Robot
//
//  Created by Klaudia Popow on 02/08/2019.
//  Copyright © 2019 Klaudia Popow. All rights reserved.
//

import Foundation

enum Direction {
    case north, east, west, south
}
enum Movement {
    case left, right, advance
}

let point = (3,5)
let startingDirection = Direction.east

class Robot {
    var currentPoint: (Int, Int)
    var facingDirection: Direction
    
    init(startingPoint: (Int, Int), startingDirection: Direction) {
        self.currentPoint = startingPoint
        self.facingDirection = startingDirection
    }
    
    func move(_ movement: Movement) {
        switch movement {
        case .left:
            switch facingDirection {
            case .north:
                facingDirection = .west
            case .east:
                facingDirection = .north
            case .west:
                facingDirection = .south
            case .south:
                facingDirection = .east
            }
        case .right:
            switch facingDirection {
            case .north:
                facingDirection = .east
            case .east:
                facingDirection = .south
            case .west:
                facingDirection = .north
            case .south:
                facingDirection = .west
            }
        case .advance:
            var x = currentPoint.0
            var y = currentPoint.1
            
            switch facingDirection {
            case .north:
                y += 1
            case .east:
                x += 1
            case .west:
                x -= 1
            case .south:
                y -= 1
            }
            currentPoint = (x, y)
        }
        print(self)
    }
}

extension Robot: CustomStringConvertible {
    var description: String {
        return "{\(currentPoint.0),\(currentPoint.1)} \(facingDirection)"
    }
    
    
}

let robot = Robot(startingPoint: (1, 2), startingDirection: .north)
print(robot)
robot.move(.left)
robot.move(.advance)
robot.move(.right)
robot.move(.right)
robot.move(.advance)
robot.move(.advance)
