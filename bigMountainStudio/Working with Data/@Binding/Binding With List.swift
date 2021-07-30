//
//  Binding With List.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 30.07.2021.
//

import SwiftUI

struct PersonaTwo: Identifiable {
    var id = UUID()
    var firstName = ""
    var lastName = ""
}

struct Binding_With_List: View {
    @State private var people = [
        PersonaTwo(firstName: "Mark", lastName: "Moeykens"),
        PersonaTwo(firstName: "Lem", lastName: "Guerrero"),
        PersonaTwo(firstName: "Chris", lastName: "Evans")]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                TitleText("элементов массива")
                SubtitleText("Связывание со списком")
                BannerText("Вы хотите связать массив и индекс для двусторонней привязки.")
                
                List(people) { item in
                    NavigationLink(
                        destination: EditPersonaView(persona: $people[people.firstIndex(where: { $0.id == item.id
                        })!]),
                        label: {
                            Text("\(item.firstName + " " + item.lastName)")
                        })
                }

                Spacer()
            }
            .navigationTitle("Редактирование")
        }
    }
}
    
struct EditPersonaView: View {
    @Binding var persona: PersonaTwo
    
    var body: some View {
        VStack(spacing: 20) {
            SubtitleText("Отредактируй и вернись")
            TextField("first name", text: $persona.firstName)
            TextField("last name", text: $persona.lastName)
        }
        .font(.title2)
        .foregroundColor(.orange)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal)
        .navigationTitle("Редактирование имени")
    }
}
    
struct Binding_With_List_Previews: PreviewProvider {
    static var previews: some View {
        Binding_With_List()
    }
}
