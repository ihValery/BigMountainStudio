//
//  Example_30.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Example_30: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            TitleText("Анимируемые свойства")
            SubtitleText("Offset")
            BannerText("Анимируйте расположение вида с помощью координат X и Y", backColor: .blue, textColor: .white)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .offset(x: change ? -140 : 140, y: 0)
                .animation(.easeInOut)
            
            BannerText("Смещение также использует объект CGSize. Ширина с положительным значением перемещается вправо, отрицательные значения - влево. Для высоты положительные значения перемещаются вверх, отрицательные - вниз.", backColor: .blue, textColor: .white)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .offset(change ? CGSize(width: -140, height: 0) : CGSize(width: 140, height: 0))
                .animation(.easeIn)
            
            ButtonForExample(change: $change, color: .blue)
        }
    }
}

struct Example_30_Previews: PreviewProvider {
    static var previews: some View {
        Example_30()
    }
}
