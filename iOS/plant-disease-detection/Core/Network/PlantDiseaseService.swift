import Foundation

class PlantDiseaseService {
    private let networkManager = NetworkManager.shared
    
    func classifyDisease(imageData: String, completion: @escaping (Result<PlantDiseaseResponse, ErrorMessage>) -> Void) {
        let endpoint = APIEndpoints.classifyDisease(base64: imageData)
        
        let body = ["image": imageData]
        
        networkManager.postRequest(endpoint: endpoint, body: body) { (result: Result<PlantDiseaseResponse, ErrorMessage>) in
            switch result {
            case .success(let response):
                completion(.success(response))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
