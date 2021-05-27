//
//  Example_31.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Example_31: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            TitleText("Анимируемые свойства")
            SubtitleText("Alignment Change")
            BannerText("Вы можете анимировать изменение выравнивания внутри VStack", backColor: .blue, textColor: .white)
            
            VStack(alignment: change ? .leading : .trailing) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                    .animation(.easeInOut)
                    .padding(.horizontal)
                //Для анимации нужен Spacer
                HStack {
                    Spacer()
                }
            }
            
            BannerText("Внутри HStack", backColor: .blue, textColor: .white)
            
            HStack(alignment: change ? .top : .bottom) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                    .animation(.easeIn)
                    .padding(.vertical)
                VStack {
                    Spacer()
                }
            }
            
            ButtonForExample(change: $change, color: .blue)
        }
    }
}

struct Example_31_Previews: PreviewProvider {
    static var previews: some View {
        Example_31()
    }
}
