//
//  Example_45.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Example_45: View {
    @State private var change = false
    var offsetValue: CGFloat = 200
    
    var body: some View {
        VStack {
            VStack {
                TitleText("Упражнение")
                SubtitleText("The Setup")
                BannerText("Первое, что вы хотите сделать, это построить конечное состояние вашей анимации. Это будет НАМНОГО проще, чем создавать начальное состояние и пытаться анимировать их вместе.", backColor: .red, textColor: .white)
            }
            Spacer()
            
            VStack(spacing: 1) {
                HStack(alignment: .bottom, spacing: 1) {
                    Rectangle()
                        .frame(width: 70, height: 35)
                        .offset(x: change ? 0 : -offsetValue)
                    Rectangle()
                        .frame(width: 35, height: 70)
                        .offset(y: change ? 0 : -offsetValue)
                }.offset(x: -18)
                
                HStack(alignment: .top, spacing: 1) {
                    Rectangle()
                        .frame(width: 35, height: 70)
                        .offset(y: change ? 0 : offsetValue)
                    Rectangle()
                        .frame(width: 70, height: 35)
                        .offset(x: change ? 0 : offsetValue)
                }.offset(x: 17)
            }
            .foregroundColor(change ? .red : .orange)
            .opacity(change ? 1 : 0)
            .rotationEffect(.degrees(change ? 0 : -90))
            .animation(.easeInOut)
            
            Spacer()
            ButtonForExample(change: $change, color: .red)
        }
    }
}

struct Example_45_Previews: PreviewProvider {
    static var previews: some View {
        Example_45()
    }
}
