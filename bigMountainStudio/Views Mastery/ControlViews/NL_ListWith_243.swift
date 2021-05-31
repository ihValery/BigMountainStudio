//
//  NL_ListWith_243.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 31.05.21.
//

import SwiftUI

struct NL_ListWith_243: View {
    @State var data = ["Молоко", "Хлеб", "Помидоры", "Кетчуп", "Огурцы", "Рис", "Бананы"]
    @State private var showNv = true
    
    var body: some View {
        NavigationView {
            VStack {
                List(data, id: \.self) { item in
                    
                    NavigationLink(destination: ShoppingDetail(shoppingItem: item)) {
                        Text(item)
                            .font(Font.system(size: 24))
                            .padding()
                    }
                }
                .listStyle(GroupedListStyle())
                .navigationTitle("Список")
                .navigationBarHidden(showNv)
                .toolbar {
                    ToolbarItem {
                        Button("+", action: { data.append("Новый продукт") })
                    }
            }
                Toggle(isOn: $showNv) { Text("Show navigation bar") }
                    .padding(.horizontal, 30)
            }
        }
    }
}

struct ShoppingDetail: View {
    var shoppingItem: String!
    
    var body: some View {
        VStack {
            BannerText("Бла бла бла", backColor: .green, textColor: .white)
            Spacer()
        }
        .navigationTitle(shoppingItem)
        .navigationBarHidden(true)
    }
}

struct NL_ListWith_243_Previews: PreviewProvider {
    static var previews: some View {
        NL_ListWith_243()
    }
}
