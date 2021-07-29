//
//  Working With Structs.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 30.07.2021.
//

import SwiftUI

struct Persona {
    var firstName = ""
    var lastName = ""
}

struct Working_With_Structs: View {
    @State private var fullname = Persona()
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("State - состояние")
            SubtitleText("Работа со структурами")
            BannerText("Вы можете использовать структуру как единственный источник истины")
            
            SubtitleText("Полное имя:")
            TitleText("\(fullname.firstName) \(fullname.lastName)")
            
            SubtitleText("Имя и фамилия находятся в одной структуре")
            VStack(spacing: 20) {
                TextField("first name", text: $fullname.firstName)
                TextField("last name", text: $fullname.lastName)
            }
            .font(.title2)
            .foregroundColor(.orange)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.horizontal)
            
            BannerText("Поскольку структуры являются типами значений, это делает их хорошими кандидатами для @State")
        }
    }
}

struct Working_With_Structs_Previews: PreviewProvider {
    static var previews: some View {
        Working_With_Structs()
    }
}
