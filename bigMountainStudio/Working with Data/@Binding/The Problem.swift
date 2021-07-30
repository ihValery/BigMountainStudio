//
//  The Problem.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 30.07.2021.
//

import SwiftUI

struct The_Problem: View {
    @State private var persona = Persona(firstName: "Valery", lastName: "ih")
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                SubtitleText("До")
                BannerText("У вас может быть часть представления, использующая значение переменной State, которую вы хотите передать в Subview.")
                
                SubtitleText("Полное имя:")
                TitleText("\(persona.firstName) \(persona.lastName)")
                
                NavigationLink(
                    destination: EditNameView(persona: $persona),
                    label: {
                        Text("Гоу редактировать")
                            .font(.title2)
                            .foregroundColor(.orange)
                    })
                
                Spacer()
            }
            .navigationTitle("Binding")
        }
    }
}

struct EditNameView: View {
    @Binding var persona: Persona
    
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

struct The_Problem_Previews: PreviewProvider {
    //Вы можете создавать переменные состояния в предварительном просмотре,
    //но они должны быть статичными, так как свойство previews статично
    @State static var persona = Persona(firstName: "Valery2", lastName: "ih2")
    
    static var previews: some View {
        The_Problem()
        
        EditNameView(persona: $persona)
            .previewLayout(.sizeThatFits)
        
        //Вы также можете использовать Binding.constant для передачи макетных данных
        EditNameView(persona: Binding.constant(Persona(firstName: "123", lastName: "test")))
            .previewLayout(.sizeThatFits)
    }
}
