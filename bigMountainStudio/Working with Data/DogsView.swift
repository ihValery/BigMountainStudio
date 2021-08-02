//
//  DogsView.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 02.08.2021.
//

import SwiftUI

struct DogsView: View {
    @StateObject private var oo = DogsOO()
    var body: some View {
        VStack {
            List(oo.data) { datum in
                Text(datum.name)
            }
        }
        .onAppear { oo.fetch() }
    }
}

class DogsOO: ObservableObject {
    @Published var data: [DogsDO] = []
    func fetch() {
        #if DEBUG // Макетные данные здесь
        data = [DogsDO(name: "Saint Bernard"),
                DogsDO(name: "English Mastiff"),
                DogsDO(name: "Newfoundland")]
        #else // Реальные данные, вызовы API и т.д.
        data = [DogsDO(name: "Dachshund"),
                DogsDO(name: "Boston Terrier"),
                DogsDO(name: "Pug")]
        #endif
    }
}

struct DogsDO: Identifiable {
    let id = UUID()
    var name: String
}

struct DogsView_Previews: PreviewProvider {
    static var previews: some View {
        DogsView()
    }
}
