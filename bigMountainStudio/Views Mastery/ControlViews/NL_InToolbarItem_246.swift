//
//  NL_InToolbarItem_246.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 31.05.21.
//

import SwiftUI

struct NL_InToolbarItem_246: View {
    var body: some View {
        NavigationView {
            VStack {
                SubtitleText("In ToolbarItem")
                BannerText("Предупреждение: Не помещайте NavigationLink внутрь ToolbarItem.", backColor: .red, textColor: .white)
                Spacer()
                ScrollView {
                    BannerText("Если не вдаваться в технические подробности, NavigationLink - это не тот тип представления, который SwiftUI знает, когда воссоздавать, а когда нет. Поэтому она постоянно воссоздается. Xcode не предупредит вас об этом. И, будь то намеренно или ошибка, она может переходить несколько раз или вообще не переходить в зависимости от версии iOS. Может показаться, что это работает в Preview, но обязательно протестируйте в симуляторе и на устройстве. Решение проблемы: Есть другой способ обойти эту проблему, который вы увидите на следующей странице.", backColor: .gray, textColor: .white)
                }
            }
            .toolbar {
                ToolbarItem { // Do not do this
                    NavigationLink(destination: Text("Настройки?")) {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
            .navigationTitle("NavigationLink")
            .font(.title)
        }
    }
}

struct NL_InToolbarItem_246_Previews: PreviewProvider {
    static var previews: some View {
        NL_InToolbarItem_246()
    }
}
