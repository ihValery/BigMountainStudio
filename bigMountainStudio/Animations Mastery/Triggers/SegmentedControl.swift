//
//  SegmentedControl.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct SegmentedControl: View {
    @State private var segment = 0
    
    var body: some View {
        VStack {
            TitleText("Триггеры")
            SubtitleText("Segmented Control")
            BannerText("Сегментированный элемент управления (picker) может также запускать анимацию, например, сдвигать виды на место и обратно.", backColor: .green, textColor: .white)
            
            Picker("День и ночь", selection: $segment) {
                Text("День 🌕").tag(0)
                Text("Ночь 🌑").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            GeometryReader { gr in
                Image("day")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: gr.size.width, height: gr.size.height)
                    .cornerRadius(25)
                    .offset(x: segment == 0  ? 0 : -gr.size.width - 50, y: 0)
                    .shadow(radius: 8)
                
                Image("night")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: gr.size.width, height: gr.size.height)
                    .cornerRadius(25)
                    .offset(x: segment == 1  ? 0 : gr.size.width + 50, y: 0)
                    .shadow(radius: 8)
            }
            .padding(.horizontal)
            .animation(.easeInOut)
        }
    }
}

struct Example_63_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControl()
    }
}
