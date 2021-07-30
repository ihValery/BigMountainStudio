//
//  Using Previews with @StateObject.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 30.07.2021.
//

import SwiftUI

struct Using_Previews_with__StateObject: View {
    @StateObject var car = CarDataThree(year: "2021", make: "Range Rover Velar")
    
    var body: some View {
        VStack {
            TitleText("StateObject")
            SubtitleText("Превью")
            BannerText("Вы также можете передать инициализированный класс в @StateObject")
            
            SubtitleText("Выбранный автомобиль")
                .padding(.vertical)
            TitleText("\(car.year) \(car.make)")
            
            VStack(spacing: 20) {
                TextField("Год", text: $car.year)
                TextField("Модель", text: $car.make)
            }
            .font(.title2)
            .foregroundColor(.orange)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.horizontal)
        }
    }
}

struct Using_Previews_with__StateObject_Previews: PreviewProvider {
    //Объявляйте статические переменные в своем превью
    static var velar = CarDataThree(year: "2021", make: "Range Rover Velar")
    static var tesla = CarDataThree(year: "2021", make: "Tesla Plaid")
    
    static var previews: some View {
        Using_Previews_with__StateObject(car: velar)
            .previewLayout(.sizeThatFits)
        
        Using_Previews_with__StateObject(car: tesla)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
