//
//  MagnificationGesture_75.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 28.05.21.
//

import SwiftUI

struct MagnificationGesture_75: View {
    @GestureState private var scale: CGFloat = 0
    @State private var endScale: CGFloat = 1
    
    var body: some View {
        VStack {
            TitleText("Триггеры")
            SubtitleText("Magnification Gesture")
            BannerText("Анимация может сгладить увеличение картинки.", backColor: .green, textColor: .white)
            SubtitleText("Zoom In")
            Spacer()
            
            Image("day")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 250)
                .scaleEffect(scale + endScale)
                .gesture(MagnificationGesture()
                            .updating($scale, body: { value, scale, transaction in
                                scale = value.magnitude
                            })
                            .onEnded({ value in
                                endScale = value.magnitude + endScale
                            }))
                .animation(.default)
            
            Spacer()
        }
    }
}

struct Example_75_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGesture_75()
    }
}
