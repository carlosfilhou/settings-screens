import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationStack {
            List { // usando outra forma além do Form
                NavigationLink(destination: DisplayView()) {
                    Text("Message")
                }
            }
        }
    }
}

#Preview {
    NotificationView()
}
