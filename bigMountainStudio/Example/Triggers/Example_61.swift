//
//  Example_61.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Example_61: View {
    @State private var change = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack {
                TitleText("Триггеры")
                SubtitleText("Buttons")
                BannerText("Вы уже много раз видели этот пример. Нажатие кнопки запускает начало анимации", backColor: .green, textColor: .white)
                Spacer()
            }
            
            //модификатор анимации находится в группе, все внутри нее будет анимировано
            Group {
                Button(action: { change.toggle() }) {
                    Image(systemName: "bag.badge.plus")
                        .padding(20)
                        .rotationEffect(.degrees(change ? 0 : 90))
                }
                .background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                .offset(x: change ? -150 : 0)
                .opacity(change ? 1 : 0)
                
                Button(action: { change.toggle() }) {
                    Image(systemName: "gauge.badge.plus")
                        .padding(20)
                        .rotationEffect(.degrees(change ? 0 : 90))
                }
                .background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                .offset(x: change ? -110 : 0, y: change ? -110 : 0)
                .opacity(change ? 1 : 0)
                
                Button(action: { change.toggle() }) {
                    Image(systemName: "calendar.badge.plus")
                        .padding(20)
                        .rotationEffect(.degrees(change ? 0 : 90))
                }
                .background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                .offset(y: change ? -150 : 0)
                .opacity(change ? 1 : 0)
                
                Button(action: { change.toggle() }) {
                    Image(systemName: "plus")
                        .padding(20)
                        .rotationEffect(.degrees(change ? 45 : 0))
                }
                .background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
            }
            .padding(.trailing, 30)
            .accentColor(.white)
            .font(.title)
            .animation(.easeOut)
        }
    }
}

struct Example_61_Previews: PreviewProvider {
    static var previews: some View {
        Example_61()
    }
}
