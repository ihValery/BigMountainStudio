//
//  Example_77.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 28.05.21.
//

import SwiftUI

struct Example_77: View {
    var body: some View {
        VStack {
            TitleText("Триггеры")
            SubtitleText("ScrollView")
            BannerText("Анимация не используется, ScrollView изменяет значения. Параллакса в качестве примера:", backColor: .green, textColor: .white)
                .padding(.bottom, -8)
            
            ScrollView(.vertical, showsIndicators: false) {
                ZStack {
                    GeometryReader { gr in
                        Image("night")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                        // Изменяя смещение по Y при прокрутке, вы можете изменить скорость прокрутки
                            .offset(y: -gr.frame(in: .global).origin.y / 2)
                    }
                    
                    VStack(spacing: 40) {
                        RoundedRectangle(cornerRadius: 25).frame(height: 200).opacity(0.3)
                        RoundedRectangle(cornerRadius: 25).frame(height: 200).opacity(0.3)
                        RoundedRectangle(cornerRadius: 25).frame(height: 200).opacity(0.3)
                        RoundedRectangle(cornerRadius: 25).frame(height: 200).opacity(0.3)
                        RoundedRectangle(cornerRadius: 25).frame(height: 200).opacity(0.3)
                    }
                    .padding(.horizontal, 30)
                }
                .ignoresSafeArea()
            }
        }
    }
}

struct Example_77_Previews: PreviewProvider {
    static var previews: some View {
        Example_77()
    }
}
