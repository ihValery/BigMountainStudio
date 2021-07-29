//
//  StructProperties.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 29.07.2021.
//

import SwiftUI

struct StructProperties: View {
    var name = "Mariana"
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("State - состояние")
            SubtitleText("Переменные структуры")
            BannerText("Переменные в структурах неизменяемы. Мутабельная означает, что переменная может изменяться. Неизменяемая означает, что переменная НЕ может измениться")
            
            ButtonData(name: "Изменить имя на 'Katya'") {
//                name = "Katya"
// Ошибка: Невозможно присвоить свойству: self является неизменяемым
            }
            Spacer()
            
            HStack {
                Text("Name:")
                Spacer()
                Text(name)
            }
            .font(.title)
            .foregroundColor(.orange)
            .padding(.horizontal, 43)
            
            Spacer()
            BannerText("Переменная имени доступна только для чтения и не может быть обновлена.")
        }
    }
}

struct StructProperties_Previews: PreviewProvider {
    static var previews: some View {
        StructProperties()
    }
}
