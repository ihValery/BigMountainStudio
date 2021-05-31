//
//  NL_WithSelection_242.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 31.05.21.
//

import SwiftUI

struct NL_WithSelection_242: View {
    @State var nav: String?
    
    var body: some View {
        NavigationView {
            VStack{
                SubtitleText("Navigation Link")
                BannerText("Вы можете автоматически заставить NavigationLink переходить к другому представлению, используя указанное значение. Когда параметр тега совпадает с параметром выбора, происходит навигация.", backColor: .blue, textColor: .white)
                
                Spacer()
                VStack {
                    Spacer()
                    Button(action: {
                        nav = "go go two"
                    }) {
                        Text("Пошли проверим")
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .padding(10)
                            .background(RoundedRectangle(cornerRadius: 20)
                                            .shadow(color: .green.opacity(0.5), radius: 8, x: 0.0, y: 0.0))
                    }
                    Spacer()
                    
                    Text("Автоматически- \(nav ?? "nil")")
                    Spacer()
                }
                .font(.title)
                .foregroundColor(.green)
                .padding()
                
                Spacer()
                BannerText("Обратите внимание, как SwiftUI автоматически сбрасывает значение nav обратно на nil при переходе к этому экрану.", backColor: .blue, textColor: .white)
                
                //В основном, когда значение параметра выбора совпадает со значением параметра тега, происходит навигация
                NavigationLink(destination: NavigationWithSelection(nav: $nav), tag: "go go two", selection: $nav, label: {})
                //Важно отметить, что SwiftUI изменяет то, что вы привязали к selection, обратно на nil, когда вы переходите назад
            }
            .navigationTitle("With Selection")
        }
    }
}

struct NavigationWithSelection: View {
    @Binding var nav: String?
    
    var body: some View {
        VStack {
            Text("Автоматически- \(nav ?? "NIL")")
        }
        .font(.title)
        .navigationTitle("With Selection")
    }
}

struct NL_WithSelection_242_Previews: PreviewProvider {
    static var previews: some View {
        NL_WithSelection_242()
    }
}
