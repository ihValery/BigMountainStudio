//
//  OnDisappear.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct OnDisappear: View {
    @State private var showTip = false
    @State private var showButton = true

    var body: some View {
        VStack {
            TitleText("Триггеры")
            SubtitleText("On Disappear")
            BannerText("Когда вы делаете вид исчезающим, вы можете запустить анимацию того, как он исчезает.", backColor: .green, textColor: .white)
            
            Spacer()
            
            if showTip {
                VStack(spacing: 20) {
                    HStack {
                        Text("Примечание: Существуют лучшие способы сделать то, что делает этот пример.  Главное, что следует вынести из этого примера, это то, что onDisappear может вызвать изменение значения (showButton = true), которое затем вызовет анимацию в ответ. Также обратите внимание, что модификатор анимации находится вне операторов if. Находясь внутри операторов if, вы не увидите никакого эффекта при появлении и исчезновении представлений.")
                            .font(.title3)
                            .padding(.top, 10)
                        Spacer()
                    }
                    .foregroundColor(.white)
                    Spacer()
                    ButtonForExample(change: $showTip, color: .white)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 40).fill(Color.green).shadow(radius: 3).ignoresSafeArea())
                .frame(height: 500)
                
                .onDisappear {
                    showButton = true
                }
            }
            
            if showButton {
                HStack {
                    Button {
                        showButton = false
                        showTip = true
                    } label: {
                        Image(systemName: "info.circle")
                            .font(.title)
                    }
                    Spacer()
                }
                .padding(.horizontal)
            }
        }
        .animation(.easeInOut(duration: 0.42))
    }
}

struct Example_69_Previews: PreviewProvider {
    static var previews: some View {
        OnDisappear()
    }
}
