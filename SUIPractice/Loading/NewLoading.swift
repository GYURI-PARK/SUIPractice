//
//  NewLoading.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/17.
//

import SwiftUI

struct NewLoading: View {
    
    @State private var isLoading = false

        var body: some View {
            ZStack {
                SpreadView()
                
                if isLoading {
                    
                    MyLoadingView()
                    
                }
            }
            .onAppear { startFakeNetworkCall()}
        }
    func startFakeNetworkCall() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            isLoading = false
        }
    }
}

struct MyLoadingView: View {
    var body: some View{
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                .scaleEffect(10)
        }
    }
}

struct NewLoading_Previews: PreviewProvider {
    static var previews: some View {
        NewLoading().previewInterfaceOrientation(.landscapeLeft)
    }
}
