//
//  Example_39.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Example_39: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            TitleText("Анимируемые свойства")
            SubtitleText("Corner Radius")
            BannerText("Вы предоставляете значение для установки радиуса угла представления. Изменение этого свойства может быть анимировано.", backColor: .blue, textColor: .white)
            
            RoundedRectangle(cornerRadius: change ? 0 : 50)
                .fill(Color.blue)
                .padding()
                .animation(.easeIn)
            
            RoundedRectangle(cornerRadius: change ? 0 : .infinity)
                .fill(Color.blue)
                .overlay(Text("Без анимации")
                            .foregroundColor(.white)
                            .font(.title))
                .padding()
            
            Rectangle()
                .fill(Color.blue)
                .cornerRadius(change ? 0 : .infinity)
                .overlay(Text(".infinity не работает")
                            .foregroundColor(.white)
                            .font(.title))
                .animation(.easeInOut)
                .padding(.horizontal)

            
            Spacer()
            ButtonForExample(change: $change, color: .blue)
        }
    }
}

struct Example_39_Previews: PreviewProvider {
    static var previews: some View {
        Example_39()
    }
}
