//
//  Example_32.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Example_32: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            TitleText("Анимируемые свойства")
            SubtitleText("In Geometry Reader")
            BannerText("Вы можете анимировать центральную точку (позицию) представления в координатном пространстве GeometryReader", backColor: .blue, textColor: .white)
            
            GeometryReader { gr in
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                    .position(change ? CGPoint(x: 60, y: 50) : CGPoint(x: 330, y: 430))
                    .animation(.easeInOut)
            }
            ButtonForExample(change: $change, color: .blue)
        }
    }
}

struct Example_32_Previews: PreviewProvider {
    static var previews: some View {
        Example_32()
    }
}
