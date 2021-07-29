//
//  Two-Way Binding with Toggle.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 29.07.2021.
//

import SwiftUI

struct Two_Way_Binding_with_Toggle: View {
    @State private var toggle = false
    
    var body: some View {
        ZStack {
            Color(toggle ? .white : .gray).opacity(0.3)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                TitleText("State - состояние")
                SubtitleText("Двустороннее связывание")
                BannerText("Для работы многих элементов управления требуется двусторонняя привязка")

                Spacer()
                
                Toggle(isOn: $toggle, label: {
                    Text("Цвет фона")
                        .font(.title)
                        .foregroundColor(.orange)
                })
                .toggleStyle(SwitchToggleStyle(tint: .orange))
                .padding()

                Spacer()
                BannerText("Весь вид аннулируется и перерисовывается заново при изменении переменной состояния")
            }
        }
    }
}

struct Two_Way_Binding_with_Toggle_Previews: PreviewProvider {
    static var previews: some View {
        Two_Way_Binding_with_Toggle()
    }
}
