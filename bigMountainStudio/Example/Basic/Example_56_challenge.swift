//
//  Example_56_challenge.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Example_56_challenge: View {
    @State private var change = false
    @State private var text = ""
    
    var body: some View {
        ZStack {
            Color.init(red: 251.0/255.0, green: 255.0/255.0, blue: 255.0/255.0)
                .ignoresSafeArea()
            VStack {
                TitleText("Задание")
                SubtitleText("show login")
                Spacer()
                
                Text("Already have an account?")
                .font(.title)
                .padding()
                
                VStack {
                    Image(systemName: "lock.shield")
                        .font(.system(size: 30))
                    VStack {
                        TextField("User name", text: $text)
                        SecureField("Password", text: $text)
                    }
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                }
                .offset(x: change ? 0 : -400)
                .animation(.easeIn)
                
                Spacer()
                ButtonForExample(change: $change, color: .blue)
            }
        }
    }
}

struct Example_56_Previews: PreviewProvider {
    static var previews: some View {
        Example_56_challenge()
    }
}
