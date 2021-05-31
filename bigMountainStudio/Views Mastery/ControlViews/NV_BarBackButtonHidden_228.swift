//
//  NV_BarBackButtonHidden_228.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 31.05.21.
//

import SwiftUI

struct NV_BarBackButtonHidden_228: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.opacity(0.05)
                    .ignoresSafeArea()
                VStack {
                    ZStack {
                        Image(systemName: "chevron.backward.square")
                            .font(.largeTitle)
                        Image(systemName: "line.diagonal")
                            .font(.system(size: 50)).foregroundColor(.red)
                    }
                    SubtitleText("Back Button Hidden")
                    BannerText("Вы можете скрыть кнопку Назад в навигационной панели для представлений с помощью модификатора. (Код на следующей странице.) Это удобно в сценариях, когда вы предоставляете другую кнопку для навигации пользователя назад или хотите предоставить свою собственную пользовательскую кнопку назад (см. следующий пример для пользовательской кнопки назад).", backColor: .blue, textColor: .white)
                    Spacer()

                    //Используйте NavigationLink для перехода на новый экран.
                    NavigationLink("Пошли на второй экран", destination: BackButtonHiddenDetail())
                        .font(.title)
                    NavigationLink("Пошли на второйTwo экран", destination: BackButtonHiddenDetailTwo())
                        .font(.title)
                    Spacer()
                }
                .navigationTitle("Первый экран")
            }
        }
    }
}

struct BackButtonHiddenDetail: View {
    //Это позволит вам перемещаться в обратном направлении
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.opacity(0.05)
                .ignoresSafeArea()
            VStack {
                BannerText("Эта панель навигации не имеет кнопки Назад, потому что она была скрыта в этом представлении.", backColor: .blue, textColor: .white)
                Spacer()
                
                Button("Хочу назад") {
                    presentationMode.wrappedValue.dismiss()
                }
                .font(.title)
                Spacer()
            }
            
        }
        .navigationTitle("Второй экран")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
//        .navigationBarHidden(true)
        .onDisappear {
            print("Тут мы выгружаемся из памяти")
        }
    }
}

struct BackButtonHiddenDetailTwo: View {
    //Это позволит вам перемещаться в обратном направлении
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.opacity(0.05)
                .ignoresSafeArea()
            VStack {
                BannerText("Скройте системную кнопку Назад, а затем используйте модификатор панели инструментов, чтобы добавить ведущую кнопку.", backColor: .blue, textColor: .white)
                Spacer()
            }
        }
        .navigationTitle("Второй экран")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigation) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrowtriangle.backward")
                }
            }
        }
    }
}



struct NV_BarBackButtonHidden_228_Previews: PreviewProvider {
    static var previews: some View {
        NV_BarBackButtonHidden_228()
    }
}
