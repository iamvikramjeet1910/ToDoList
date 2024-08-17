//
//  RegisterView.swift
//  ToDoList
//
//  Created by Vikram Kumar on 16/08/24.
//

import SwiftUI

struct RegisterView: View {
    @State var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            // Header
            HeaderView(title: "Register", subtitle: "Start Organizing todos", angle: -15, background:.red)
            
            Form {
                TextField("Your Name", text: $viewModel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Your Email", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TLButton(title: "Create Account", background: .red){
                    //Attempt Register
                    viewModel.register()
                }
                .padding()
            }
            .offset(y: -50)
            Spacer()
        }
    }
}

#Preview {
    RegisterView(viewModel: RegisterViewViewModel())
}
