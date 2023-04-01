//
//  BlogUpload.swift
//  SUIPractice
//
//  Created by GYURI on 2023/04/01.
//

import SwiftUI

struct BlogUpload: View {
    var str = "A"
    
    var body: some View {
        VStack{
            Text(str)
            Button("Change") {
                str = "B"
            }
        }
    }
}

struct BlogUpload_Previews: PreviewProvider {
    static var previews: some View {
        BlogUpload()
    }
}
