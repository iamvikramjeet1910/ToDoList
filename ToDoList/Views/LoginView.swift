//
//  LoginView.swift
//  ToDoList
//
//  Created by Vikram Kumar on 16/08/24.
//

import SwiftUI

struct LoginView: View {
    @State var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            
            VStack{
                // Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .pink)
                
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.white)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(title: "Log In", background: .blue){
                        //  Login Attempt
                        viewModel.login()
                        
                    }
                    .padding()
                }
                //.offset(y : -50)
                
                // Create Account
                
                VStack {
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView(viewModel: LoginViewViewModel())
}
