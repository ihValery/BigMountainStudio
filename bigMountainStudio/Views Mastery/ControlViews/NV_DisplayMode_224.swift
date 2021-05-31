//
//  NV_DisplayMode_224.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 31.05.21.
//

import SwiftUI

struct NV_DisplayMode_224: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.opacity(0.1)
//                    .ignoresSafeArea()
                
                VStack {
                    Image(systemName: "globe")
                        .font(.largeTitle)
                        .padding(.top, 25)
                    
                    TitleText("Navigation View")
                    SubtitleText("Display Mode")
                    BannerText("Для режима отображения навигационной панели вы можете указать, хотите ли вы, чтобы она была большой или маленькой (инлайн) или просто автоматической.", backColor: .blue, textColor: .white)

                    Spacer()
                }
                //Это создает заголовок в вашей навигационной панели
                .navigationTitle("Navigation Title")
                //Также обратите внимание, что стиль навигационной панели по умолчанию - большой.
                //Как это можно изменить?
                //Использование .inline приведет к отображению навигационной панели меньшего размера
                .navigationBarTitleDisplayMode(.inline)
            }
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

struct NV_DisplayMode_224_Previews: PreviewProvider {
    static var previews: some View {
        NV_DisplayMode_224()
    }
}
