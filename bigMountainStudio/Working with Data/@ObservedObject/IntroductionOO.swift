//
//  IntroductionOO.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 30.07.2021.
//

import SwiftUI

class Forecast: ObservableObject {
    @Published var sevenDays: [Weather] = []
    
    struct Weather: Identifiable {
        let id = UUID()
        var day: String = ""
        var icon: String = ""
    }
    
    init() {
        sevenDays = [Weather(day: "Sunday", icon: "cloud.snow.fill"),
                     Weather(day: "Monday", icon: "sun.min.fill"),
                     Weather(day: "Tuesday", icon: "sun.max.fill"),
                     Weather(day: "Wednesday", icon: "cloud.sun.fill"),
                     Weather(day: "Thursday", icon: "sun.min.fill"),
                     Weather(day: "Friday", icon: "cloud.drizzle.fill"),
                     Weather(day: "Saturday", icon: "cloud.sleet.fill"),]
    }
    
    func fetchAnotherWeek() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [self] in
            sevenDays.append(contentsOf: sevenDays)
        }
    }
}

struct IntroductionOO: View {
    @StateObject private var forecast = Forecast()
    @State private var showForecast = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(spacing: 24) {
                    SubtitleText("Введение")
                    BannerText("Передайте ссылку на ваш @StateObject в подпредставление, имеющее тип @ObservedObject.", backColor: .pink, textColor: .white)
                    
                    Text(forecast.sevenDays[0].day)
                    
                    Image(systemName: forecast.sevenDays[0].icon)
                        .font(.system(size: 120))
                        .foregroundColor(.pink)
                    
                    Button(action: {
                        showForecast = true
                        forecast.fetchAnotherWeek()
                    }, label: {
                        Text("Покажи 7 Day Forecast")
                            .font(.title)
                            .foregroundColor(.pink)
                    })
                    Spacer()
                    
                    BannerText("Вы используете @ObservedObject для наблюдения за изменениями в @StateObject родителя", backColor: .pink, textColor: .white)
                }
                
                if showForecast {
                    ForecastView(forecast: forecast, showForecast: $showForecast)
                }
            }
            .navigationTitle("@ObservedObject")
        }
    }
}

struct ForecastView: View {
    @ObservedObject var forecast: Forecast
    @Binding var showForecast: Bool
    
    var body: some View {
        VStack {
            List(forecast.sevenDays) { day in
                Label(
                    title: { Text(day.day)
                        .font(.title) },
                    icon: {
                        Image(systemName: day.icon)
                            .font(.title)
                            .foregroundColor(.pink)
                    })
            }
            Button("Закрыть", action: { showForecast.toggle() })
        }
        .font(.title)
    }
}

struct IntroductionOO_Previews: PreviewProvider {
    @StateObject private static var weather = Forecast()
    
    static var previews: some View {
        Group {
            IntroductionOO()
            
            ForecastView(forecast: Forecast(), showForecast: .constant(true))
            
            ForecastView(forecast: weather, showForecast: .constant(true))
        }
    }
}
