//
//  NL_WithisActive_238.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 31.05.21.
//

import SwiftUI

struct NL_WithisActive_238: View {
    @State private var nav = false
    
    var body: some View {
        NavigationView {
            VStack{
                SubtitleText("With isActive")
                BannerText("Вы можете автоматически заставить навигационную ссылку переходить к другому представлению, используя булево значение.", backColor: .blue, textColor: .white)
                
                Spacer()
                VStack {
                    //Навигационная ссылка здесь не имеет визуального представления, поэтому вы не увидите ее в пользовательском интерфейсе
                    NavigationLink(destination: BackDetail_238(nav: $nav), isActive: $nav, label: {})
                    
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
                BannerText("Обратите внимание, как SwiftUI автоматически сбрасывает nav.autoNav на false при переходе обратно на этот экран. Важно отметить, что SwiftUI изменяет привязку isActive на false при навигации назад. Подробнее см. на следующей странице.", backColor: .blue, textColor: .white)
            }
            .navigationTitle("Automatic Navigation")
        }
    }
}

struct BackDetail_238: View {
    //Это позволит вам перемещаться в обратном направлении
    @Environment(\.presentationMode) var presentationMode
    @Binding var nav: Bool
    
    var body: some View {
        ZStack {
            Color.green.opacity(0.05)
                .ignoresSafeArea()
            VStack {
                BannerText("Эта панель навигации не имеет кнопки Назад, потому что она была скрыта в этом представлении.", backColor: .blue, textColor: .white)
                Spacer()
                TitleText("Автоматически - \(nav)")
                    .foregroundColor(.pink)
                Spacer()
                
                Button("Хочу назад") {
                    presentationMode.wrappedValue.dismiss()
                }
                .font(.title)
                Spacer()
            }
            
        }
//        .navigationTitle("Второй экран")
//        .navigationBarTitleDisplayMode(.inline)
//        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .onDisappear {
            print("Тут мы выгружаемся из памяти")
        }
    }
}

struct NL_WithisActive_238_Previews: PreviewProvider {
    static var previews: some View {
        NL_WithisActive_238()
    }
}
