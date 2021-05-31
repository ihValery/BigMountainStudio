//
//  NV_BarItems_226.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 31.05.21.
//

import SwiftUI

struct NV_BarItems_226: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.opacity(0.1)
                
                VStack {
                    Image(systemName: "globe")
                        .font(.largeTitle)
                        .padding(.top)
                    
                    TitleText("Navigation View")
                    SubtitleText("Navigation Bar Items")
                    BannerText("Вы можете добавить кнопки навигационной панели на ведущую или последующую (или обе) стороны навигационной панели.", backColor: .blue, textColor: .white)
                    
                    Spacer()
                }
                .navigationTitle("Navigation Bar Buttons")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {}, label: {
                            Image(systemName: "bell.fill")
                        })
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Actions") {}
                    }
                }
            }
            .ignoresSafeArea(edges: .bottom)
        }
        //Используйте accentColor в NavigationView для изменения цвета кнопок
        .accentColor(.red)
    }
}

struct NV_BarItems_226_Previews: PreviewProvider {
    static var previews: some View {
        NV_BarItems_226()
    }
}
