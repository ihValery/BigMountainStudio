//
//  NV_BarHidden_225.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 31.05.21.
//

import SwiftUI

struct NV_BarHidden_225: View {
    @State private var show = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.opacity(0.1)
                
                VStack {
                    Image(systemName: "globe")
                        .font(.largeTitle)
                    
                    TitleText("Navigation View")
                    SubtitleText("Navigation Bar Hidden")
                    BannerText("Если вы не хотите показывать панель навигации, вы можете использовать модификатор navigationBarHidden, чтобы скрыть ее.", backColor: .blue, textColor: .white)
                    
                    Toggle("Скрыть/показать", isOn: $show)
                        .toggleStyle(SwitchToggleStyle(tint: .blue))
                        .padding()
                    Spacer()
                }
            }
            //Обратите внимание, что модификатор navigationBarHidden находится ВНУТРИ NavigationView
            .navigationBarHidden(show)
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

struct NV_BarHidden_225_Previews: PreviewProvider {
    static var previews: some View {
        NV_BarHidden_225()
    }
}
