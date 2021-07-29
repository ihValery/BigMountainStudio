//
//  Property Wrappers.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 29.07.2021.
//

import SwiftUI

struct Property_Wrappers: View {
    @State private var name = ""
    private let names = ["Катя", "Валерий", "Денис", "Дмитрий", "Ольга", "Адриана"]
        
    var body: some View {
        VStack(spacing: 20) {
            TitleText("State - состояние")
            SubtitleText("Property Wrappers")
            BannerText("Обертки свойств могут выполнять некоторую логику каждый раз, когда переменная изменяется. Мы не можем изменять значения переменных struct. Но @State запускает логику, которая позволяет изменять переменные.")
            
            ButtonData(name: "Рандомное имя") {
                name = names[.random(in: 0..<names.count)]
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
            BannerText("@State делает по крайней мере две вещи.\n1) Сохраняет наше значение вне структуры.\n2) Воссоздает наше представление без потери значения переменной состояния.")
        }
    }
}

struct Property_Wrappers_Previews: PreviewProvider {
    static var previews: some View {
        Property_Wrappers()
    }
}
