//
//  Mock Data - View.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 02.08.2021.
//

import SwiftUI

struct Mock_Data___View: View {
    @StateObject var oo = BookListOO()
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Архитектура")
            SubtitleText("Инсценировка данных")
            BannerText("Наследование и переопределение - это одна из стратегий для имитации запросов на выборку.")
            
            List(oo.data) { item in
                Text(item.name)
            }
            
            Spacer()
        }
        .font(.title)
        
        .onAppear {
            oo.fetch()
        }
    }
}

class BookListOO: ObservableObject {
    @Published var data: [BooksDO] = []
    
    func fetch() {
        // Call API
    }
}

class MockBookListOO: BookListOO {
    override func fetch() {
        // Use mock data while creating the view
        data = [BooksDO(name: "SwiftUI Views Mastery"),
                BooksDO(name: "SwiftUI Animations Mastery"),
                BooksDO(name: "Combine Mastery in SwiftUI"),
                BooksDO(name: "Working with Data in SwiftUI")]
    }
}

struct BooksDO: Identifiable {
    var id = UUID().uuidString
    var name: String
}

struct Mock_Data___View_Previews: PreviewProvider {
    static var previews: some View {
        Mock_Data___View(oo: MockBookListOO())
    }
}
