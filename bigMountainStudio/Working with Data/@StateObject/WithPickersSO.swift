//
//  WithPickersSO.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 30.07.2021.
//

import SwiftUI

class CarChosse: ObservableObject {
    @Published var cars = [""]
    @Published var selectCar = ""
    
    init() {
        //В этом сценарии я имитирую время, необходимое для получения данных, с задержкой в 2 секунды
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
            cars = ["Audi Q7", "Audi eTron", "Range Rover Sport", "Range Rover Velar",
                    "Tesla Plaid", "Tesla X", "Tesla Y"]
            selectCar = cars[0]
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                withAnimation(.easeOut) {
                    selectCar = cars[4]
                }
            }
        }
    }
}

struct WithPickersSO: View {
    @StateObject private var car = CarChosse()
    
    var body: some View {
        VStack {
            TitleText("StateObject")
            SubtitleText("C Picker")
            BannerText("Вот пример привязки свойства @StateObject к Picker.")
            
            GroupBox(label:
                        HStack {
                            Spacer()
                            Text("Выбери машину")
                                .foregroundColor(.orange)
                                .padding(.bottom)
                            Spacer()
                        }
                     , content: {
                        Picker("Car", selection: $car.selectCar) {
                            ForEach(car.cars, id: \.self) { item in
                                Text("\(item)")
                            }
                        }
                     })
                .padding()
            
            HStack {
                Text("Вы выбрали: ")
                Text("\(car.selectCar)")
                    .foregroundColor(.orange)
                Spacer()
            }
            .font(.title2)
            .padding(.horizontal, 30)
            
            Spacer()
        }
    }
}

struct WithPickersSO_Previews: PreviewProvider {
    static var previews: some View {
        WithPickersSO()
    }
}
