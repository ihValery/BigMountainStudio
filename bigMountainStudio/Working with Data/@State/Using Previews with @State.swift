//
//  Using Previews with @State.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 30.07.2021.
//

import SwiftUI

struct Using_Previews_with__State: View {
    //Свойства @State должны быть публичными
    //Что бы иметь возможность выбора в превью
    @State var featureOne = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("State - состояние")
            SubtitleText("Предварительный просмотр")
            BannerText("Вы можете создать статические переменные @State в вашем Preview, чтобы тестировать с различными значениями.")
            
            Toggle("Особенность первая", isOn: $featureOne)
                .toggleStyle(SwitchToggleStyle(tint: .orange))
                .padding(.horizontal)
                .padding(.bottom)
        }
    }
}

struct Using_Previews_with__State_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Using_Previews_with__State()
                .previewLayout(.sizeThatFits)
            
            //Вы можете просто передать значение в инициализатор, если ваша переменная @State является публичной
            Using_Previews_with__State(featureOne: true)
                .previewLayout(.sizeThatFits)
        }
    }
}
