//
//  Example_67.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Example_67: View {
    @State private var isOn = false
    @State private var extraText = ""
    @State private var extraSlider: CGFloat = 50
    
    var body: some View {
        VStack {
            TitleText("Триггеры")
            SubtitleText("Toggle")
            BannerText("Тоггл можно также использовать для запуска анимации. Возможно, вы хотите включить или показать опции. Saturation - так же и блокирует фокус! Круто.", backColor: .green, textColor: .white)
            
            Toggle(isOn: $isOn) {
                Text("Дополнительные опции")
                    .font(.title2)
            }
            .padding()
            
            Group {
                VStack(spacing: 20) {
                    Image(systemName: "hammer.fill")
                    Text("Твои доп. опции")
                    TextField("Веедите опцию", text: $extraText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Slider(value: $extraSlider)
                }
                .font(.title2)
                .padding(30)
                .background(RoundedRectangle(cornerRadius: 25).fill(Color.green))
            }
            .padding(.horizontal)
            //Насыщенность также и блокирует фокус!
            .saturation(isOn ? 1 : 0)
            .opacity(isOn ? 1 : 0.25)
            .animation(.easeIn)
        }
    }
}

struct Example_67_Previews: PreviewProvider {
    static var previews: some View {
        Example_67()
    }
}
