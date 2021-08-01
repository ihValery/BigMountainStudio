//
//  Not Available in init.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 02.08.2021.
//

import SwiftUI

class UserViewModel: ObservableObject {
    @Published var name: String = "ihValery"
}

struct Not_Available_in_init: View {
    @EnvironmentObject var viewModel: UserViewModel
    @State private var highlight = false
    
//    Error
//    init() {
//        if viewModel.name == "ihValery" {
//            highlight = true
//        }
//    }
    
    var body: some View {
        VStack {
            TitleText("@EnvironmentObject")
            SubtitleText("Not Available in init()")
            BannerText("Вы не можете получить доступ к объекту окружения из вашего представления init. Если вы пытаетесь это сделать, возможно, для вашей проблемы есть лучшее решение.")
            
            Text(viewModel.name)
                .padding()
                .background(viewModel.name == "ihValery" ? Color.orange : Color.clear)
                .font(.title)
            
            Spacer()
        }
    }
}

struct Not_Available_in_init_Previews: PreviewProvider {
    static var previews: some View {
        Not_Available_in_init()
            .environmentObject(UserViewModel())
    }
}
