//
//  Introducing @State.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 29.07.2021.
//

import SwiftUI

struct Introducing__State: View {
    @State private var name = "Mariana"
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("State - состояние")
            SubtitleText("Переменные структуры")
            BannerText("Добавьте @State перед переменной, чтобы сделать ее изменяемой.")
            
            ButtonData(name: "Изменить имя на 'Katya'") {
                name = "Katya"
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
            BannerText("Обратите внимание, что вы все еще можете передать значение для установки этой переменной состояния. Измените переменную на приватную, чтобы предотвратить это:")
        }
    }
}

struct Introducing__State_Previews: PreviewProvider {
    static var previews: some View {
        Introducing__State()
    }
}
