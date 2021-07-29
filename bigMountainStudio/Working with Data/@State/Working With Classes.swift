//
//  Working With Classes.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 30.07.2021.
//

import SwiftUI

class NewPersona {
    var firstName = ""
    var lastName = ""
    
    init(first: String, last: String) {
        firstName = first
        lastName = last
    }
}

struct Working_With_Classes: View {
    @State private var fullname = NewPersona(first: "Valery", last: "ih")
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("State - состояние")
            SubtitleText("Работа с классом")
            BannerText("Класс может быть использован для односторонней привязки.")
            
            SubtitleText("Полное имя:")
            TitleText("\(fullname.firstName) \(fullname.lastName)")
            
            SubtitleText("Попробуйте обновить имя:")
            VStack(spacing: 20) {
                TextField("first name", text: $fullname.firstName)
                TextField("last name", text: $fullname.lastName)
            }
            .font(.title2)
            .foregroundColor(.orange)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.horizontal)
            
            Spacer()
            BannerText("Но это не будет работать для двусторонней привязки. Заметьте, что экран не обновляет имя.")
        }
    }
}

struct Working_With_Classes_Previews: PreviewProvider {
    static var previews: some View {
        Working_With_Classes()
    }
}
