//
//  Sliders.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Sliders: View {
    @State private var change: CGFloat = 50
    
    var body: some View {
        VStack {
            TitleText("Триггеры")
            SubtitleText("Slider")
            BannerText("При настройке слайдера может быть какой-то элемент пользовательского интерфейса, который вы изменяете, и который может быть анимирован.", backColor: .green, textColor: .white)
            
            HStack(spacing: 0) {
                Color.blue
                    .frame(width: change)
                Color.green
            }
            .padding(.vertical)
            .animation(.default)
            
            Slider(value: $change, in: 0...410, step: 1)
                .padding(.horizontal)
        }
    }
}

struct Example_65_Previews: PreviewProvider {
    static var previews: some View {
        Sliders()
    }
}
