//
//  RotationGesture_76.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 28.05.21.
//

import SwiftUI

struct RotationGesture_76: View {
    @State private var changeDegress: Double = 0
    
    var body: some View {
        VStack {
            TitleText("Триггеры")
            SubtitleText("Rotation Gesture")
            BannerText("Используйте жест вращения для изменения угла обзора, и анимация сгладит эффект вращения.", backColor: .green, textColor: .white)
            Spacer()
            
            ZStack {
                Image(systemName: "gear")
                    .font(.system(size: 300))
                    .rotationEffect(.degrees(changeDegress))
                    .offset(y: -80)
                    .gesture(RotationGesture()
                                .onChanged({ angle in
                                    changeDegress = angle.degrees
                                }))
                
                Image(systemName: "gear")
                    .font(.system(size: 150))
                    .rotationEffect(.degrees(-changeDegress))
                    .offset(x: 105, y: 125)
               
                Image(systemName: "gear")
                    .font(.system(size: 100))
                    .rotationEffect(.degrees(changeDegress))
                    .offset(x: 20, y: 220)
            }
            .animation(.default)
            .foregroundColor(.green)
            Spacer()
        }
    }
}

struct Example_76_Previews: PreviewProvider {
    static var previews: some View {
        RotationGesture_76()
    }
}
