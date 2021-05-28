//
//  Example_70.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 27.05.21.
//

import SwiftUI

struct Example_70: View {
    @State private var currentMenuY: CGFloat = 0
    //Сохраняет значения, связанные с жестом, который выполняется в данный момент,
    //как далеко вы смахнули, за исключением того, что оно будет сброшено до значения по умолчанию,
    //когда жест остановится.
    @GestureState private var menuOffset = CGSize.zero
    
    var body: some View {
        VStack {
            TitleText("Триггеры")
            SubtitleText("Drag Gesture")
            BannerText("Перетаскивание вида приведет к его перемещению, но вы можете добавить анимацию для плавного завершения перемещения вида в конечное место.", backColor: .green, textColor: .white)
            Spacer()
            
            VStack{
                Circle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                    .overlay(Image(systemName: "line.horizontal.3")
                                .font(.title)
                                .foregroundColor(.white)
                                .offset(x: 0, y: -30))
                    .offset(x: 0, y: -30)
                HStack { Spacer() }
                Spacer()
            }
            .frame(height: 500)
            .background(RoundedRectangle(cornerRadius: 40).fill(Color.green))
            .offset(x: 0, y: currentMenuY + menuOffset.height)
            .gesture(
                DragGesture()
                    .updating($menuOffset, body: { value, menuOffset, _ in
                        menuOffset = value.translation
                    })
                    .onEnded({ value in
                        if value.translation.height > 130 {
                            currentMenuY = 500
                        } else  {
                            currentMenuY = 0
                        }
                    })
            )
            .animation(.default)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct Example_70_Previews: PreviewProvider {
    static var previews: some View {
        Example_70()
    }
}
