import SwiftUI

struct DisplayView: View {
    
    @State var sliderButton: Double = 50.0 // o usuário pode alterar o estado dessa variável
    
    let brightnessTittle = "BRIGHTNESS"
    let footerText = "When in Low Power Mode, auto-lock us restricted to 30 seconds."
    
    var body: some View {
        Form {
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
        .navigationTitle("Display & Brightness")
        .navigationBarTitleDisplayMode(.inline)
    }
}


#Preview {
    DisplayView()
}
