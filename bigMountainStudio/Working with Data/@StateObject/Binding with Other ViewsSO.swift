//
//  Binding with Other ViewsSO.swift
//  bigMountainStudio
//
//  Created by Валерий Игнатьев on 30.07.2021.
//

import SwiftUI

class BindingToStateExamplesTwo: ObservableObject {
    @Published var color = Color.blue
    @Published var date = Date()
    @Published var slider = 0.75
    @Published var stepper = 25
    @Published var text = "This is a one-way bind"
    @Published var textField = "This is a two-way bind"
    @Published var textEditor = "TextEditor data"
    @Published var toggle = true
}

struct Binding_with_Other_ViewsSO: View {
    @StateObject private var examples = BindingToStateExamplesTwo()
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("StateObject")
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

struct Binding_with_Other_ViewsSO_Previews: PreviewProvider {
    static var previews: some View {
        Binding_with_Other_ViewsSO()
    }
}
