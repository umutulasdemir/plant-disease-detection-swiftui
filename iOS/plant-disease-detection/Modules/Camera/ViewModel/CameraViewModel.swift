import SwiftUI
import Combine

protocol CameraViewModelProtocol: ObservableObject {
    var frame: CGImage? { get set }
    var responseText: String? { get set }
    func captureFrameAndClassify()
}

class CameraViewModel: CameraViewModelProtocol {
    @Published var frame: CGImage?
    @Published var responseText: String?
    @Published var diseaseEntity: PlantDiseaseEntity?
    private var frameHandler = FrameHandler()

    init() {
        bindFrameUpdates()
    }

    private func bindFrameUpdates() {
        frameHandler.$frame
            .assign(to: &$frame)
    }

    func captureFrameAndClassify() {
        frameHandler.captureCurrentFrameAsBase64 { [weak self] base64String in
            guard let self = self else { return }
            if let base64String = base64String {
                self.classifyImage(base64String: base64String)
            } else {
                print("Error: Unable to capture frame as Base64.")
            }
        }
    }

    private func classifyImage(base64String: String) {
        PlantDiseaseService().classifyDisease(imageData: base64String) { result in
            switch result {
            case .success(let response):
                DispatchQueue.main.async {
                    self.createDiseaseEntity(diseaseName: response.disease)
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    print("Error: \(error.rawValue)")
                }
            }
        }
    }

    private func createDiseaseEntity(diseaseName: String) {
        guard let frame = self.frame else { return }
        let uiImage = UIImage(cgImage: frame)
        
        let formattedDiseaseName = diseaseName
            .replacingOccurrences(of: "_", with: " ")
            .replacingOccurrences(of: "  ", with: " ")
            .replacingOccurrences(of: "   ", with: " ")
        
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let dateString = dateFormatter.string(from: currentDate)
        
        if let descriptionAndTreatment = diseaseDescriptions[diseaseName] {
            let diseaseEntity = PlantDiseaseEntity(
                id: UUID(),
                name: formattedDiseaseName,
                description: descriptionAndTreatment.description,
                treatment: descriptionAndTreatment.treatment,
                createdAt: dateString,
                photo: uiImage
            )
            self.diseaseEntity = diseaseEntity
            self.responseText = formattedDiseaseName
        }
    }

    func saveDisease() {
        // Save disease functionality
        if let disease = diseaseEntity {
            print("Disease saved: \(disease.name)")
            // Implement saving logic here
        }
    }
}
