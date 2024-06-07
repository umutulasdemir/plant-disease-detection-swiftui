import SwiftUI

struct ResponseView: View {
    let response: String
    let closeButtonAction: () -> Void

    var body: some View {
        VStack {
            Text(response.replacingOccurrences(of: "_", with: " ", options: .literal, range: nil))
                .multilineTextAlignment(.center)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .shadow(radius: 5)
                .overlay(
                    Button(action: {
                        closeButtonAction()
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title)
                            .foregroundColor(.red)
                            .padding(.leading, 5)
                    }
                    .padding(.top, -24)
                    .padding(.leading, -24)
                    , alignment: .topLeading
                )
        }
    }
}
