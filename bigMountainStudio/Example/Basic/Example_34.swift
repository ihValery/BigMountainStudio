//
//  Example_34.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Example_34: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            TitleText("Анимируемые свойства")
            SubtitleText("Rotation Effect")
            BannerText("Вращения также можно анимировать", backColor: .blue, textColor: .white)
            Spacer()
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: 350, height: 200)
                .padding()
                .rotationEffect(change ? .degrees(0) : .degrees(120))
                .animation(.easeInOut)
            Spacer()
            
            ButtonForExample(change: $change, color: .blue)
        }
    }
}

struct Example_34_Previews: PreviewProvider {
    static var previews: some View {
        Example_34()
    }
}
