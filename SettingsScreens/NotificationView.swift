import SwiftUI

struct NotificationView: View {
    
    @State var toggleButton: Bool = true // o usuário pode alterar o estado dessa variável
    
    var body: some View {
        Form { // usando outra forma além do Form
            Section {
                HStack {
                    Text("Messages")
                    Toggle("",isOn:$toggleButton)
                }
            }
        }
        .navigationTitle("Notifications")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NotificationView()
}
