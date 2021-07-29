//
//  State with Modifiers.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 29.07.2021.
//

import SwiftUI

struct State_with_Modifiers: View {
    @State private var isOn = false
        
    var body: some View {
        VStack(spacing: 20) {
            TitleText("State - состояние")
            SubtitleText("С модификаторами")
            BannerText("Вы можете использовать состояние для управления тем, как выглядят и изменяются ваши представления.")
            Spacer()
            
            Button(action: {
                isOn.toggle()
            }, label: {
                ZStack(alignment: isOn ? .trailing : .leading) {
                    HStack(spacing: 20) {
                        Text("ON").opacity(isOn ? 1 : 0)
                        Text("OFF").opacity(isOn ? 0 : 1)
                    }
                    .foregroundColor(.white)
                    .padding()
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.white)
                        .frame(width: 50, height: 45)
                }
            })
            .padding(.horizontal, 5)
            .background(
                RoundedRectangle(cornerRadius: 5)
                    .fill(isOn ? Color.green : .red)
            )
            
            Spacer()
            BannerText("Модификаторы кнопки меняются, потому что меняется значение переменной состояния. Все изменения управляются данными.")
        }
        .animation(.default)
    }
}

struct State_with_Modifiers_Previews: PreviewProvider {
    static var previews: some View {
        State_with_Modifiers()
    }
}
