//
//  NL_Workaround_247.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 31.05.21.
//

import SwiftUI

struct NL_Workaround_247: View {
    @State private var navigate = false
    
    var body: some View {
        NavigationView {
            VStack {
                SubtitleText("Workaround with ToolbarItem")
                BannerText("Используйте кнопку в ToolbarItem и NavigationLink с isActive для навигации.", backColor: .blue, textColor: .white)
                Spacer()
                //Вы можете использовать NavigationLink без визуального элемента, чтобы сделать навигацию за вас
                NavigationLink(destination: NL_ListWith_243(), isActive: $navigate, label: {})
            }
            .toolbar {
                ToolbarItem {
                    Button(action: { navigate = true }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
            .font(.title)
            .navigationTitle("NavigationLink")
        }
    }
}

struct NL_Workaround_247_Previews: PreviewProvider {
    static var previews: some View {
        NL_Workaround_247()
    }
}
