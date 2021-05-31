//
//  LongPressGesture.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct LongPressGesture: View {
    @State private var longPress = false
    @State private var doublePress = false
    
    var body: some View {
        VStack {
            VStack {
                TitleText("Триггеры")
                SubtitleText("Long Press Gesture")
                BannerText("Вы можете запустить анимацию жестом длительного нажатия.", backColor: .green, textColor: .white)
                Spacer()
                Circle()
                    .fill(longPress ? Color.blue : Color.green)
                    .frame(width: 150, height: 150)
                    .overlay(Text("длинное").font(.title2).opacity(longPress ? 1 : 0))
                    .overlay(Text("off").font(.title2).opacity(longPress ? 0 : 1))
                    .overlay(Circle()
                                .stroke(Color.black, lineWidth:longPress ? 3 : 0)
                                .scaleEffect(longPress ? 2 : 1)
                                .opacity(longPress ? 0 : 1))
                    .onLongPressGesture {
                        longPress.toggle()
                    }
                    .animation(.easeIn)
                Spacer()
            }
            
            VStack {
                SubtitleText("Double-Tap")
                BannerText("Подобно кнопке, вы можете реагировать на жесты тапа(count 2) и анимировать изменения в пользовательском интерфейсе.", backColor: .green, textColor: .white)
                Spacer()
                Circle()
                    .fill(doublePress ? Color.red : Color.green)
                    .frame(width: 150, height: 150)
                    .shadow(color: doublePress ? .red : .green, radius: 10)
                    .overlay(Text(!doublePress ? "двойное" : "off").font(.title2))
                    .onTapGesture(count: 2) {
                        doublePress.toggle()
                    }
                    .animation(.easeIn)
                Spacer()
            }
        }
    }
}

struct Example_73_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGesture()
    }
}
