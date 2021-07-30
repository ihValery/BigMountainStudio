//
//  Binding to Classes.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 30.07.2021.
//

import SwiftUI

//Превратить в наблюдаемый объект
class CarDataNew: ObservableObject {
    @Published var year = ""
    @Published var make = ""
}

struct Binding_to_Classes: View {
    @StateObject var car = CarDataNew()
    
    var body: some View {
        VStack {
            TitleText("Class Data")
            SubtitleText("Работа с классами")
            BannerText("Шаг 1: Соответствие ObservableObject.\nШаг 2: Используйте @StateObject.\nШаг 3: Опубликуйте свойства, которые будут меняться")
            
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
            Text("Примечание: @StateObject используется только для сохранения классов, но не структур")
                .foregroundColor(.gray)
                .font(.title3)
                .padding(.horizontal)
        }
    }
}

struct Binding_to_Classes_Previews: PreviewProvider {
    static var previews: some View {
        Binding_to_Classes()
    }
}
