//
//  Example_66.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Example_66: View {
    @State private var stepperValue: CGFloat = 1
    
    var body: some View {
        VStack {
            TitleText("Триггеры")
            SubtitleText("Stepper")
            BannerText("Степпер увеличивает и уменьшает значения, которые могут быть применены к ряду модификаторов, а затем анимированы.", backColor: .green, textColor: .white)
            
            ZStack {
                ForEach(0...40, id: \.self) { _ in
                    Circle()
                        .foregroundColor(.green).opacity(0.2)
                        .frame(width: .random(in: 10...100),
                               height: .random(in: 10...100))
                        .position(x: .random(in: stepperValue...400),
                                  y: .random(in: stepperValue...400))
                        .animation(.default)
                }
            }
            
            Stepper("Мыльные пузыри", value: $stepperValue, in: 1...5)
                .padding(.horizontal)
        }
    }
}

struct Example_66_Previews: PreviewProvider {
    static var previews: some View {
        Example_66()
    }
}
