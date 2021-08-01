//
//  IntroductionSS.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 01.08.2021.
//

import SwiftUI

struct IntroductionSS: View {
//    @State private var textInput = ""
    
    var body: some View {
        NavigationView {
            VStack {
                SubtitleText("Введение")
                BannerText("Используйте @SceneStorage для сохранения данных только для одного экрана, которые будут сохраняться в течение всего времени работы приложения.", backColor: .purple, textColor: .white)
                
                NavigationLink(
                    destination: IntroDestination(),
                    label: {
                        Text("Введите данные")
                            .font(.title)
                            .foregroundColor(.purple)
                            .padding()
                    })
                Spacer()
            }
            .navigationTitle("@SceneStorage")
        }
    }
}

struct IntroDestination: View {
    @SceneStorage(wrappedValue: "", "textInput") var textInput
    @State var textTwo = ""
    
    var body: some View {
        VStack {
            BannerText("Введите данные здесь и затем перейдите. Они будут сохранены в переменной с помощью @SceneStorage.", backColor: .purple, textColor: .white)
                .layoutPriority(1)
            
            TextEditor(text: $textInput)
                .border(Color.purple)
                .padding()
            
            BannerText("Эти данные не будут сохранены, потому что они привязаны к переменной @State.", backColor: .purple, textColor: .white)

            TextEditor(text: $textTwo)
                .border(Color.purple)
                .padding()
        }
    }
}

struct IntroductionSS_Previews: PreviewProvider {
    @SceneStorage("textInput") var textInput = ""
    
    static var previews: some View {
//        Group {
//            IntroductionSS()
//
//            NavigationView {
        IntroDestination(textInput: .init(wrappedValue: "textInput", "textInput"), textTwo: "textTwo")
//            }
//        }
    }
}
