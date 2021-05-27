//
//  Example_43.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Example_43: View {
    @State private var change = false
    @State private var circleProgress: CGFloat = 1.0
    
    var body: some View {
        VStack {
            TitleText("Анимируемые свойства")
            SubtitleText("Trim")
            BannerText("Анимация обрезки круга - отличный способ показать прогресс.", backColor: .blue, textColor: .white)
            
            Circle()
                .trim(from: 0, to: circleProgress)
                .stroke(change ? Color.green : Color.blue,
                        style: StrokeStyle(lineWidth: 35, lineCap: CGLineCap.round))
                .rotationEffect(.degrees(-90))
                .padding(.horizontal, 40)
                .animation(.linear(duration: 0.7))
                
            Button("Показать") {
                change.toggle()
                circleProgress = change ? 0.25 : 1
            }
            .font(.largeTitle)
        }
    }
}

struct Example_43_Previews: PreviewProvider {
    static var previews: some View {
        Example_43()
    }
}
