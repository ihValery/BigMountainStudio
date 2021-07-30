//
//  Binding With LazyVStack.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 30.07.2021.
//

import SwiftUI

struct Binding_With_LazyVStack: View {
    @State private var people = [
        PersonaTwo(firstName: "Mark", lastName: "Moeykens"),
        PersonaTwo(firstName: "Lem", lastName: "Guerrero"),
        PersonaTwo(firstName: "Chris", lastName: "Evans"),
        PersonaTwo(firstName: "Kor", lastName: "Herro")]
    @State private var selectPersonId: UUID?
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(spacing: 20) {
                    SubtitleText("Связывание с LazyVStack")
                    BannerText("Вы хотите связать массив и индекс для двусторонней привязки")
                    
                    LazyVStack {
                        ForEach(people) { item in
                            HStack {
                                Text("\(item.firstName + " " + item.lastName)")
                                Spacer()
                                Image(systemName: "pencil.circle")
                            }
                            .font(.title2)
                            .padding()
                            .onTapGesture {
                                selectPersonId = item.id
                            }
                        }
                    }
                    Spacer()
                }
                
                if let id = selectPersonId {
                    EditPersonPopupView(person: $people[people.firstIndex(where: { $0.id == id
                    })!], id: $selectPersonId)
                }
            }
            .navigationTitle("LazyVStack")
        }
    }
}

struct EditPersonPopupView: View {
    @Binding var person: PersonaTwo
    //Привязка к id используется только для управления закрытием этого представления редактирования
    @Binding var id: UUID!
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Редактирование")
                .font(.largeTitle)
            
            TextField("Имя", text: $person.firstName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Фамилия", text: $person.lastName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                id = nil
            }, label: {
                Text("Закрыть")
            })
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 20)
                        .fill(Color(.systemBackground))
                        .shadow(radius: 8))
        .padding(24)
    }
}

struct Binding_With_LazyVStack_Previews: PreviewProvider {
    static var previews: some View {
        Binding_With_LazyVStack()
    }
}
