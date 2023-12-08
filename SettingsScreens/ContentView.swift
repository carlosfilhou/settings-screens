import SwiftUI

struct ContentView: View {
    
    @State var toggleButton: Bool = true // o usuário pode alterar o estado dessa variável
    @State var sliderButton: Double = 50.0 // o usuário pode alterar o estado dessa variável
    
    let brightnessTittle = "BRIGHTNESS"
    let footerText = "When in Low Power Mode, auto-lock us restricted to 30 seconds."
    
    var body: some View {
        Form { // agrupador de elemento visual
            Section {
                HStack { // agrupador de elemento visual
                    Image(systemName: "airplane")
                    Text("Modo Avião")
                    Spacer()
                    Toggle("",isOn:$toggleButton) // fazendo o binding (source of truth)
                }
                HStack { // agrupador de elemento visual
                    Image(systemName: "wifi")
                    Text("Wi-Fi")
                    Spacer()
                    Text("casa")
                        .font(.callout) // modificadores
                        .foregroundColor(.gray) // modificadores
                }
            }
            Section {
                HStack { // agrupador de elemento visual
                    Image(systemName: "folder.fill.badge.plus")
                    Text("Notificações")
                }
                HStack { // agrupador de elemento visual
                    Image(systemName:"speaker.3.fill")
                    Text("Som e Tato")
                }
            }
            Section(header: Text(brightnessTittle), footer: Text(footerText)) { // título no topo
                HStack {
                    Image(systemName: "sun.max.fill")
                        .foregroundColor(.gray)
                    Slider(value: $sliderButton, in: 0...100)
                    Image(systemName: "sun.max.fill")
                        .resizable() // modificador que possibilita mudar o tamanho
                        .frame(width: 25, height: 25) // modificando o tamanho
                        .foregroundColor(.gray)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
