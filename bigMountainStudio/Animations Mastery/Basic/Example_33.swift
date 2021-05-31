//
//  Example_33.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Example_33: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            TitleText("Анимируемые свойства")
            SubtitleText("Opacity")
            BannerText("Непрозрачность - это качество толщины, плотности или непрозрачности. Чем больше непрозрачность, тем более твердым кажется что-то (менее прозрачным)", backColor: .blue, textColor: .white)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .padding()
                .opacity(change ? 0 : 1)
                .animation(.easeInOut)
            
            ButtonForExample(change: $change, color: .blue)
        }
    }
}

struct Example_33_Previews: PreviewProvider {
    static var previews: some View {
        Example_33()
    }
}
