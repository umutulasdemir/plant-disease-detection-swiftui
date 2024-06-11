import SwiftUI

struct CameraView: View {
    @StateObject private var viewModel: CameraViewModel

    init(viewModel: CameraViewModel = CameraViewModel()) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        ZStack {
            FrameView(image: viewModel.frame)
                .ignoresSafeArea()
            VStack {
                Spacer()
                HStack {
                    Spacer()

                    Button(action: viewModel.captureFrameAndClassify) {
                        Text("Detect")
                            .multilineTextAlignment(.center)
                            .padding(30)
                    }
                    .background(Color.white.opacity(0.7))
                    .clipShape(Circle())
                    .shadow(radius: 10)

                    Spacer()
                }
            }

            if let diseaseEntity = viewModel.diseaseEntity {
                VStack {
                    Spacer()
                    ResponseView(
                        response: diseaseEntity.name,
                        description: diseaseEntity.description,
                        photo: diseaseEntity.photo,
                        onDismiss: { viewModel.diseaseEntity = nil },
                        onSave: { viewModel.saveDisease() }
                    )
                    .padding(.bottom, 100)
                    .padding(.horizontal, 20)
                }
            }
        }
    }
}
