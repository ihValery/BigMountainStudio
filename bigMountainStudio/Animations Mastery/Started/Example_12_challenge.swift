//
//  Exampal_12_challenge.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 26.05.21.
//

import SwiftUI

struct Example_12_challenge: View {
    @State private var change: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Пример 12")
            SubtitleText("Части анимации")
            BannerText("Кнопка изменяет переменную, которая затем изменяет свойство представления. Это изменение свойства вызывает изменение на экране")
            
            Circle()
                .foregroundColor(.orange)
                .frame(width: 100, height: 100)
                .offset(x: change ? 130 : -130, y: change ? 310 : 0)
                .animation(.easeInOut)
            
            Spacer()
            
            Button {
                change.toggle()
            } label: {
                Text("Показать")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
            }
        }
    }
}

struct Exempal_12_Previews: PreviewProvider {
    static var previews: some View {
        Example_12_challenge()
    }
}
