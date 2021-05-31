//
//  NL_PopWithIsActive_240.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 31.05.21.
//

import SwiftUI

struct NL_PopWithIsActive_240: View {
    @State private var nav = false
    
    var body: some View {
        NavigationView {
            VStack{
                SubtitleText("Pop with isActive")
                BannerText("Изменив свойство, привязанное к isActive, на false, вы можете программно переместиться назад.", backColor: .blue, textColor: .white)
                
                Spacer()
                VStack {
                    //Навигационная ссылка здесь не имеет визуального представления, поэтому вы не увидите ее в пользовательском интерфейсе
                    NavigationLink(destination: NavLink_SecondView(nav: $nav), isActive: $nav, label: {})
                    
                    Button(action: {
                        nav.toggle()
                    }) {
                        Text("Пошли проверим")
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .padding(10)
                            .background(RoundedRectangle(cornerRadius: 20)
                                            .shadow(color: .pink.opacity(0.5), radius: 8, x: 0.0, y: 0.0))
                    }
                    
                    Text("Автоматически- \(nav.description)")
                }
                .font(.title)
                .foregroundColor(.pink)
                .padding()
                
                Spacer()
                BannerText("Выскакивание вида означает просто удаление его сверху, чтобы вы могли вернуться к предыдущему виду. Вы также можете выскочить непосредственно к корневому виду.", backColor: .blue, textColor: .white)
            }
            .navigationTitle("Automatic Navigation")
        }
    }
}

struct NavLink_SecondView: View {
    @Binding var nav: Bool
    
    var body: some View {
        VStack {
            Text("Автоматически- \(nav.description)")
            //Обратите внимание, что второй NavigationLink не нужно использовать параметр isActive.
            //Но вам нужно передать исходное свойство, связанное с isActive.
            NavigationLink("Го на третий", destination: NavLink_ThirdView(nav: $nav))
        }
        .font(.title)
        .navigationTitle("View 2")
    }
}
struct NavLink_ThirdView: View {
    @Binding var nav: Bool
    
    var body: some View {
        VStack {
            Text("Автоматически- \(nav.description)")
            Button("Переход на главный экран") {
                //Установив ту же связанную переменную, которая была связана с isActive,
                //обратно в false, вы можете вернуться к корню
                nav.toggle()
            }
        }
        .font(.title)
    }
}

struct NL_PopWithIsActive_240_Previews: PreviewProvider {
    static var previews: some View {
        NL_PopWithIsActive_240()
    }
}
