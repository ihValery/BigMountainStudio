//
//  NL_Introduction_236.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 31.05.21.
//

import SwiftUI

struct NL_Introduction_236: View {
    var body: some View {
        NavigationView {
            VStack{
                SubtitleText("Introduction")
                BannerText("Используйте NavigationLink для перехода к новому представлению внутри NavigationView", backColor: .blue, textColor: .white)
                
                Spacer()
                //Определите текст и вид для места назначения
                NavigationLink("Parallax Effect", destination: ScrollView_77())
                    .font(.title)
                
                Spacer()
                BannerText("Это базовая реализация, использующая только текст и место назначения. Местом назначения может быть любое представление", backColor: .blue, textColor: .white)
            }
            .navigationTitle("NavigationLink")
        }
    }
}

struct NL_Introduction_236_Previews: PreviewProvider {
    static var previews: some View {
        NL_Introduction_236()
    }
}
