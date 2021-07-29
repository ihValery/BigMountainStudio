//
//  Two-Way Binding with Picker.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 29.07.2021.
//

import SwiftUI

struct Two_Way_Binding_with_Picker: View {
    @State private var name = "Адриана"
    private let names = ["Катя", "Валерий", "Денис", "Дмитрий", "Ольга", "Адриана",
                         "Катерина", "Валера", "Дениска", "Дима", "Оля", "Чилентано"]
    
    var body: some View {
        VStack(spacing: 10) {
            TitleText("State - состояние")
            SubtitleText("Двустороннее связывание")
            BannerText("Каждый раз, когда пикер прокручивается, переменная состояния обновляется. Кнопка Reset может изменить значение переменной состояния, и пикер обновится.")

            Picker("Имя", selection: $name) {
                ForEach(names, id: \.self) { item in
                    Text(item)
                }
            }
            .labelsHidden()
                        
            ButtonData(name: "Сброс") {
                withAnimation(.easeOut) {
                    name = names[1]
                }
            }
            Spacer()
            BannerText("Текстовые представления могут иметь привязки только для чтения.")
    
            Text(name)
                .font(.title)
                .foregroundColor(.orange)
                .padding(.horizontal, 43)
        }
    }
}

struct Two_Way_Binding_with_Picker_Previews: PreviewProvider {
    static var previews: some View {
        Two_Way_Binding_with_Picker()
    }
}
