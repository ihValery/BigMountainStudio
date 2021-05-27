//
//  ContentView.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 26.05.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Title")
            SubtitleText("SubTitle")
            BannerText("Banner text")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

