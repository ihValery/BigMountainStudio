//
//  Example_68.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Example_68: View {
    @State private var expand = false
    
    var body: some View {
        ZStack {
            
            Image(systemName: "sun.max.fill")
                .padding()
                .foregroundColor(.white)
                .background(Circle()
                                .fill(Color.green)
                                .scaleEffect(expand ? 20 : 1)
                                .ignoresSafeArea())
                .onAppear { expand.toggle() }
                .animation(.easeIn(duration: 3))
            
            VStack {
                TitleText("Триггеры")
                SubtitleText("On Appear")
                BannerText("Вы можете сделать так, чтобы анимация начиналась, как только появляется вид.", backColor: expand ? .white : .green, textColor: expand ? .green : .white)
                    .animation(.easeIn(duration: 3))
                
                Spacer()
            }
        }
    }
}

struct Example_68_Previews: PreviewProvider {
    static var previews: some View {
        Example_68()
    }
}
