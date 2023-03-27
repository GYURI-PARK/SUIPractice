//
//  LoginTest.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/03/27.
//

import SwiftUI

struct LoginTest: View {
    
    @State var userID: String = ""
    @State var password: String = ""
    @State var isVisible: Bool = true
    @State var isShowingModal: Bool = false
    @State var isShowingAlert: Bool = false
    
    var body: some View {
        
        ZStack{
            
            Color.black.edgesIgnoringSafeArea(.all)
            VStack{
                
                Text("gyurisinZorba.com")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color.blue)
                
                
                    .padding(.bottom, 300)
                
                Label {
                    TextField("User ID", text: $userID)
                } icon: {
                    Image(systemName: "person.fill")
                }
                
                .frame(width: 300, alignment: .center)
                .padding()
                .background(RoundedRectangle(cornerRadius: 15).strokeBorder())
                .foregroundColor(Color.blue)
                
                
                HStack{
                    Label {
                        if isVisible{
                            TextField("Password", text: $password)
                        } else{
                            SecureField("Password", text: $password)
                        }
                    } icon: {
                        Image(systemName: "lock.fill")
                    }
                    
                    Button{
                        isVisible.toggle()
                    }label: {
                        if isVisible {
                            Image(systemName: "lock.open")
                        } else{
                            Image(systemName: "lock")
                        }
                    }
                    
                    
                    .sheet(isPresented: $isShowingModal) {
                        ZStack {
                            Color.blue.ignoresSafeArea()
                            Text("Doris 로그인 완료~~~")
                                .foregroundColor(.black)
                        }
                    }
                }
                .frame(width: 300, alignment: .center)
                .padding()
                .background(RoundedRectangle(cornerRadius: 15).strokeBorder())
                .foregroundColor(Color.blue)
                
                .padding(.bottom, 20)
                
                Button {
                    if userID == "Doris" && password == "1234" {
                        isShowingModal = true
                    } else {
                        isShowingModal = false
                        isShowingAlert = true
                    }
                }label: {
                    Text("Sign in")
                }
                .alert(isPresented: $isShowingAlert) {
                    Alert(title: Text("잘못된 로그인 정보입니다."), primaryButton: .cancel(), secondaryButton: .default((Text("OK"))))
                }
            }
        }
    }
}

struct LoginTest_Previews: PreviewProvider {
    static var previews: some View {
        LoginTest()
    }
}
