//
//  What can be stored in AppStorage?.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 31.07.2021.
//

import SwiftUI

struct What_can_be_stored_in_AppStorage_: View {
    @AppStorage("myBool") var myBool = true
    @AppStorage("myInt") var myInt = 21
    @AppStorage("myDouble") var myDouble = 1.99
    @AppStorage("myString") var myString = "ABCabc"
    @AppStorage("myUrl") var myUrl = URL(string: "https://www.bigmountainstudio.com")!
    @AppStorage("myData") var myData = Data("Hello 👋".utf8)
//    @AppStorage("myDate") var myDate = Date() // error
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("AppStorage")
            SubtitleText("Что можно хранить?")
            BannerText("В настоящее время вы можете хранить: Bool, Int, Double, String, URL, Data.")
            Spacer()
            
            VStack {
                Text("Stored in AppStorage").bold()
                Text("\(myBool.description)")
                Text("\(myInt)")
                Text("\(myDouble)")
                Text("\(myString)")
                Link("bigmountainstudio", destination: myUrl).font(.title2)
                Text("\(String(decoding: myData, as: UTF8.self))")
            }
        }
        .font(.title)
    }
}

struct What_can_be_stored_in_AppStorage__Previews: PreviewProvider {
    static var previews: some View {
        What_can_be_stored_in_AppStorage_()
    }
}
