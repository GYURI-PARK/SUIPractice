//
//  BlogUpload.swift
//  SUIPractice
//
//  Created by GYURI on 2023/04/01.
//

import SwiftUI

struct BlogUpload: View {
    var body: some View {
        VStack{
            Rectangle()
                .foregroundColor(.red)
                .frame(height: UIScreen.main.bounds.height / 2)
                
            Spacer(minLength: 0)
            
            Rectangle()
                .foregroundColor(.blue)
                .frame(height: UIScreen.main.bounds.height / 2)
        }
    }
}

struct BlogUpload_Previews: PreviewProvider {
    static var previews: some View {
        BlogUpload()
    }
}
