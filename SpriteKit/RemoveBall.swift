//
//  RemoveBall.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/18.
//

import Foundation
import SpriteKit
import GameKit

class RemoveScene: SKScene {

    let background = SKSpriteNode(imageNamed: "praha_1")

    override func didMove(to view: SKView) {
        scene?.size = view.bounds.size
        scene?.scaleMode = .aspectFill
        physicsWorld.gravity = .zero

        // background and World
        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
        background.zPosition = 1
        background.setScale(0.65)
        addChild(background)

        // ball creation
        for i in 1...10 {
            let ball = SKShapeNode(circleOfRadius: 50)
            ball.fillColor = .blue
            ball.position = CGPoint(x: CGFloat(i) * size.width / 11, y: 100)
            ball.zPosition = 10
            ball.physicsBody = SKPhysicsBody(circleOfRadius: 50 / 2)
            ball.physicsBody?.friction = 0
            ball.physicsBody?.restitution = 1
            ball.physicsBody?.linearDamping = 0
            ball.physicsBody?.angularDamping = 0
            ball.physicsBody?.allowsRotation = true
            addChild(ball)

            let dx = CGFloat(arc4random_uniform(20)) - 10
            let dy = CGFloat(arc4random_uniform(20)) - 10
            ball.physicsBody?.applyImpulse(CGVector(dx: dx, dy: dy))
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            // 10초 후 ball 제거
            for child in self.children {
                if let ball = child as? SKShapeNode {
                    let fadeOut = SKAction.fadeOut(withDuration: 2)
                    let remove = SKAction.removeFromParent()
                    let sequence = SKAction.sequence([fadeOut, remove])
                    ball.run(sequence)
                }
            }
        }

        let frame = SKPhysicsBody(edgeLoopFrom: self.frame)
        frame.friction = 0
        self.physicsBody = frame
    }
}
