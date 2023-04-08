//
//  StoryPageView.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/08.
//

import SwiftUI

struct StoryPageView: View {
    
    let story: Story
    let pageIndex: Int
    
    var body: some View {
        VStack {
            ScrollView {
                Text(story[pageIndex].text)
            }
            
            
        }
    }
}

//struct StoryPageView_Previews: PreviewProvider {
//    static var previews: some View {
//        StoryPageView()
//    }
//}
