//
//  IntroductionAS.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 31.07.2021.
//

import SwiftUI

struct IntroductionAS: View {
    @AppStorage(wrappedValue: "k.0ff", "username") var username
    @AppStorage(wrappedValue: false, "background") var background
    //Этот инициализатор делает точно то же самое и может быть менее вводящим в заблуждение
//    @AppStorage("username") var username = "k.0ff"
//    @AppStorage("background") var background = false
    
    var body: some View {
        NavigationView {
            VStack {
                SubtitleText("Введение")
                BannerText("Вы можете использовать @AppStorage для хранения небольших объемов данных для вашего приложения.")
                
                HStack {
                    Text("username: ")
                        .foregroundColor(.gray)
                    Text("\(username)")
                        .foregroundColor(.orange)
                }
                .font(.title)
                .padding()
                
                NavigationLink(destination: AppStorageEdit()) {
                    Text("Обновить имя")
                        .font(.title2)
                        .foregroundColor(.orange)
                }
                Spacer()
                
                Toggle(isOn: $background, label: {
                    Text("Темный/светлый")
                        .foregroundColor(.gray)
                        .font(.title)
                })
                .toggleStyle(SwitchToggleStyle(tint: .orange))
                .padding()
            }
            .navigationTitle("@AppStorage")
        }
        .preferredColorScheme(background ? .light : .dark)
    }
}

struct AppStorageEdit: View {
    @AppStorage("username") var username: String!
    @State private var newUsername = ""
    @AppStorage("background") var background: Bool!
    
    var body: some View {
        VStack {
            BannerText("Чтобы обновить AppStorage, просто присвойте переменной новое значение.")
            
            VStack {
                Text("Введите новое имя пользователя:")
                    .foregroundColor(.gray)
                TextField("Hовое имя:", text: $newUsername)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()
            .font(.title2)
            
            Button(action: {
                username = newUsername
            }, label: {
                Text("Обновить имя")
                    .foregroundColor(.orange)
                    .font(.title2)
            })
            
            Spacer()
        }
        .navigationTitle("Обновление AppStorage")
        .preferredColorScheme(background ? .light : .dark)
    }
}

struct IntroductionAS_Previews: PreviewProvider {
    //Обязательно сделайте его статичным
    @AppStorage("username") static var username: String!
    
    static var previews: some View {
        username = "lkjhaj dowjemwjefnwacofjnfjq wjf90wje fmwqiqf[ei f"
        
        return Group {
            IntroductionAS()
            
            AppStorageEdit()
        }
    }
}
