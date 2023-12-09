import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationView {
            Form { // usando outra forma além do Form
                Section(header: Text("Notifications")) {
                    HStack {
                        NavigationLink(destination: DisplayView()) {
                            Text("Message")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    NotificationView()
}
