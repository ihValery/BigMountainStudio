//
//  Two-Way Bindings using @State.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 29.07.2021.
//

import SwiftUI

struct Two_Way_Bindings_using__State: View {
    @State private var name = "Mariana"
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("State - состояние")
            SubtitleText("Двустороннее связывание")
            BannerText("Добавьте знак доллара ($) перед именем переменной, чтобы создать двустороннюю связь между элементом управления и переменной состояния.")
            
            TextField("Имя", text: $name)
                .font(.title)
                .foregroundColor(.orange)
                .padding(.horizontal)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
            
            HStack {
                Text("Name:")
                Spacer()
                Text(name)
            }
            .font(.title)
            .foregroundColor(.orange)
            .padding(.horizontal, 20)
            
            Spacer()
            BannerText("Двустороннее связывание означает, что когда переменная состояния обновляется, элемент управления обновляется. А когда элемент управления обновляет значение, обновляется переменная состояния")
        }
    }
}

struct Two_Way_Bindings_using__State_Previews: PreviewProvider {
    static var previews: some View {
        Two_Way_Bindings_using__State()
    }
}
