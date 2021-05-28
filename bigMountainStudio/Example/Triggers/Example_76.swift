//
//  Example_76.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 28.05.21.
//

import SwiftUI

struct Example_76: View {
    @State private var changeDegress = 0
    
    var body: some View {
        VStack {
            TitleText("Триггеры")
            SubtitleText("Rotation Gesture")
            BannerText("Используйте жест вращения для изменения угла обзора, и анимация сгладит эффект вращения.", backColor: .green, textColor: .white)
            Spacer()
        }
    }
}

struct Example_76_Previews: PreviewProvider {
    static var previews: some View {
        Example_76()
    }
}
