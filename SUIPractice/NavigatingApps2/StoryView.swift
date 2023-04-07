//
//  StoryView.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/07.
//

import SwiftUI


struct StoryView: View {

    var body: some View {
        NavigationStack {
            StoryPageView(story: story, pageIndex: 0)
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
