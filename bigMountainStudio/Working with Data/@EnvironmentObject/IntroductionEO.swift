//
//  IntroductionEO.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 02.08.2021.
//

import SwiftUI

class NameInfo: ObservableObject {
    @Published var name: String = ""
}

struct IntroductionEO: View {
    var body: some View {
        TabView {
            TabViewOne()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("1")
                }

            TabViewTwo()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("2")
                }
        }
        .environmentObject(NameInfo())
    }
}

struct TabViewOne: View {
    //Чтобы TabViewOne мог использовать объект среды, достаточно создать свойство САМОГО ТИПА (NameInfo),
    //и тогда он сможет получить доступ к данным И обновляться при их изменении
    @EnvironmentObject var nameInfo: NameInfo
    
    var body: some View {
        VStack {
            SubtitleText("TAB One")
            TitleText("@EnvironmentObject")
            SubtitleText("Введение")
            BannerText("Используйте модификатор environmentObject для добавления ObservableObjects в родительские представления.", backColor: .purple, textColor: .white)
            
            TextField("Name", text: $nameInfo.name)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
        }
    }
}

struct TabViewTwo: View {
    @EnvironmentObject var nameInfoDoesNotMatter: NameInfo
    
    var body: some View {
        VStack {
            SubtitleText("TAB Two")
            TitleText("@EnvironmentObject")
            SubtitleText("Введение")
            BannerText("Это представление может получить доступ к объекту окружения с помощью обертки свойства @EnvironmentObject.", backColor: .green, textColor: .white)
            
            SubtitleText("Имя, которое вы ввели на вкладке 1, было:")
            TitleText("\(nameInfoDoesNotMatter.name)")
            
            Spacer()
        }
    }
}

struct IntroductionEO_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IntroductionEO()
            TabViewOne()
                .environmentObject(NameInfo())
            TabViewTwo()
                .environmentObject(NameInfo())
        }
    }
}
