//
//  Example_36.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Example_36: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            TitleText("Анимируемые свойства")
            SubtitleText("Frame or Scale Effect")
            BannerText("Вы можете анимировать размер объекта через параметры высоты и ширины модификатора рамки или scaleEffect", backColor: .blue, textColor: .white)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue.opacity(change ? 1 : 0.5))
//                .frame(width: CGFloat(change ? 100 : 300), height: CGFloat(change ? 100 : 250))
                .scaleEffect(change ? 1.5 : 0.1)
                .padding()
                .animation(.easeInOut)
            
            Spacer()
            
            BannerText("Обратите внимание, как это меняет расположение экрана. A scaleEffect НЕ изменяет макет", backColor: .blue, textColor: .white)
            
            ButtonForExample(change: $change, color: .blue)
        }
    }
}

struct Example_36_Previews: PreviewProvider {
    static var previews: some View {
        Example_36()
    }
}
