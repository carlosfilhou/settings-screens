import SwiftUI

struct ContentView: View {
    
    @State var toggleButton: Bool = true // o usuário pode alterar o estado dessa variável
    @State var sliderButton: Double = 50.0 // o usuário pode alterar o estado dessa variável
    
    let brightnessTittle = "BRIGHTNESS"
    let footerText = "When in Low Power Mode, auto-lock us restricted to 30 seconds."
    
    var body: some View {
        NavigationView {
            Form { // agrupador de elemento visual
                Section {
                    HStack { // agrupador de elemento visual
                        Image(systemName: "airplane")
                        Text("Airplane Mode")
                        Spacer()
                        Toggle("",isOn:$toggleButton) // fazendo o binding (source of truth)
                    }
                    HStack { // agrupador de elemento visual
                        Image(systemName: "wifi")
                        Text("Wi-Fi")
                        Spacer()
                        Text("home")
                            .font(.callout) // modificadores
                            .foregroundColor(.gray) // modificadores
                    }
                }
                Section {
                    HStack { // agrupador de elemento visual
                        Image(systemName: "folder.fill.badge.plus")
                        Text("Notifications")
                    }
                    HStack { // agrupador de elemento visual
                        Image(systemName:"speaker.3.fill")
                        Text("Sounds & Haptics")
                    }
                    NavigationLink(destination: DisplayView()) {
                        HStack {
                            Image(systemName: "sun.max.fill")
                            Text("Display & Brightness")
                        }
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    ContentView()
}
