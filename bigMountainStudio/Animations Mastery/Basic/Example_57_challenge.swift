//
//  Example_57_challenge.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Example_57_challenge: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color.init(red: 237.0/255.0, green: 241.0/255.0, blue: 251.0/255.0)
                .ignoresSafeArea()
            VStack {
                TitleText("Задание")
                SubtitleText("show menu")
                    .padding(.bottom, 50)
                ButtonForExample(change: $change, color: .blue)
                Spacer()
                
                
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.blue)
                    .frame(maxWidth: UIScreen.main.bounds.width - 30, maxHeight: 300)
                    .overlay(
                        VStack {
                            Button(action: { change.toggle() }, label: {
                                Image(systemName: "chevron.compact.down")
                            })
                            .padding(4)
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                        }, alignment: .top)
                    .scaleEffect(change ? 0 : 1, anchor: .bottom)
                    .opacity(change ? 0 : 1)
                    .offset(y: change ? 100 : 0)
                    .animation(.easeInOut)
                
            }
            //            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct Example_57_challenge_Previews: PreviewProvider {
    static var previews: some View {
        Example_57_challenge()
    }
}
