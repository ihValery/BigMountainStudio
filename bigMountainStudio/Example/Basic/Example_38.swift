//
//  Example_38.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Example_38: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            TitleText("Анимируемые свойства")
            SubtitleText("Scale From Anchors")
            BannerText("Вы можете масштабировать вокруг выбранного якоря. По умолчанию масштабируется от центрального якоря.", backColor: .blue, textColor: .white)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .scaleEffect(change ? 1 : 0.1, anchor: .topLeading)
                .padding()
                .animation(.easeIn)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .scaleEffect(change ? 1 : 0.1, anchor: .trailing)
                .padding()
                .animation(.easeOut)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .scaleEffect(change ? 1 : 0.1, anchor: .bottomTrailing)
                .padding()
                .animation(.linear)
            
            Spacer()
            ButtonForExample(change: $change, color: .blue)
        }
    }
}

struct Example_38_Previews: PreviewProvider {
    static var previews: some View {
        Example_38()
    }
}
