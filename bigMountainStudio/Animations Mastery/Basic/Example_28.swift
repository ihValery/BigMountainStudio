//
//  Example_28.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 26.05.21.
//

import SwiftUI

struct Example_28: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            TitleText("Анимируемые свойства")
            SubtitleText("Color")
            BannerText("Вы можете анимировать переход от одного цвета к другому", backColor: .blue, textColor: .white)
            
            SubtitleText("С анимацией")
                .padding(.bottom, -20)

            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(change ? .yellow : .blue)
                .animation(.easeInOut)
                .padding()

            SubtitleText("Без анимации")
                .padding(.bottom, -20)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(change ? .orange : .blue)
                .padding()
            
            SubtitleText("Вращение цветового круга")
                .padding(.bottom, -10)
            
            HStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .padding()
                    .hueRotation(.degrees(change ? 140 : 0)) // Вращение вокруг цветового круга
                    .animation(.easeInOut)
                Image("umbrella")
                    .resizable()
                    .scaledToFit()
                    .hueRotation(.degrees(change ? 180 : 0)) // Вращение вокруг цветового круга
                    .animation(.easeInOut)
            }
            
            ButtonForExample(change: $change, color: .blue)
        }
    }
}

struct Example_28_Previews: PreviewProvider {
    static var previews: some View {
        Example_28()
    }
}
