//
//  IntroductionStateObject.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 30.07.2021.
//

import SwiftUI

class CarDataThree: ObservableObject {
    @Published var year = ""
    @Published var make = ""
    
    init(year: String, make: String) {
        self.year = year
        self.make = make
    }
}

struct IntroductionStateObject: View {
    //Важно отметить, что это свойство автомобиля НЕ потеряет свои текущие значения,
    //если представление будет перерисовано/обновлено. @StateObject сохранит текущий объект.
    @StateObject private var car = CarDataThree(year: "2021", make: "Ramge Rover Velar")
    
    var body: some View {
        VStack {
            TitleText("Class Data")
            SubtitleText("Введение")
            BannerText("Используйте обертку свойства @StateObject для двустороннего связывания между классом и пользовательским интерфейсом")
            
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
            Text("Примечание: Важно отметить, что это свойство автомобиля НЕ потеряет свои текущие значения, если представление будет перерисовано/обновлено. @StateObject сохранит текущий объект.")
                .foregroundColor(.gray)
                .font(.title3)
                .padding(.horizontal)
        }
    }
}

struct IntroductionStateObject_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionStateObject()
    }
}
