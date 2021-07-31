//
//  Storing a Struct.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 31.07.2021.
//

import SwiftUI

struct Storing_a_Struct: View {
    @AppStorage("userData") var userData = UserAS(name: "Valery", age: 36, dev: "Junior").encode()!
    @State private var name = ""
    @State private var age = 0
    @State private var dev = ""
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("AppStorage")
            SubtitleText("Хранение структуры")
            BannerText("Поскольку вы можете хранить Данные, вы можете хранить целую структуру в AppStorage.")
            
            Text("Что храниться в AppStorage:")
                .font(.title2)
                .foregroundColor(.gray)
            
            VStack {
                Text(name)
                Text("\(age)")
                Text(dev)
            }
            .font(.title2)
            .foregroundColor(.orange)
            
            Spacer()
        }
        .onAppear {
            getAppStorageData()
        }
    }
    
    func getAppStorageData() {
        if let user = UserAS.decode(userData) {
            name = user.name
            age = user.age
            dev = user.dev
        }
    }
}

//Убедитесь, что вы используете здесь Codable
//Это будет структура, которую я храню в AppStorage как тип данных.
//Я поместил сюда функции кодирования и декодирования для удобства, но вы можете поместить их куда угодно или даже адаптировать их для использования дженериков.
struct UserAS: Codable {
    var name = ""
    var age = 0
    var dev = ""
    
    //Эта функция кодирует struct в тип данных. Возвращаемое значение - это то, что будет храниться в AppStorage.
    func encode() -> Data? {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(self) {
            return encoded
        } else {
            return nil
        }
    }
    
    //Когда я получаю значение Data из AppStorage, я конвертирую его обратно в User struct, чтобы я мог использовать и отображать значения на экране.
    static func decode(_ userData: Data) -> UserAS? {
        let decoder = JSONDecoder()
        if let user = try? decoder.decode(UserAS.self, from: userData) {
            return user
        } else {
            return nil
        }
    }
}


struct Storing_a_Struct_Previews: PreviewProvider {
    static var previews: some View {
        Storing_a_Struct()
    }
}
