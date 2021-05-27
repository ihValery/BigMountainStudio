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

struct TitleText: View {
    var title = ""
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
    }
    
    init(_ title: String) {
        self.title = title
    }
}

struct SubtitleText: View {
    var subTitle = ""
    
    var body: some View {
        Text(subTitle)
            .font(.title)
            .foregroundColor(.gray)
    }
    
    init(_ subTitle: String) {
        self.subTitle = subTitle
    }
}

struct BannerText: View {
    var text: String
    var backColor: Color
    var textColor: Color
    
    var body: some View {
        Text(text)
            .font(.title2)
            .frame(maxWidth: .infinity)
            .padding()
            .background(backColor)
            .foregroundColor(textColor)
    }
    
    init(_ text: String, backColor: Color = .orange, textColor: Color = .primary) {
        self.text = text
        self.backColor = backColor
        self.textColor = textColor
    }
}
