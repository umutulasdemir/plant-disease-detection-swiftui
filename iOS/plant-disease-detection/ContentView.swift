import SwiftUI

extension Notification.Name {
    static let responseReceived = Notification.Name("responseReceived")
}

struct ContentView: View {
    @StateObject private var model = FrameHandler()
    @State private var isDetecting = false
    @State private var responseText: String? = nil

    var body: some View {
        ZStack {
            FrameView(image: model.frame)
                .ignoresSafeArea()
            VStack {
                Spacer()
                HStack {
                    Spacer()

                    Button(action: {
                        model.captureCurrentFrameAsBase64 { base64String in
                            if let base64String = base64String {
                                postImageToAPI(base64String: base64String)
                            } else {
                                print("Error: Unable to capture frame as Base64.")
                            }
                        }
                    }) {
                        Text("Detect")
                            .multilineTextAlignment(.center)
                            .padding(.all, 30)
                    }
                    .background(Color.white.opacity(0.7))
                    .clipShape(Circle())
                    .shadow(radius: 10)

                    Spacer()
                }
            }

            if let responseText = responseText {
                VStack {
                    Spacer()
                    ResponseView(response: responseText) {
                        self.responseText = nil
                    }
                    Spacer()
                }
            }
        }
        .onReceive(NotificationCenter.default.publisher(for: .responseReceived)) { notification in
            if let response = notification.object as? String {
                self.responseText = response
            }
        }
    }
}
