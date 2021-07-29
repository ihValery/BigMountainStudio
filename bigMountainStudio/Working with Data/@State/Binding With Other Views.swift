//
//  Binding With Other Views.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 30.07.2021.
//

import SwiftUI

struct BindingToStateExamples {
    var color = Color.blue
    var date = Date()
    var slider = 0.75
    var stepper = 25
    var text = "This is a one-way bind"
    var textField = "This is a two-way bind"
    var textEditor = "TextEditor data"
    var toggle = true
}

struct Binding_With_Other_Views: View {
    @State private var examples = BindingToStateExamples()
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("State - состояние")
            SubtitleText("Связывание с другими взглядами")
            BannerText("Вот несколько примеров связывания с другими представлениями с помощью свойства @State.")
            
            Form {
                ColorPicker("Color Picker", selection: $examples.color)
                DatePicker(selection: $examples.date, label: { Text("Date") })
                Slider(value: $examples.slider)
                Stepper(value: $examples.stepper, in: 0...100) { Text("Value: \(examples.stepper)") }
                Text(examples.text)
                TextField("Placeholder", text: $examples.textField)                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextEditor(text: $examples.textEditor).border(Color.blue)
                Toggle("Toggle", isOn: $examples.toggle)
            }
        }
        .font(.title)
    }
}

struct Binding_With_Other_Views_Previews: PreviewProvider {
    static var previews: some View {
        Binding_With_Other_Views()
    }
}
