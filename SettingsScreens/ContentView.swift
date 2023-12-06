import SwiftUI

struct ContentView: View {
    var body: some View {
        Form { // agrupador de elemento visual
            Section {
                HStack { // agrupador de elemento visual
                    Image(systemName: "airplane")
                    Text("Modo Avião")
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
                        Image(systemName: "speaker.3.fill")
                        Text("Som e Tato")
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
