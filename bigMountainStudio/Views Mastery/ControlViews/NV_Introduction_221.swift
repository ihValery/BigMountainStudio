//
//  NavigationView_221.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 31.05.21.
//

import SwiftUI

struct NV_Introduction_221: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.opacity(0.1)
                    .ignoresSafeArea()
                
                VStack {
                    Image(systemName: "globe")
                        .font(.largeTitle)
                        .padding(.top, 25)
                    
                    TitleText("Navigation View")
                    SubtitleText("Introduction")
                    BannerText("Наличие NavigationView ничего не покажет, если вы также не включите модификатор navigationTitle.", backColor: .blue, textColor: .white)

                    SubtitleText("С более крупной навигационной панелью вы можете сделать так, чтобы цвет фона расширялся под ней.")

                    Spacer()
                }
                //Это создает заголовок в вашей навигационной панели
                .navigationTitle("Navigation Title")
                //Также обратите внимание, что стиль навигационной панели по умолчанию - большой.
                //Как это можно изменить?
            }
//            .ignoresSafeArea(edges: .bottom)
        }
    }
}

struct NavigationView_221_Previews: PreviewProvider {
    static var previews: some View {
        NV_Introduction_221()
    }
}
