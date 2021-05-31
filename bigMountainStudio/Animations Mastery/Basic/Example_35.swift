//
//  Example_35.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Example_35: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            TitleText("Анимируемые свойства")
            SubtitleText("Rotation Around Anchors")
            BannerText("Вы можете вращаться вокруг выбранного вами якоря. По умолчанию вращение происходит вокруг центрального якоря", backColor: .blue, textColor: .white)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: 350, height: 200)
                .overlay(Text("Левый верхний")
                            .foregroundColor(.white)
                            .font(.title))
                .padding()
                .rotationEffect(.degrees(change ? 70 : 0), anchor: .topLeading)
                .animation(.easeInOut)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: 350, height: 200)
                .overlay(Text("Правый нижний")
                            .foregroundColor(.white)
                            .font(.title))
                .padding()
                .rotationEffect(.degrees(change ? 70 : 0), anchor: .bottomTrailing)
                .animation(.easeInOut)
            Spacer()
            
            ButtonForExample(change: $change, color: .blue)
        }
    }
}

struct Example_35_Previews: PreviewProvider {
    static var previews: some View {
        Example_35()
    }
}
