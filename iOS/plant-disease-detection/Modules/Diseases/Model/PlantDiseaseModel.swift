//
//  PlantDiseaseEntity.swift
//  plant-disease-detection
//
//  Created by Umut Ulaş Demir on 11.06.2024.
//

import UIKit

struct PlantDiseaseEntity {
    let id: UUID
    let name: String
    let description: String
    let treatment: String
    let createdAt: String
    let photo: UIImage
}

struct PlantDiseaseResponse: Decodable{
    let disease: String
}
