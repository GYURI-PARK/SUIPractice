//
//  ModalAlert.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/03/26.
//

import SwiftUI

struct ModalAlert: View {
    
    @State var isShowingModal: Bool = false
    @State var isShowingAlert: Bool = false
    
    var body: some View {
        
        VStack{
            Button{
                isShowingModal = true
            } label: {
                Text("Modal")
            }
            .sheet(isPresented: $isShowingModal) {
                ZStack {
                    Color.blue.ignoresSafeArea()
                    Text("Modal view")
                }
            }
            .padding()
            
            Button{
                isShowingAlert = true
            } label: {
                Text("Alert test")
            }
            .alert(isPresented: $isShowingAlert) {
                Alert(title: Text("this is alert"), primaryButton: .cancel(), secondaryButton: .default((Text("OK"))))
            }
            
        }
    }
}

struct ModalAlert_Previews: PreviewProvider {
    static var previews: some View {
        ModalAlert()
    }
}
