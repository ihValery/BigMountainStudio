//
//  Introduction - Problem.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 30.07.2021.
//

import SwiftUI

//Обратите внимание, что эта модель данных - класс, а не структура
class CarData {
    var year = ""
    var make = ""
}

struct Introduction___Problem: View {
    @State var car = CarData()
    
    var body: some View {
        VStack {
            TitleText("Class Data")
            SubtitleText("Работа с классами")
            BannerText("Что происходит, когда вы пытаетесь использовать класс с @State?")
            
            GroupBox(label: Text("Введите марку и модель автомобиля")
                        .foregroundColor(.orange)) {
                VStack {
                    TextField("Год выпуска", text: $car.year)
                    TextField("Модель", text: $car.make)
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()
            
            GroupBox(label: Text("Информация о машине")
                        .foregroundColor(.orange)
                        .padding(.bottom, 10)) {
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Год выпуска: \(car.year)")
                        Text("Модель: \(car.make)")
                    }
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    Spacer()
                }
            }
            .padding()
            
            Spacer()
            BannerText("Представление Текст больше не обновляется. Как это исправить?")
        }
    }
}

struct Introduction___Problem_Previews: PreviewProvider {
    static var previews: some View {
        Introduction___Problem()
    }
}
