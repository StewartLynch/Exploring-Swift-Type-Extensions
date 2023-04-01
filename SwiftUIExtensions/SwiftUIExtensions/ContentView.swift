//
// Created for SwiftUIExtensions
// by  Stewart Lynch on 2023-03-30
// Using Swift 5.0
// Running on macOS 13.2
// 
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Or, Twitter, if it still exits: https://twitter.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var age = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Name", text: $name)
                TextField("Age", text: $age)
                    .keyboardType(.numberPad)
                Text("Enter name and age")
//                    .customStyle(font: .body, color: .primary)
//                    .modifier(CustomStyle(font: .body, color: .primary))
                    .customStyle2(font: .body, color: .primary)
//                    .font(.body)
//                    .foregroundColor(.primary)
//                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Minimum age of 19 required")
//                    .customStyle(font: .callout, color: .red)
//                    .modifier(CustomStyle(font: .callout, color: .red))
                    .customStyle2(font: .callout, color: .red)
//                    .font(.callout)
//                    .foregroundColor(.red)
//                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
            }
            .textFieldStyle(.roundedBorder)
            .padding()
            .navigationBarTitle("View Extensions")
        }
        .hideKeyboard()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// 1. Write an extension for View containing a function that will return a new view that contains a tap gesture that will dismiss the keyboard when tapped and apply this to the NavigationStack view.
extension View {
    func hideKeyboard() -> some View {
        self.onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}


// 2. Write an extension for View containing a function that will return a new view that has will apply the current three modifiers on the text views, but allow for for font and color to be arguments then apply the function to each text field instead of the current modifiers.
extension View {
    func customStyle(font: Font, color: Color) -> some View {
        self
            .font(font)
            .foregroundColor(color)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

// 3. Rewrite the function view extension as a View Modifier and apply to two text fields instead of the function

struct CustomStyle: ViewModifier {
    let font: Font
    let color: Color
    func body(content: Content) -> some View {
        content
            .font(font)
            .foregroundColor(color)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

// 4. Create a ViewExtension to the ViewModifier above
extension View {
    func customStyle2(font: Font, color: Color) -> some View {
        self.modifier(CustomStyle(font: font, color: color))
    }
    
}
