//
//  BounceView.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/18.
//

import Foundation
import SpriteKit
import GameKit

class NewGameScene: SKScene {

    let background = SKSpriteNode(imageNamed: "praha_1")
    var balls = [SKShapeNode]()

    override func didMove(to view: SKView) {
        scene?.size = view.bounds.size
        scene?.scaleMode = .aspectFill
        physicsWorld.gravity = .zero

        // background and World
        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
        background.zPosition = 1
        background.setScale(0.65)
        addChild(background)

        let colors: [SKColor] = [.blue, .green, .red, .yellow, .purple, .orange, .magenta, .cyan, .brown, .gray]

        for i in 0..<10 {
            let ball = SKShapeNode(circleOfRadius: 50)
            ball.fillColor = colors[i % colors.count]

            // 시작 위치
            ball.position.x = CGFloat(size.width / 2)
            ball.position.y = CGFloat(25 + 100.0)

            ball.zPosition = 10
            ball.physicsBody = SKPhysicsBody(circleOfRadius: 50 / 2)
            ball.physicsBody?.friction = 0
            ball.physicsBody?.restitution = 1
            ball.physicsBody?.linearDamping = 0
            ball.physicsBody?.angularDamping = 0
            ball.physicsBody?.allowsRotation = true
            addChild(ball)

            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                let dx = CGFloat(arc4random_uniform(20)) - 10
                let dy = CGFloat(arc4random_uniform(20)) - 10
                ball.physicsBody?.applyImpulse(CGVector(dx: dx*4, dy: dy*4))
            }

            balls.append(ball)
        }

        let frame = SKPhysicsBody(edgeLoopFrom: self.frame)
        frame.friction = 0
        self.physicsBody = frame
    }
}

