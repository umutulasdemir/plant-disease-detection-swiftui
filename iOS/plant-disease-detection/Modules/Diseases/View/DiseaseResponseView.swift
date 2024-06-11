import SwiftUI

struct ResponseView: View {
    var response: String
    var description: String
    var photo: UIImage
    var onDismiss: () -> Void
    var onSave: () -> Void

    var body: some View {
        VStack(spacing: 10) {
            Text(response)
                .font(.custom("Cochin", size: 30))
                .padding()
                .background(Color.black.opacity(0.001))
                .cornerRadius(10)
                .shadow(radius: 20)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .center)
            Text(description)
                .font(.subheadline)
                .padding()
                .background(Color.white.opacity(0.5))
                .cornerRadius(10)
                .shadow(radius: 10)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
            
            Image(uiImage: photo)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .cornerRadius(10)
                .shadow(radius: 10)

            HStack(spacing: 20) {
                Button("Save the Disease") {
                    onSave()
                }
                .padding()
                .background(Color.black.opacity(0.9))
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)

                Button("Dismiss") {
                    onDismiss()
                }
                .padding()
                .background(Color.gray.opacity(0.9))
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
            }
        }
        .padding()
    }
}
