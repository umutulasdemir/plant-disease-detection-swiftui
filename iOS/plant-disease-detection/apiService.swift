import Foundation

func postImageToAPI(base64String: String) {
    guard let url = URL(string: "http://192.168.1.2:8080/predict") else {
        print("Invalid URL")
        return
    }

    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")

    let json: [String: String] = ["image": base64String]
    guard let jsonData = try? JSONSerialization.data(withJSONObject: json) else {
        print("Failed to serialize JSON data")
        return
    }

    request.httpBody = jsonData

    URLSession.shared.dataTask(with: request) { data, response, error in
        if let error = error {
            print("Error: \(error)")
            return
        }
        if let httpResponse = response as? HTTPURLResponse {
            print("Status code: \(httpResponse.statusCode)")
        }
        if let data = data {
            do {
                // JSON verisini parse et
                let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                if let disease = json?["disease"] as? String {
                    print(disease)
                    DispatchQueue.main.async {
                        NotificationCenter.default.post(name: .responseReceived, object: disease)
                    }
                } else {
                    print("Error: Failed to parse JSON data")
                }
            } catch {
                print("Error: \(error)")
            }
        }
    }.resume()
}
