//
//  NL_Customization_237.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 31.05.21.
//

import SwiftUI

struct NL_Customization_237: View {
    var body: some View {
        NavigationView {
            VStack{
                SubtitleText("Customization")
                BannerText("Вы можете настроить NavigationLink так же, как и кнопку.", backColor: .blue, textColor: .white)
                
                Spacer()
                //Определите текст и вид для места назначения
                NavigationLink(destination: ScrollView_77()) {
                    Text("Parallax Effect")
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 20)
                                        .shadow(color: .pink.opacity(0.5), radius: 8, x: 0.0, y: 0.0))
                }
                .accentColor(.pink)
                .padding()
                
                Spacer()
                
                NavigationLink(destination: Example_57_challenge()) {
                    HStack {
                        Text("Menu show bottom").font(.title)
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .padding()
                    .accentColor(.pink)
                }
                
                Spacer()
                BannerText("Совет: Старайтесь, чтобы ваши представления и модификаторы находились внутри замыкания. Как и в случае с кнопкой, все, что находится внутри, будет исчезать при нажатии.\nЗамыкание в конце - это параметр label. Это позволяет вам составить любое представление, по которому вы будете ориентироваться.", backColor: .blue, textColor: .white)
            }
            .navigationTitle("NavigationLink")
        }
    }
}

struct NL_Customization_237_Previews: PreviewProvider {
    static var previews: some View {
        NL_Customization_237()
    }
}
