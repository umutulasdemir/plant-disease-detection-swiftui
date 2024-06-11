import SwiftUI

struct FrameView: View {
    var image: CGImage?

    var body: some View {
        if let image = image {
            Image(decorative: image, scale: 1.0, orientation: .up)
                .resizable()
                .scaledToFit()
        } else {
            Color.black
        }
    }
}
