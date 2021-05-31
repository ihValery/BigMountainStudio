//
//  Example_40.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Example_40: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            VStack {
                TitleText("Анимируемые свойства")
                SubtitleText("Text Size")
                BannerText("Посмотрите, что происходит, когда вы пытаетесь анимировать размер шрифта в текстовом представлении.", backColor: .blue, textColor: .white)
            }
            Spacer()
            
            Text("Hello world!")
                .font(.system(size: change ? 70 : 20))
                .border(Color.blue)
                .animation(.easeInOut)
            Spacer()
            
            VStack {
                TitleText("Анимируемые свойства")
                SubtitleText("Text Size with ScaleEffect")
                BannerText("Давайте попробуем вместо этого масштабировать представление текста.", backColor: .blue, textColor: .white)
            }
            Spacer()
            Text("C большего размера")
                .font(.system(size: 60))
                .border(Color.blue)
                .scaleEffect(!change ? 0.3 : 1)
                .animation(.easeInOut)
            
            Spacer()
            ButtonForExample(change: $change, color: .blue)
        }
    }
}

struct Example_40_Previews: PreviewProvider {
    static var previews: some View {
        Example_40()
    }
}
