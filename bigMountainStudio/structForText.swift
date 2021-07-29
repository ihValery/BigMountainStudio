//
//  structForText.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 26.05.21.
//

import SwiftUI

struct ButtonForExample: View {
    @Binding var change: Bool
    var color: Color
    
    var body: some View {
        Button {
            change.toggle()
        } label: {
            Text("Показать")
                .font(.largeTitle)
                .foregroundColor(color)
        }
    }
}

struct ButtonData: View {
    var name: String
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Text(name)
                .font(.title)
                .foregroundColor(.orange)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Capsule().stroke(Color.orange, lineWidth: 2))
                .padding(.horizontal)
        })
    }
}

struct TitleText: View {
    var title = ""
    
    init(_ title: String) {
        self.title = title
    }

    var body: some View {
        Text(title)
            .font(.largeTitle)
    }
}

struct SubtitleText: View {
    var subTitle = ""
    
    init(_ subTitle: String) {
        self.subTitle = subTitle
    }

    var body: some View {
        Text(subTitle)
            .font(.title)
            .foregroundColor(.gray)
    }
}

struct BannerText: View {
    var text: String
    var backColor: Color
    var textColor: Color
    
    init(_ text: String, backColor: Color = .orange, textColor: Color = .primary) {
        self.text = text
        self.backColor = backColor
        self.textColor = textColor
    }
    
    var body: some View {
        Text(text)
            .font(.title2)
            .frame(maxWidth: .infinity)
            .padding()
            .background(backColor)
            .foregroundColor(textColor)
    }
}
