//
//  BounceView.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/18.
//

import SwiftUI
import SpriteKit

struct BounceView: View {
    //var scene = NewGameScene()
    var scene = RemoveScene()
    
    var body: some View {
        SpriteView(scene: scene)
            .ignoresSafeArea()
    }
}

struct BounceView_Previews: PreviewProvider {
    static var previews: some View {
        BounceView()
    }
}
