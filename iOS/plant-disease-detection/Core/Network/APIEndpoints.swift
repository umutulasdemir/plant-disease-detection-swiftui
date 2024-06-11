//
//  APIEndpoints.swift
//  plant-disease-detection
//
//  Created by Umut Ulaş Demir on 11.06.2024.
//

import Foundation

struct APIEndpoints {
    static let base = "http://192.168.1.3:8080"
    
    static func classifyDisease(base64 image: String) -> String {
        return "\(base)/predict"
    }
}
