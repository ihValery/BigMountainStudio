//
//  On Parent View.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 02.08.2021.
//

import SwiftUI

class JustForTabTwo: ObservableObject {
    @Published var name: String = "Эта строка взята из объекта @EnvironmentObject"
}

struct On_Parent_View: View {
    var body: some View {
        TabView {
            TabViewOneJust()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("1")
                }
            
            TabViewTwoJust()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("2")
                }
                //Обратите внимание, что мы используем модификатор environmentObject,
                //чтобы открыть этот наблюдаемый объект только для вкладки 2 и всех ее дочерних представлений
                .environmentObject(JustForTabTwo())
        }
    }
}

struct TabViewOneJust: View {
    var body: some View {
        VStack {
            SubtitleText("TAB One")
            TitleText("@EnvironmentObject")
            SubtitleText("О мнениях родителей")
            BannerText("В родительском представлении этого вида не установлен объект окружения. Поэтому у него нет доступа к каким-либо объектам окружения.", backColor: .purple, textColor: .white)

            Spacer()
        }
    }
}

struct TabViewTwoJust: View {
    var body: some View {
        NavigationView {
            VStack {
                SubtitleText("TAB Two")
                TitleText("@EnvironmentObject")
                SubtitleText("О мнениях родителей")
                BannerText("Поскольку объект окружения был добавлен только в это представление, доступ к нему могут получить только дочерние представления от этого родителя.", backColor: .green, textColor: .white)
                
                NavigationLink(
                    destination: TabTwoChildView(),
                    label: {
                        Text("TabTwoChildView")
                            .foregroundColor(.green)
                            .font(.title)
                            .padding()
                    })
                
                Text("Примечание: Это представление не использует объект окружения, но могло бы, если бы захотело.")
                    .foregroundColor(.gray)
                    .padding(10)
                Spacer()
            }
//            .navigationTitle("@EnvironmentObject")
        }
    }
}

struct TabTwoChildView: View {
    @EnvironmentObject var tabTwo: JustForTabTwo
    
    var body: some View {
        VStack(spacing: 40.0) {
            SubtitleText("TabTwoChildView")
            TitleText("@EnvironmentObject")
            SubtitleText("О мнениях родителей")
            BannerText("Это представление обращается к объекту окружения, установленному на родительском представлении вкладки.", backColor: .green, textColor: .white)
            
            Label(title: {
                    Text(tabTwo.name)
            },
                  icon: {
                    Image(systemName: "exclamationmark.triangle.fill")
                    .foregroundColor(.orange)
                  })
            
            Spacer()
            TextEditor(text: $tabTwo.name)
                .border(Color.purple, width: 2)
                .padding()
        }
        .navigationTitle("Tab 2 Child View")
    }
}

struct On_Parent_View_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            On_Parent_View()
            TabViewOneJust()
            TabViewTwoJust()
            TabTwoChildView()
                .environmentObject(JustForTabTwo())
        }
    }
}
